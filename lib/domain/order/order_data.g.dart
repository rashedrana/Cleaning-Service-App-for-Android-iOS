// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderData _$_$OrderDataFromJson(Map<String, dynamic> json) {
  return _$OrderData(
    UserData.fromJson(json['userInfo'] as Map<String, dynamic>),
    json['orderedBy'] as String,
    json['ordererName'] as String,
    json['status'] as String,
    json['address'] as String,
    json['paymentMethod'] as String,
    json['xdate'] as String,
    json['seller'] as String,
    json['price'] as String,
    json['orderID'] as String,
  );
}

Map<String, dynamic> _$_$OrderDataToJson(_$OrderData instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo.toJson(),
      'orderedBy': instance.orderedBy,
      'ordererName': instance.ordererName,
      'status': instance.status,
      'address': instance.address,
      'paymentMethod': instance.paymentMethod,
      'xdate': instance.xdate,
      'seller': instance.seller,
      'price': instance.price,
      'orderID': instance.orderID,
    };

_$OrderList _$_$OrderListFromJson(Map<String, dynamic> json) {
  return _$OrderList(
    (json['products'] as List<dynamic>)
        .map((e) => OrderData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$OrderListToJson(_$OrderList instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
