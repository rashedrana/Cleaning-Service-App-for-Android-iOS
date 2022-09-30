part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.postOrderData(OrderData orderData) = PostOrderData;
  const factory ProductEvent.acceptOrderData(
      OrderData orderData, String status) = AcceptOrderData;

  const factory ProductEvent.sellerOrderList(String phoneNumber) =
      GetOrderDataList;
  const factory ProductEvent.customerOrderList() = GetCustomerOrderDataList;
}
