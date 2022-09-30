// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderProfile _$OrderProfileFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'data':
      return OrderData.fromJson(json);
    case 'list':
      return OrderList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$OrderProfileTearOff {
  const _$OrderProfileTearOff();

  OrderData data(
      UserData userInfo,
      String orderedBy,
      String ordererName,
      String status,
      String address,
      String paymentMethod,
      String xdate,
      String seller,
      String price,
      String orderID) {
    return OrderData(
      userInfo,
      orderedBy,
      ordererName,
      status,
      address,
      paymentMethod,
      xdate,
      seller,
      price,
      orderID,
    );
  }

  OrderList list(List<OrderData> products) {
    return OrderList(
      products,
    );
  }

  OrderProfile fromJson(Map<String, Object> json) {
    return OrderProfile.fromJson(json);
  }
}

/// @nodoc
const $OrderProfile = _$OrderProfileTearOff();

/// @nodoc
mixin _$OrderProfile {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserData userInfo,
            String orderedBy,
            String ordererName,
            String status,
            String address,
            String paymentMethod,
            String xdate,
            String seller,
            String price,
            String orderID)
        data,
    required TResult Function(List<OrderData> products) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserData userInfo,
            String orderedBy,
            String ordererName,
            String status,
            String address,
            String paymentMethod,
            String xdate,
            String seller,
            String price,
            String orderID)?
        data,
    TResult Function(List<OrderData> products)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderData value) data,
    required TResult Function(OrderList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderData value)? data,
    TResult Function(OrderList value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProfileCopyWith<$Res> {
  factory $OrderProfileCopyWith(
          OrderProfile value, $Res Function(OrderProfile) then) =
      _$OrderProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderProfileCopyWithImpl<$Res> implements $OrderProfileCopyWith<$Res> {
  _$OrderProfileCopyWithImpl(this._value, this._then);

  final OrderProfile _value;
  // ignore: unused_field
  final $Res Function(OrderProfile) _then;
}

/// @nodoc
abstract class $OrderDataCopyWith<$Res> {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) then) =
      _$OrderDataCopyWithImpl<$Res>;
  $Res call(
      {UserData userInfo,
      String orderedBy,
      String ordererName,
      String status,
      String address,
      String paymentMethod,
      String xdate,
      String seller,
      String price,
      String orderID});
}

