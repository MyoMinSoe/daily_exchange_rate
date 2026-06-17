// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LatestRateModel {

 String get info; String get description; String get timestamp; Map<String, String> get rates;
/// Create a copy of LatestRateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatestRateModelCopyWith<LatestRateModel> get copyWith => _$LatestRateModelCopyWithImpl<LatestRateModel>(this as LatestRateModel, _$identity);

  /// Serializes this LatestRateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatestRateModel&&(identical(other.info, info) || other.info == info)&&(identical(other.description, description) || other.description == description)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.rates, rates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,description,timestamp,const DeepCollectionEquality().hash(rates));

@override
String toString() {
  return 'LatestRateModel(info: $info, description: $description, timestamp: $timestamp, rates: $rates)';
}


}

/// @nodoc
abstract mixin class $LatestRateModelCopyWith<$Res>  {
  factory $LatestRateModelCopyWith(LatestRateModel value, $Res Function(LatestRateModel) _then) = _$LatestRateModelCopyWithImpl;
@useResult
$Res call({
 String info, String description, String timestamp, Map<String, String> rates
});




}
/// @nodoc
class _$LatestRateModelCopyWithImpl<$Res>
    implements $LatestRateModelCopyWith<$Res> {
  _$LatestRateModelCopyWithImpl(this._self, this._then);

  final LatestRateModel _self;
  final $Res Function(LatestRateModel) _then;

/// Create a copy of LatestRateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? description = null,Object? timestamp = null,Object? rates = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,rates: null == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LatestRateModel].
extension LatestRateModelPatterns on LatestRateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatestRateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatestRateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatestRateModel value)  $default,){
final _that = this;
switch (_that) {
case _LatestRateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatestRateModel value)?  $default,){
final _that = this;
switch (_that) {
case _LatestRateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String info,  String description,  String timestamp,  Map<String, String> rates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatestRateModel() when $default != null:
return $default(_that.info,_that.description,_that.timestamp,_that.rates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String info,  String description,  String timestamp,  Map<String, String> rates)  $default,) {final _that = this;
switch (_that) {
case _LatestRateModel():
return $default(_that.info,_that.description,_that.timestamp,_that.rates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String info,  String description,  String timestamp,  Map<String, String> rates)?  $default,) {final _that = this;
switch (_that) {
case _LatestRateModel() when $default != null:
return $default(_that.info,_that.description,_that.timestamp,_that.rates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LatestRateModel implements LatestRateModel {
  const _LatestRateModel({required this.info, required this.description, required this.timestamp, required final  Map<String, String> rates}): _rates = rates;
  factory _LatestRateModel.fromJson(Map<String, dynamic> json) => _$LatestRateModelFromJson(json);

@override final  String info;
@override final  String description;
@override final  String timestamp;
 final  Map<String, String> _rates;
@override Map<String, String> get rates {
  if (_rates is EqualUnmodifiableMapView) return _rates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_rates);
}


/// Create a copy of LatestRateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatestRateModelCopyWith<_LatestRateModel> get copyWith => __$LatestRateModelCopyWithImpl<_LatestRateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LatestRateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatestRateModel&&(identical(other.info, info) || other.info == info)&&(identical(other.description, description) || other.description == description)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._rates, _rates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,description,timestamp,const DeepCollectionEquality().hash(_rates));

@override
String toString() {
  return 'LatestRateModel(info: $info, description: $description, timestamp: $timestamp, rates: $rates)';
}


}

/// @nodoc
abstract mixin class _$LatestRateModelCopyWith<$Res> implements $LatestRateModelCopyWith<$Res> {
  factory _$LatestRateModelCopyWith(_LatestRateModel value, $Res Function(_LatestRateModel) _then) = __$LatestRateModelCopyWithImpl;
@override @useResult
$Res call({
 String info, String description, String timestamp, Map<String, String> rates
});




}
/// @nodoc
class __$LatestRateModelCopyWithImpl<$Res>
    implements _$LatestRateModelCopyWith<$Res> {
  __$LatestRateModelCopyWithImpl(this._self, this._then);

  final _LatestRateModel _self;
  final $Res Function(_LatestRateModel) _then;

/// Create a copy of LatestRateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? description = null,Object? timestamp = null,Object? rates = null,}) {
  return _then(_LatestRateModel(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,rates: null == rates ? _self._rates : rates // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
