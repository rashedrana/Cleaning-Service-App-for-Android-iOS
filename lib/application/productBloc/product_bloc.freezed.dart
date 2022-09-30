// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  PostOrderData postOrderData(OrderData orderData) {
    return PostOrderData(
      orderData,
    );
  }

  AcceptOrderData acceptOrderData(OrderData orderData, String status) {
    return AcceptOrderData(
      orderData,
      status,
    );
  }

  GetOrderDataList sellerOrderList(String phoneNumber) {
    return GetOrderDataList(
      phoneNumber,
    );
  }

  GetCustomerOrderDataList customerOrderList() {
    return const GetCustomerOrderDataList();
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderData orderData) postOrderData,
    required TResult Function(OrderData orderData, String status)
        acceptOrderData,
    required TResult Function(String phoneNumber) sellerOrderList,
    required TResult Function() customerOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderData orderData)? postOrderData,
    TResult Function(OrderData orderData, String status)? acceptOrderData,
    TResult Function(String phoneNumber)? sellerOrderList,
    TResult Function()? customerOrderList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostOrderData value) postOrderData,
    required TResult Function(AcceptOrderData value) acceptOrderData,
    required TResult Function(GetOrderDataList value) sellerOrderList,
    required TResult Function(GetCustomerOrderDataList value) customerOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostOrderData value)? postOrderData,
    TResult Function(AcceptOrderData value)? acceptOrderData,
    TResult Function(GetOrderDataList value)? sellerOrderList,
    TResult Function(GetCustomerOrderDataList value)? customerOrderList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class $PostOrderDataCopyWith<$Res> {
  factory $PostOrderDataCopyWith(
          PostOrderData value, $Res Function(PostOrderData) then) =
      _$PostOrderDataCopyWithImpl<$Res>;
  $Res call({OrderData orderData});
}

/// @nodoc
class _$PostOrderDataCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $PostOrderDataCopyWith<$Res> {
  _$PostOrderDataCopyWithImpl(
      PostOrderData _value, $Res Function(PostOrderData) _then)
      : super(_value, (v) => _then(v as PostOrderData));

  @override
  PostOrderData get _value => super._value as PostOrderData;

  @override
  $Res call({
    Object? orderData = freezed,
  }) {
    return _then(PostOrderData(
      orderData == freezed
          ? _value.orderData
          : orderData // ignore: cast_nullable_to_non_nullable
              as OrderData,
    ));
  }
}

/// @nodoc

class _$PostOrderData implements PostOrderData {
  const _$PostOrderData(this.orderData);

  @override
  final OrderData orderData;

  @override
  String toString() {
    return 'ProductEvent.postOrderData(orderData: $orderData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostOrderData &&
            (identical(other.orderData, orderData) ||
                const DeepCollectionEquality()
                    .equals(other.orderData, orderData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderData);

  @JsonKey(ignore: true)
  @override
  $PostOrderDataCopyWith<PostOrderData> get copyWith =>
      _$PostOrderDataCopyWithImpl<PostOrderData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderData orderData) postOrderData,
    required TResult Function(OrderData orderData, String status)
        acceptOrderData,
    required TResult Function(String phoneNumber) sellerOrderList,
    required TResult Function() customerOrderList,
  }) {
    return postOrderData(orderData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderData orderData)? postOrderData,
    TResult Function(OrderData orderData, String status)? acceptOrderData,
    TResult Function(String phoneNumber)? sellerOrderList,
    TResult Function()? customerOrderList,
    required TResult orElse(),
  }) {
    if (postOrderData != null) {
      return postOrderData(orderData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostOrderData value) postOrderData,
    required TResult Function(AcceptOrderData value) acceptOrderData,
    required TResult Function(GetOrderDataList value) sellerOrderList,
    required TResult Function(GetCustomerOrderDataList value) customerOrderList,
  }) {
    return postOrderData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostOrderData value)? postOrderData,
    TResult Function(AcceptOrderData value)? acceptOrderData,
    TResult Function(GetOrderDataList value)? sellerOrderList,
    TResult Function(GetCustomerOrderDataList value)? customerOrderList,
    required TResult orElse(),
  }) {
    if (postOrderData != null) {
      return postOrderData(this);
    }
    return orElse();
  }
}

abstract class PostOrderData implements ProductEvent {
  const factory PostOrderData(OrderData orderData) = _$PostOrderData;