/// @nodoc
class _$OrderDataCopyWithImpl<$Res> extends _$OrderProfileCopyWithImpl<$Res>
    implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(OrderData _value, $Res Function(OrderData) _then)
      : super(_value, (v) => _then(v as OrderData));

  @override
  OrderData get _value => super._value as OrderData;

  @override
  $Res call({
    Object? userInfo = freezed,
    Object? orderedBy = freezed,
    Object? ordererName = freezed,
    Object? status = freezed,
    Object? address = freezed,
    Object? paymentMethod = freezed,
    Object? xdate = freezed,
    Object? seller = freezed,
    Object? price = freezed,
    Object? orderID = freezed,
  }) {
    return _then(OrderData(
      userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserData,
      orderedBy == freezed
          ? _value.orderedBy
          : orderedBy // ignore: cast_nullable_to_non_nullable
              as String,
      ordererName == freezed
          ? _value.ordererName
          : ordererName // ignore: cast_nullable_to_non_nullable
              as String,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      xdate == freezed
          ? _value.xdate
          : xdate // ignore: cast_nullable_to_non_nullable
              as String,
      seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      orderID == freezed
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderData implements OrderData {
  const _$OrderData(
      this.userInfo,
      this.orderedBy,
      this.ordererName,
      this.status,
      this.address,
      this.paymentMethod,
      this.xdate,
      this.seller,
      this.price,
      this.orderID);

  factory _$OrderData.fromJson(Map<String, dynamic> json) =>
      _$_$OrderDataFromJson(json);

  @override
  final UserData userInfo;
  @override
  final String orderedBy;
  @override
  final String ordererName;
  @override
  final String status;
  @override
  final String address;
  @override
  final String paymentMethod;
  @override
  final String xdate;
  @override
  final String seller;
  @override
  final String price;
  @override
  final String orderID;

  @override
  String toString() {
    return 'OrderProfile.data(userInfo: $userInfo, orderedBy: $orderedBy, ordererName: $ordererName, status: $status, address: $address, paymentMethod: $paymentMethod, xdate: $xdate, seller: $seller, price: $price, orderID: $orderID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderData &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)) &&
            (identical(other.orderedBy, orderedBy) ||
                const DeepCollectionEquality()
                    .equals(other.orderedBy, orderedBy)) &&
            (identical(other.ordererName, ordererName) ||
                const DeepCollectionEquality()
                    .equals(other.ordererName, ordererName)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.xdate, xdate) ||
                const DeepCollectionEquality().equals(other.xdate, xdate)) &&
            (identical(other.seller, seller) ||
                const DeepCollectionEquality().equals(other.seller, seller)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.orderID, orderID) ||
                const DeepCollectionEquality().equals(other.orderID, orderID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userInfo) ^
      const DeepCollectionEquality().hash(orderedBy) ^
      const DeepCollectionEquality().hash(ordererName) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(xdate) ^
      const DeepCollectionEquality().hash(seller) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(orderID);

  @JsonKey(ignore: true)
  @override
  $OrderDataCopyWith<OrderData> get copyWith =>
      _$OrderDataCopyWithImpl<OrderData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserData userInfo,
            String orderedBy,
            String ordererName,
            String status,
            String address,
            String paymentMethod,
            String xdate,
            String seller,
            String price,
            String orderID)
        data,
    required TResult Function(List<OrderData> products) list,
  }) {
    return data(userInfo, orderedBy, ordererName, status, address,
        paymentMethod, xdate, seller, price, orderID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserData userInfo,
            String orderedBy,
            String ordererName,
            String status,
            String address,
            String paymentMethod,
            String xdate,
            String seller,
            String price,
            String orderID)?
        data,
    TResult Function(List<OrderData> products)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(userInfo, orderedBy, ordererName, status, address,
          paymentMethod, xdate, seller, price, orderID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderData value) data,
    required TResult Function(OrderList value) list,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderData value)? data,
    TResult Function(OrderList value)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$OrderDataToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class OrderData implements OrderProfile {
  const factory OrderData(
      UserData userInfo,
      String orderedBy,
      String ordererName,
      String status,
      String address,
      String paymentMethod,
      String xdate,
      String seller,
      String price,
      String orderID) = _$OrderData;

  factory OrderData.fromJson(Map<String, dynamic> json) = _$OrderData.fromJson;

  UserData get userInfo => throw _privateConstructorUsedError;
  String get orderedBy => throw _privateConstructorUsedError;
  String get ordererName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get xdate => throw _privateConstructorUsedError;
  String get seller => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get orderID => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDataCopyWith<OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListCopyWith<$Res> {
  factory $OrderListCopyWith(OrderList value, $Res Function(OrderList) then) =
      _$OrderListCopyWithImpl<$Res>;
  $Res call({List<OrderData> products});
}

/// @nodoc
class _$OrderListCopyWithImpl<$Res> extends _$OrderProfileCopyWithImpl<$Res>
    implements $OrderListCopyWith<$Res> {
  _$OrderListCopyWithImpl(OrderList _value, $Res Function(OrderList) _then)
      : super(_value, (v) => _then(v as OrderList));

  @override
  OrderList get _value => super._value as OrderList;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(OrderList(
      products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderList implements OrderList {
  const _$OrderList(this.products);

  factory _$OrderList.fromJson(Map<String, dynamic> json) =>
      _$_$OrderListFromJson(json);

  @override
  final List<OrderData> products;

  @override
  String toString() {
    return 'OrderProfile.list(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderList &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  $OrderListCopyWith<OrderList> get copyWith =>
      _$OrderListCopyWithImpl<OrderList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserData userInfo,
            String orderedBy,
            String ordererName,
            String status,
            String address,
            String paymentMethod,
            String xdate,
            String seller,
            String price,
            String orderID)
        data,
    required TResult Function(List<OrderData> products) list,
  }) {
    return list(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserData userInfo,
            String orderedBy,
            String ordererName,
            String status,
            String address,
            String paymentMethod,
            String xdate,
            String seller,
            String price,
            String orderID)?
        data,
    TResult Function(List<OrderData> products)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderData value) data,
    required TResult Function(OrderList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderData value)? data,
    TResult Function(OrderList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$OrderListToJson(this)..['runtimeType'] = 'list';
  }
}

abstract class OrderList implements OrderProfile {
  const factory OrderList(List<OrderData> products) = _$OrderList;

  factory OrderList.fromJson(Map<String, dynamic> json) = _$OrderList.fromJson;

  List<OrderData> get products => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderListCopyWith<OrderList> get copyWith =>
      throw _privateConstructorUsedError;
}
