part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState(
    String error,
    bool isSubmitting,
    bool isSubmitted,
    List<OrderData> orderList,
  ) = _ProductState;
  factory ProductState.initial() => ProductState("", false, false, []);
}