  OrderData get orderData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostOrderDataCopyWith<PostOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptOrderDataCopyWith<$Res> {
  factory $AcceptOrderDataCopyWith(
          AcceptOrderData value, $Res Function(AcceptOrderData) then) =
      _$AcceptOrderDataCopyWithImpl<$Res>;
  $Res call({OrderData orderData, String status});
}

/// @nodoc
class _$AcceptOrderDataCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $AcceptOrderDataCopyWith<$Res> {
  _$AcceptOrderDataCopyWithImpl(
      AcceptOrderData _value, $Res Function(AcceptOrderData) _then)
      : super(_value, (v) => _then(v as AcceptOrderData));

  @override
  AcceptOrderData get _value => super._value as AcceptOrderData;

  @override
  $Res call({
    Object? orderData = freezed,
    Object? status = freezed,
  }) {
    return _then(AcceptOrderData(
      orderData == freezed
          ? _value.orderData
          : orderData // ignore: cast_nullable_to_non_nullable
              as OrderData,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptOrderData implements AcceptOrderData {
  const _$AcceptOrderData(this.orderData, this.status);

  @override
  final OrderData orderData;
  @override
  final String status;

  @override
  String toString() {
    return 'ProductEvent.acceptOrderData(orderData: $orderData, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcceptOrderData &&
            (identical(other.orderData, orderData) ||
                const DeepCollectionEquality()
                    .equals(other.orderData, orderData)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderData) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $AcceptOrderDataCopyWith<AcceptOrderData> get copyWith =>
      _$AcceptOrderDataCopyWithImpl<AcceptOrderData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderData orderData) postOrderData,
    required TResult Function(OrderData orderData, String status)
        acceptOrderData,
    required TResult Function(String phoneNumber) sellerOrderList,
    required TResult Function() customerOrderList,
  }) {
    return acceptOrderData(orderData, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderData orderData)? postOrderData,
    TResult Function(OrderData orderData, String status)? acceptOrderData,
    TResult Function(String phoneNumber)? sellerOrderList,
    TResult Function()? customerOrderList,
    required TResult orElse(),
  }) {
    if (acceptOrderData != null) {
      return acceptOrderData(orderData, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostOrderData value) postOrderData,
    required TResult Function(AcceptOrderData value) acceptOrderData,
    required TResult Function(GetOrderDataList value) sellerOrderList,
    required TResult Function(GetCustomerOrderDataList value) customerOrderList,
  }) {
    return acceptOrderData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostOrderData value)? postOrderData,
    TResult Function(AcceptOrderData value)? acceptOrderData,
    TResult Function(GetOrderDataList value)? sellerOrderList,
    TResult Function(GetCustomerOrderDataList value)? customerOrderList,
    required TResult orElse(),
  }) {
    if (acceptOrderData != null) {
      return acceptOrderData(this);
    }
    return orElse();
  }
}

abstract class AcceptOrderData implements ProductEvent {
  const factory AcceptOrderData(OrderData orderData, String status) =
      _$AcceptOrderData;

