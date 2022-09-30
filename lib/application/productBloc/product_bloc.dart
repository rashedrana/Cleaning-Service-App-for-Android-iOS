import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:mobile_cleaning_service/domain/core/failure.dart';
import 'package:mobile_cleaning_service/domain/i_order_provider.dart';
import 'package:mobile_cleaning_service/domain/order/order_data.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IAuthProvider authProvider;
  final IProductProvider productProvider;
  ProductBloc(this.productProvider, this.authProvider)
      : super(ProductState.initial());

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    yield* event.map(
      postOrderData: (PostOrderData value) async* {
        yield state.copyWith(isSubmitting: true);
        final Either<Failure, Unit> requestOption =
            await productProvider.postOrderData(value.orderData.copyWith(
                orderedBy: authProvider.user.phoneNumber,
                ordererName: authProvider.user.firstname,
                address: authProvider.user.address));

        yield requestOption.fold(
          (l) => state.copyWith(
              isSubmitted: false, error: l.error, isSubmitting: false),
          (r) => state.copyWith(isSubmitted: true, isSubmitting: false),
        );
      },
      sellerOrderList: (GetOrderDataList value) async* {
        final Either<Failure, List<OrderData>> searchOption =
            await productProvider.getOrderList(value.phoneNumber);

        yield searchOption.fold(
          (l) => state.copyWith(error: l.error),
          (r) => state.copyWith(
            orderList: r,
            // isSubmitting: false,
          ),
        );
      },
      acceptOrderData: (AcceptOrderData value) async* {
        final Either<Failure, Unit> resetResponse = await productProvider
            .acceptOrderData(value.orderData, value.status);

        yield resetResponse.fold(
            (l) => state.copyWith(
                  error: l.error,
                ),
            (r) => state.copyWith(isSubmitted: true, isSubmitting: false));
      },
      customerOrderList: (GetCustomerOrderDataList value) async* {
        final Either<Failure, List<OrderData>> searchOption =
            await productProvider
                .getCustomerOrderList(authProvider.user.phoneNumber);

        yield searchOption.fold(
          (l) => state.copyWith(error: l.error),
          (r) => state.copyWith(
            orderList: r,
            // isSubmitting: false,
          ),
        );
      },
    );
  }
}
