// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrenciesModel {

 String get info; String get description; Map<String, String> get currencies;
/// Create a copy of CurrenciesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrenciesModelCopyWith<CurrenciesModel> get copyWith => _$CurrenciesModelCopyWithImpl<CurrenciesModel>(this as CurrenciesModel, _$identity);

  /// Serializes this CurrenciesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrenciesModel&&(identical(other.info, info) || other.info == info)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.currencies, currencies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,description,const DeepCollectionEquality().hash(currencies));

@override
String toString() {
  return 'CurrenciesModel(info: $info, description: $description, currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class $CurrenciesModelCopyWith<$Res>  {
  factory $CurrenciesModelCopyWith(CurrenciesModel value, $Res Function(CurrenciesModel) _then) = _$CurrenciesModelCopyWithImpl;
@useResult
$Res call({
 String info, String description, Map<String, String> currencies
});




}
/// @nodoc
class _$CurrenciesModelCopyWithImpl<$Res>
    implements $CurrenciesModelCopyWith<$Res> {
  _$CurrenciesModelCopyWithImpl(this._self, this._then);

  final CurrenciesModel _self;
  final $Res Function(CurrenciesModel) _then;

/// Create a copy of CurrenciesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? description = null,Object? currencies = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrenciesModel].
extension CurrenciesModelPatterns on CurrenciesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrenciesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrenciesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrenciesModel value)  $default,){
final _that = this;
switch (_that) {
case _CurrenciesModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrenciesModel value)?  $default,){
final _that = this;
switch (_that) {
case _CurrenciesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String info,  String description,  Map<String, String> currencies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrenciesModel() when $default != null:
return $default(_that.info,_that.description,_that.currencies);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String info,  String description,  Map<String, String> currencies)  $default,) {final _that = this;
switch (_that) {
case _CurrenciesModel():
return $default(_that.info,_that.description,_that.currencies);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String info,  String description,  Map<String, String> currencies)?  $default,) {final _that = this;
switch (_that) {
case _CurrenciesModel() when $default != null:
return $default(_that.info,_that.description,_that.currencies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrenciesModel implements CurrenciesModel {
  const _CurrenciesModel({this.info = '', this.description = '', final  Map<String, String> currencies = const {}}): _currencies = currencies;
  factory _CurrenciesModel.fromJson(Map<String, dynamic> json) => _$CurrenciesModelFromJson(json);

@override@JsonKey() final  String info;
@override@JsonKey() final  String description;
 final  Map<String, String> _currencies;
@override@JsonKey() Map<String, String> get currencies {
  if (_currencies is EqualUnmodifiableMapView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_currencies);
}


/// Create a copy of CurrenciesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrenciesModelCopyWith<_CurrenciesModel> get copyWith => __$CurrenciesModelCopyWithImpl<_CurrenciesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrenciesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrenciesModel&&(identical(other.info, info) || other.info == info)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._currencies, _currencies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,description,const DeepCollectionEquality().hash(_currencies));

@override
String toString() {
  return 'CurrenciesModel(info: $info, description: $description, currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class _$CurrenciesModelCopyWith<$Res> implements $CurrenciesModelCopyWith<$Res> {
  factory _$CurrenciesModelCopyWith(_CurrenciesModel value, $Res Function(_CurrenciesModel) _then) = __$CurrenciesModelCopyWithImpl;
@override @useResult
$Res call({
 String info, String description, Map<String, String> currencies
});




}
/// @nodoc
class __$CurrenciesModelCopyWithImpl<$Res>
    implements _$CurrenciesModelCopyWith<$Res> {
  __$CurrenciesModelCopyWithImpl(this._self, this._then);

  final _CurrenciesModel _self;
  final $Res Function(_CurrenciesModel) _then;

/// Create a copy of CurrenciesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? description = null,Object? currencies = null,}) {
  return _then(_CurrenciesModel(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