  OrderData get orderData => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptOrderDataCopyWith<AcceptOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderDataListCopyWith<$Res> {
  factory $GetOrderDataListCopyWith(
          GetOrderDataList value, $Res Function(GetOrderDataList) then) =
      _$GetOrderDataListCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$GetOrderDataListCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $GetOrderDataListCopyWith<$Res> {
  _$GetOrderDataListCopyWithImpl(
      GetOrderDataList _value, $Res Function(GetOrderDataList) _then)
      : super(_value, (v) => _then(v as GetOrderDataList));

  @override
  GetOrderDataList get _value => super._value as GetOrderDataList;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(GetOrderDataList(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOrderDataList implements GetOrderDataList {
  const _$GetOrderDataList(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ProductEvent.sellerOrderList(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOrderDataList &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $GetOrderDataListCopyWith<GetOrderDataList> get copyWith =>
      _$GetOrderDataListCopyWithImpl<GetOrderDataList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderData orderData) postOrderData,
    required TResult Function(OrderData orderData, String status)
        acceptOrderData,
    required TResult Function(String phoneNumber) sellerOrderList,
    required TResult Function() customerOrderList,
  }) {
    return sellerOrderList(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderData orderData)? postOrderData,
    TResult Function(OrderData orderData, String status)? acceptOrderData,
    TResult Function(String phoneNumber)? sellerOrderList,
    TResult Function()? customerOrderList,
    required TResult orElse(),
  }) {
    if (sellerOrderList != null) {
      return sellerOrderList(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostOrderData value) postOrderData,
    required TResult Function(AcceptOrderData value) acceptOrderData,
    required TResult Function(GetOrderDataList value) sellerOrderList,
    required TResult Function(GetCustomerOrderDataList value) customerOrderList,
  }) {
    return sellerOrderList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostOrderData value)? postOrderData,
    TResult Function(AcceptOrderData value)? acceptOrderData,
    TResult Function(GetOrderDataList value)? sellerOrderList,
    TResult Function(GetCustomerOrderDataList value)? customerOrderList,
    required TResult orElse(),
  }) {
    if (sellerOrderList != null) {
      return sellerOrderList(this);
    }
    return orElse();
  }
}

abstract class GetOrderDataList implements ProductEvent {
  const factory GetOrderDataList(String phoneNumber) = _$GetOrderDataList;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderDataListCopyWith<GetOrderDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomerOrderDataListCopyWith<$Res> {
  factory $GetCustomerOrderDataListCopyWith(GetCustomerOrderDataList value,
          $Res Function(GetCustomerOrderDataList) then) =
      _$GetCustomerOrderDataListCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCustomerOrderDataListCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $GetCustomerOrderDataListCopyWith<$Res> {
  _$GetCustomerOrderDataListCopyWithImpl(GetCustomerOrderDataList _value,
      $Res Function(GetCustomerOrderDataList) _then)
      : super(_value, (v) => _then(v as GetCustomerOrderDataList));

  @override
  GetCustomerOrderDataList get _value =>
      super._value as GetCustomerOrderDataList;
}

/// @nodoc

class _$GetCustomerOrderDataList implements GetCustomerOrderDataList {
  const _$GetCustomerOrderDataList();

  @override
  String toString() {
    return 'ProductEvent.customerOrderList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCustomerOrderDataList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderData orderData) postOrderData,
    required TResult Function(OrderData orderData, String status)
        acceptOrderData,
    required TResult Function(String phoneNumber) sellerOrderList,
    required TResult Function() customerOrderList,
  }) {
    return customerOrderList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderData orderData)? postOrderData,
    TResult Function(OrderData orderData, String status)? acceptOrderData,
    TResult Function(String phoneNumber)? sellerOrderList,
    TResult Function()? customerOrderList,
    required TResult orElse(),
  }) {
    if (customerOrderList != null) {
      return customerOrderList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostOrderData value) postOrderData,
    required TResult Function(AcceptOrderData value) acceptOrderData,
    required TResult Function(GetOrderDataList value) sellerOrderList,
    required TResult Function(GetCustomerOrderDataList value) customerOrderList,
  }) {
    return customerOrderList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostOrderData value)? postOrderData,
    TResult Function(AcceptOrderData value)? acceptOrderData,
    TResult Function(GetOrderDataList value)? sellerOrderList,
    TResult Function(GetCustomerOrderDataList value)? customerOrderList,
    required TResult orElse(),
  }) {
    if (customerOrderList != null) {
      return customerOrderList(this);
    }
    return orElse();
  }
}

abstract class GetCustomerOrderDataList implements ProductEvent {
  const factory GetCustomerOrderDataList() = _$GetCustomerOrderDataList;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _ProductState call(String error, bool isSubmitting, bool isSubmitted,
      List<OrderData> orderList) {
    return _ProductState(
      error,
      isSubmitting,
      isSubmitted,
      orderList,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  String get error => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  List<OrderData> get orderList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {String error,
      bool isSubmitting,
      bool isSubmitted,
      List<OrderData> orderList});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? isSubmitting = freezed,
    Object? isSubmitted = freezed,
    Object? orderList = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      orderList: orderList == freezed
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderData>,
    ));
  }
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String error,
      bool isSubmitting,
      bool isSubmitted,
      List<OrderData> orderList});
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object? error = freezed,
    Object? isSubmitting = freezed,
    Object? isSubmitted = freezed,
    Object? orderList = freezed,
  }) {
    return _then(_ProductState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      orderList == freezed
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderData>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  _$_ProductState(
      this.error, this.isSubmitting, this.isSubmitted, this.orderList);

  @override
  final String error;
  @override
  final bool isSubmitting;
  @override
  final bool isSubmitted;
  @override
  final List<OrderData> orderList;

  @override
  String toString() {
    return 'ProductState(error: $error, isSubmitting: $isSubmitting, isSubmitted: $isSubmitted, orderList: $orderList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSubmitted, isSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitted, isSubmitted)) &&
            (identical(other.orderList, orderList) ||
                const DeepCollectionEquality()
                    .equals(other.orderList, orderList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSubmitted) ^
      const DeepCollectionEquality().hash(orderList);

  @JsonKey(ignore: true)
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  factory _ProductState(String error, bool isSubmitting, bool isSubmitted,
      List<OrderData> orderList) = _$_ProductState;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSubmitted => throw _privateConstructorUsedError;
  @override
  List<OrderData> get orderList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
