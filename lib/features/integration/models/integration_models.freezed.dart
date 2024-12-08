// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'integration_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return _WeatherData.fromJson(json);
}

/// @nodoc
mixin _$WeatherData {
  String get location => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  String get windDirection => throw _privateConstructorUsedError;
  double get pressure => throw _privateConstructorUsedError;
  double get precipitation => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  Map<String, double> get waterConditions => throw _privateConstructorUsedError;
  Map<DateTime, WeatherForecast> get hourlyForecast =>
      throw _privateConstructorUsedError;
  Map<DateTime, WeatherForecast> get dailyForecast =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get alerts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res, WeatherData>;
  @useResult
  $Res call(
      {String location,
      DateTime timestamp,
      double temperature,
      double humidity,
      double windSpeed,
      String windDirection,
      double pressure,
      double precipitation,
      String condition,
      Map<String, double> waterConditions,
      Map<DateTime, WeatherForecast> hourlyForecast,
      Map<DateTime, WeatherForecast> dailyForecast,
      Map<String, dynamic>? alerts});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res, $Val extends WeatherData>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? timestamp = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? pressure = null,
    Object? precipitation = null,
    Object? condition = null,
    Object? waterConditions = null,
    Object? hourlyForecast = null,
    Object? dailyForecast = null,
    Object? alerts = freezed,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as String,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      waterConditions: null == waterConditions
          ? _value.waterConditions
          : waterConditions // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      hourlyForecast: null == hourlyForecast
          ? _value.hourlyForecast
          : hourlyForecast // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, WeatherForecast>,
      dailyForecast: null == dailyForecast
          ? _value.dailyForecast
          : dailyForecast // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, WeatherForecast>,
      alerts: freezed == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDataImplCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$WeatherDataImplCopyWith(
          _$WeatherDataImpl value, $Res Function(_$WeatherDataImpl) then) =
      __$$WeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String location,
      DateTime timestamp,
      double temperature,
      double humidity,
      double windSpeed,
      String windDirection,
      double pressure,
      double precipitation,
      String condition,
      Map<String, double> waterConditions,
      Map<DateTime, WeatherForecast> hourlyForecast,
      Map<DateTime, WeatherForecast> dailyForecast,
      Map<String, dynamic>? alerts});
}

/// @nodoc
class __$$WeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherDataCopyWithImpl<$Res, _$WeatherDataImpl>
    implements _$$WeatherDataImplCopyWith<$Res> {
  __$$WeatherDataImplCopyWithImpl(
      _$WeatherDataImpl _value, $Res Function(_$WeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? timestamp = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? pressure = null,
    Object? precipitation = null,
    Object? condition = null,
    Object? waterConditions = null,
    Object? hourlyForecast = null,
    Object? dailyForecast = null,
    Object? alerts = freezed,
  }) {
    return _then(_$WeatherDataImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as String,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      waterConditions: null == waterConditions
          ? _value._waterConditions
          : waterConditions // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      hourlyForecast: null == hourlyForecast
          ? _value._hourlyForecast
          : hourlyForecast // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, WeatherForecast>,
      dailyForecast: null == dailyForecast
          ? _value._dailyForecast
          : dailyForecast // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, WeatherForecast>,
      alerts: freezed == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDataImpl implements _WeatherData {
  const _$WeatherDataImpl(
      {required this.location,
      required this.timestamp,
      required this.temperature,
      required this.humidity,
      required this.windSpeed,
      required this.windDirection,
      required this.pressure,
      required this.precipitation,
      required this.condition,
      required final Map<String, double> waterConditions,
      required final Map<DateTime, WeatherForecast> hourlyForecast,
      required final Map<DateTime, WeatherForecast> dailyForecast,
      final Map<String, dynamic>? alerts})
      : _waterConditions = waterConditions,
        _hourlyForecast = hourlyForecast,
        _dailyForecast = dailyForecast,
        _alerts = alerts;

  factory _$WeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDataImplFromJson(json);

  @override
  final String location;
  @override
  final DateTime timestamp;
  @override
  final double temperature;
  @override
  final double humidity;
  @override
  final double windSpeed;
  @override
  final String windDirection;
  @override
  final double pressure;
  @override
  final double precipitation;
  @override
  final String condition;
  final Map<String, double> _waterConditions;
  @override
  Map<String, double> get waterConditions {
    if (_waterConditions is EqualUnmodifiableMapView) return _waterConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_waterConditions);
  }

  final Map<DateTime, WeatherForecast> _hourlyForecast;
  @override
  Map<DateTime, WeatherForecast> get hourlyForecast {
    if (_hourlyForecast is EqualUnmodifiableMapView) return _hourlyForecast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hourlyForecast);
  }

  final Map<DateTime, WeatherForecast> _dailyForecast;
  @override
  Map<DateTime, WeatherForecast> get dailyForecast {
    if (_dailyForecast is EqualUnmodifiableMapView) return _dailyForecast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dailyForecast);
  }

  final Map<String, dynamic>? _alerts;
  @override
  Map<String, dynamic>? get alerts {
    final value = _alerts;
    if (value == null) return null;
    if (_alerts is EqualUnmodifiableMapView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'WeatherData(location: $location, timestamp: $timestamp, temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection, pressure: $pressure, precipitation: $precipitation, condition: $condition, waterConditions: $waterConditions, hourlyForecast: $hourlyForecast, dailyForecast: $dailyForecast, alerts: $alerts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.precipitation, precipitation) ||
                other.precipitation == precipitation) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality()
                .equals(other._waterConditions, _waterConditions) &&
            const DeepCollectionEquality()
                .equals(other._hourlyForecast, _hourlyForecast) &&
            const DeepCollectionEquality()
                .equals(other._dailyForecast, _dailyForecast) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      timestamp,
      temperature,
      humidity,
      windSpeed,
      windDirection,
      pressure,
      precipitation,
      condition,
      const DeepCollectionEquality().hash(_waterConditions),
      const DeepCollectionEquality().hash(_hourlyForecast),
      const DeepCollectionEquality().hash(_dailyForecast),
      const DeepCollectionEquality().hash(_alerts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      __$$WeatherDataImplCopyWithImpl<_$WeatherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDataImplToJson(
      this,
    );
  }
}

abstract class _WeatherData implements WeatherData {
  const factory _WeatherData(
      {required final String location,
      required final DateTime timestamp,
      required final double temperature,
      required final double humidity,
      required final double windSpeed,
      required final String windDirection,
      required final double pressure,
      required final double precipitation,
      required final String condition,
      required final Map<String, double> waterConditions,
      required final Map<DateTime, WeatherForecast> hourlyForecast,
      required final Map<DateTime, WeatherForecast> dailyForecast,
      final Map<String, dynamic>? alerts}) = _$WeatherDataImpl;

  factory _WeatherData.fromJson(Map<String, dynamic> json) =
      _$WeatherDataImpl.fromJson;

  @override
  String get location;
  @override
  DateTime get timestamp;
  @override
  double get temperature;
  @override
  double get humidity;
  @override
  double get windSpeed;
  @override
  String get windDirection;
  @override
  double get pressure;
  @override
  double get precipitation;
  @override
  String get condition;
  @override
  Map<String, double> get waterConditions;
  @override
  Map<DateTime, WeatherForecast> get hourlyForecast;
  @override
  Map<DateTime, WeatherForecast> get dailyForecast;
  @override
  Map<String, dynamic>? get alerts;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherForecast _$WeatherForecastFromJson(Map<String, dynamic> json) {
  return _WeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecast {
  DateTime get time => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get precipitation => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastCopyWith<WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCopyWith<$Res> {
  factory $WeatherForecastCopyWith(
          WeatherForecast value, $Res Function(WeatherForecast) then) =
      _$WeatherForecastCopyWithImpl<$Res, WeatherForecast>;
  @useResult
  $Res call(
      {DateTime time,
      double temperature,
      double precipitation,
      double windSpeed,
      String condition,
      Map<String, dynamic>? details});
}

/// @nodoc
class _$WeatherForecastCopyWithImpl<$Res, $Val extends WeatherForecast>
    implements $WeatherForecastCopyWith<$Res> {
  _$WeatherForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? precipitation = null,
    Object? windSpeed = null,
    Object? condition = null,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastImplCopyWith<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  factory _$$WeatherForecastImplCopyWith(_$WeatherForecastImpl value,
          $Res Function(_$WeatherForecastImpl) then) =
      __$$WeatherForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime time,
      double temperature,
      double precipitation,
      double windSpeed,
      String condition,
      Map<String, dynamic>? details});
}

/// @nodoc
class __$$WeatherForecastImplCopyWithImpl<$Res>
    extends _$WeatherForecastCopyWithImpl<$Res, _$WeatherForecastImpl>
    implements _$$WeatherForecastImplCopyWith<$Res> {
  __$$WeatherForecastImplCopyWithImpl(
      _$WeatherForecastImpl _value, $Res Function(_$WeatherForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? precipitation = null,
    Object? windSpeed = null,
    Object? condition = null,
    Object? details = freezed,
  }) {
    return _then(_$WeatherForecastImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastImpl implements _WeatherForecast {
  const _$WeatherForecastImpl(
      {required this.time,
      required this.temperature,
      required this.precipitation,
      required this.windSpeed,
      required this.condition,
      final Map<String, dynamic>? details})
      : _details = details;

  factory _$WeatherForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastImplFromJson(json);

  @override
  final DateTime time;
  @override
  final double temperature;
  @override
  final double precipitation;
  @override
  final double windSpeed;
  @override
  final String condition;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'WeatherForecast(time: $time, temperature: $temperature, precipitation: $precipitation, windSpeed: $windSpeed, condition: $condition, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.precipitation, precipitation) ||
                other.precipitation == precipitation) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature, precipitation,
      windSpeed, condition, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastImplCopyWith<_$WeatherForecastImpl> get copyWith =>
      __$$WeatherForecastImplCopyWithImpl<_$WeatherForecastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecast implements WeatherForecast {
  const factory _WeatherForecast(
      {required final DateTime time,
      required final double temperature,
      required final double precipitation,
      required final double windSpeed,
      required final String condition,
      final Map<String, dynamic>? details}) = _$WeatherForecastImpl;

  factory _WeatherForecast.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastImpl.fromJson;

  @override
  DateTime get time;
  @override
  double get temperature;
  @override
  double get precipitation;
  @override
  double get windSpeed;
  @override
  String get condition;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastImplCopyWith<_$WeatherForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapProvider _$MapProviderFromJson(Map<String, dynamic> json) {
  return _MapProvider.fromJson(json);
}

/// @nodoc
mixin _$MapProvider {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get apiKey => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  MapFeatures get features => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;
  Map<String, dynamic>? get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapProviderCopyWith<MapProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapProviderCopyWith<$Res> {
  factory $MapProviderCopyWith(
          MapProvider value, $Res Function(MapProvider) then) =
      _$MapProviderCopyWithImpl<$Res, MapProvider>;
  @useResult
  $Res call(
      {String id,
      String name,
      String apiKey,
      bool isActive,
      MapFeatures features,
      Map<String, dynamic> settings,
      Map<String, dynamic>? usage});

  $MapFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class _$MapProviderCopyWithImpl<$Res, $Val extends MapProvider>
    implements $MapProviderCopyWith<$Res> {
  _$MapProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiKey = null,
    Object? isActive = null,
    Object? features = null,
    Object? settings = null,
    Object? usage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as MapFeatures,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MapFeaturesCopyWith<$Res> get features {
    return $MapFeaturesCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MapProviderImplCopyWith<$Res>
    implements $MapProviderCopyWith<$Res> {
  factory _$$MapProviderImplCopyWith(
          _$MapProviderImpl value, $Res Function(_$MapProviderImpl) then) =
      __$$MapProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String apiKey,
      bool isActive,
      MapFeatures features,
      Map<String, dynamic> settings,
      Map<String, dynamic>? usage});

  @override
  $MapFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class __$$MapProviderImplCopyWithImpl<$Res>
    extends _$MapProviderCopyWithImpl<$Res, _$MapProviderImpl>
    implements _$$MapProviderImplCopyWith<$Res> {
  __$$MapProviderImplCopyWithImpl(
      _$MapProviderImpl _value, $Res Function(_$MapProviderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiKey = null,
    Object? isActive = null,
    Object? features = null,
    Object? settings = null,
    Object? usage = freezed,
  }) {
    return _then(_$MapProviderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as MapFeatures,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      usage: freezed == usage
          ? _value._usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapProviderImpl implements _MapProvider {
  const _$MapProviderImpl(
      {required this.id,
      required this.name,
      required this.apiKey,
      required this.isActive,
      required this.features,
      required final Map<String, dynamic> settings,
      final Map<String, dynamic>? usage})
      : _settings = settings,
        _usage = usage;

  factory _$MapProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapProviderImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String apiKey;
  @override
  final bool isActive;
  @override
  final MapFeatures features;
  final Map<String, dynamic> _settings;
  @override
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  final Map<String, dynamic>? _usage;
  @override
  Map<String, dynamic>? get usage {
    final value = _usage;
    if (value == null) return null;
    if (_usage is EqualUnmodifiableMapView) return _usage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MapProvider(id: $id, name: $name, apiKey: $apiKey, isActive: $isActive, features: $features, settings: $settings, usage: $usage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapProviderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.features, features) ||
                other.features == features) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            const DeepCollectionEquality().equals(other._usage, _usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      apiKey,
      isActive,
      features,
      const DeepCollectionEquality().hash(_settings),
      const DeepCollectionEquality().hash(_usage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapProviderImplCopyWith<_$MapProviderImpl> get copyWith =>
      __$$MapProviderImplCopyWithImpl<_$MapProviderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapProviderImplToJson(
      this,
    );
  }
}

abstract class _MapProvider implements MapProvider {
  const factory _MapProvider(
      {required final String id,
      required final String name,
      required final String apiKey,
      required final bool isActive,
      required final MapFeatures features,
      required final Map<String, dynamic> settings,
      final Map<String, dynamic>? usage}) = _$MapProviderImpl;

  factory _MapProvider.fromJson(Map<String, dynamic> json) =
      _$MapProviderImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get apiKey;
  @override
  bool get isActive;
  @override
  MapFeatures get features;
  @override
  Map<String, dynamic> get settings;
  @override
  Map<String, dynamic>? get usage;
  @override
  @JsonKey(ignore: true)
  _$$MapProviderImplCopyWith<_$MapProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapFeatures _$MapFeaturesFromJson(Map<String, dynamic> json) {
  return _MapFeatures.fromJson(json);
}

/// @nodoc
mixin _$MapFeatures {
  bool get satellite => throw _privateConstructorUsedError;
  bool get terrain => throw _privateConstructorUsedError;
  bool get traffic => throw _privateConstructorUsedError;
  bool get places => throw _privateConstructorUsedError;
  bool get directions => throw _privateConstructorUsedError;
  bool get geocoding => throw _privateConstructorUsedError;
  bool get clustering => throw _privateConstructorUsedError;
  bool get heatmap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapFeaturesCopyWith<MapFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapFeaturesCopyWith<$Res> {
  factory $MapFeaturesCopyWith(
          MapFeatures value, $Res Function(MapFeatures) then) =
      _$MapFeaturesCopyWithImpl<$Res, MapFeatures>;
  @useResult
  $Res call(
      {bool satellite,
      bool terrain,
      bool traffic,
      bool places,
      bool directions,
      bool geocoding,
      bool clustering,
      bool heatmap});
}

/// @nodoc
class _$MapFeaturesCopyWithImpl<$Res, $Val extends MapFeatures>
    implements $MapFeaturesCopyWith<$Res> {
  _$MapFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? satellite = null,
    Object? terrain = null,
    Object? traffic = null,
    Object? places = null,
    Object? directions = null,
    Object? geocoding = null,
    Object? clustering = null,
    Object? heatmap = null,
  }) {
    return _then(_value.copyWith(
      satellite: null == satellite
          ? _value.satellite
          : satellite // ignore: cast_nullable_to_non_nullable
              as bool,
      terrain: null == terrain
          ? _value.terrain
          : terrain // ignore: cast_nullable_to_non_nullable
              as bool,
      traffic: null == traffic
          ? _value.traffic
          : traffic // ignore: cast_nullable_to_non_nullable
              as bool,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as bool,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as bool,
      geocoding: null == geocoding
          ? _value.geocoding
          : geocoding // ignore: cast_nullable_to_non_nullable
              as bool,
      clustering: null == clustering
          ? _value.clustering
          : clustering // ignore: cast_nullable_to_non_nullable
              as bool,
      heatmap: null == heatmap
          ? _value.heatmap
          : heatmap // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapFeaturesImplCopyWith<$Res>
    implements $MapFeaturesCopyWith<$Res> {
  factory _$$MapFeaturesImplCopyWith(
          _$MapFeaturesImpl value, $Res Function(_$MapFeaturesImpl) then) =
      __$$MapFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool satellite,
      bool terrain,
      bool traffic,
      bool places,
      bool directions,
      bool geocoding,
      bool clustering,
      bool heatmap});
}

/// @nodoc
class __$$MapFeaturesImplCopyWithImpl<$Res>
    extends _$MapFeaturesCopyWithImpl<$Res, _$MapFeaturesImpl>
    implements _$$MapFeaturesImplCopyWith<$Res> {
  __$$MapFeaturesImplCopyWithImpl(
      _$MapFeaturesImpl _value, $Res Function(_$MapFeaturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? satellite = null,
    Object? terrain = null,
    Object? traffic = null,
    Object? places = null,
    Object? directions = null,
    Object? geocoding = null,
    Object? clustering = null,
    Object? heatmap = null,
  }) {
    return _then(_$MapFeaturesImpl(
      satellite: null == satellite
          ? _value.satellite
          : satellite // ignore: cast_nullable_to_non_nullable
              as bool,
      terrain: null == terrain
          ? _value.terrain
          : terrain // ignore: cast_nullable_to_non_nullable
              as bool,
      traffic: null == traffic
          ? _value.traffic
          : traffic // ignore: cast_nullable_to_non_nullable
              as bool,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as bool,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as bool,
      geocoding: null == geocoding
          ? _value.geocoding
          : geocoding // ignore: cast_nullable_to_non_nullable
              as bool,
      clustering: null == clustering
          ? _value.clustering
          : clustering // ignore: cast_nullable_to_non_nullable
              as bool,
      heatmap: null == heatmap
          ? _value.heatmap
          : heatmap // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapFeaturesImpl implements _MapFeatures {
  const _$MapFeaturesImpl(
      {required this.satellite,
      required this.terrain,
      required this.traffic,
      required this.places,
      required this.directions,
      required this.geocoding,
      required this.clustering,
      required this.heatmap});

  factory _$MapFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapFeaturesImplFromJson(json);

  @override
  final bool satellite;
  @override
  final bool terrain;
  @override
  final bool traffic;
  @override
  final bool places;
  @override
  final bool directions;
  @override
  final bool geocoding;
  @override
  final bool clustering;
  @override
  final bool heatmap;

  @override
  String toString() {
    return 'MapFeatures(satellite: $satellite, terrain: $terrain, traffic: $traffic, places: $places, directions: $directions, geocoding: $geocoding, clustering: $clustering, heatmap: $heatmap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapFeaturesImpl &&
            (identical(other.satellite, satellite) ||
                other.satellite == satellite) &&
            (identical(other.terrain, terrain) || other.terrain == terrain) &&
            (identical(other.traffic, traffic) || other.traffic == traffic) &&
            (identical(other.places, places) || other.places == places) &&
            (identical(other.directions, directions) ||
                other.directions == directions) &&
            (identical(other.geocoding, geocoding) ||
                other.geocoding == geocoding) &&
            (identical(other.clustering, clustering) ||
                other.clustering == clustering) &&
            (identical(other.heatmap, heatmap) || other.heatmap == heatmap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, satellite, terrain, traffic,
      places, directions, geocoding, clustering, heatmap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapFeaturesImplCopyWith<_$MapFeaturesImpl> get copyWith =>
      __$$MapFeaturesImplCopyWithImpl<_$MapFeaturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapFeaturesImplToJson(
      this,
    );
  }
}

abstract class _MapFeatures implements MapFeatures {
  const factory _MapFeatures(
      {required final bool satellite,
      required final bool terrain,
      required final bool traffic,
      required final bool places,
      required final bool directions,
      required final bool geocoding,
      required final bool clustering,
      required final bool heatmap}) = _$MapFeaturesImpl;

  factory _MapFeatures.fromJson(Map<String, dynamic> json) =
      _$MapFeaturesImpl.fromJson;

  @override
  bool get satellite;
  @override
  bool get terrain;
  @override
  bool get traffic;
  @override
  bool get places;
  @override
  bool get directions;
  @override
  bool get geocoding;
  @override
  bool get clustering;
  @override
  bool get heatmap;
  @override
  @JsonKey(ignore: true)
  _$$MapFeaturesImplCopyWith<_$MapFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentProcessor _$PaymentProcessorFromJson(Map<String, dynamic> json) {
  return _PaymentProcessor.fromJson(json);
}

/// @nodoc
mixin _$PaymentProcessor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<String> get supportedMethods => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  PaymentFeatures get features => throw _privateConstructorUsedError;
  Map<String, dynamic>? get analytics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentProcessorCopyWith<PaymentProcessor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentProcessorCopyWith<$Res> {
  factory $PaymentProcessorCopyWith(
          PaymentProcessor value, $Res Function(PaymentProcessor) then) =
      _$PaymentProcessorCopyWithImpl<$Res, PaymentProcessor>;
  @useResult
  $Res call(
      {String id,
      String name,
      String provider,
      bool isActive,
      List<String> supportedMethods,
      Map<String, dynamic> configuration,
      PaymentFeatures features,
      Map<String, dynamic>? analytics});

  $PaymentFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class _$PaymentProcessorCopyWithImpl<$Res, $Val extends PaymentProcessor>
    implements $PaymentProcessorCopyWith<$Res> {
  _$PaymentProcessorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? provider = null,
    Object? isActive = null,
    Object? supportedMethods = null,
    Object? configuration = null,
    Object? features = null,
    Object? analytics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedMethods: null == supportedMethods
          ? _value.supportedMethods
          : supportedMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as PaymentFeatures,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentFeaturesCopyWith<$Res> get features {
    return $PaymentFeaturesCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentProcessorImplCopyWith<$Res>
    implements $PaymentProcessorCopyWith<$Res> {
  factory _$$PaymentProcessorImplCopyWith(_$PaymentProcessorImpl value,
          $Res Function(_$PaymentProcessorImpl) then) =
      __$$PaymentProcessorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String provider,
      bool isActive,
      List<String> supportedMethods,
      Map<String, dynamic> configuration,
      PaymentFeatures features,
      Map<String, dynamic>? analytics});

  @override
  $PaymentFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class __$$PaymentProcessorImplCopyWithImpl<$Res>
    extends _$PaymentProcessorCopyWithImpl<$Res, _$PaymentProcessorImpl>
    implements _$$PaymentProcessorImplCopyWith<$Res> {
  __$$PaymentProcessorImplCopyWithImpl(_$PaymentProcessorImpl _value,
      $Res Function(_$PaymentProcessorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? provider = null,
    Object? isActive = null,
    Object? supportedMethods = null,
    Object? configuration = null,
    Object? features = null,
    Object? analytics = freezed,
  }) {
    return _then(_$PaymentProcessorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedMethods: null == supportedMethods
          ? _value._supportedMethods
          : supportedMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as PaymentFeatures,
      analytics: freezed == analytics
          ? _value._analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentProcessorImpl implements _PaymentProcessor {
  const _$PaymentProcessorImpl(
      {required this.id,
      required this.name,
      required this.provider,
      required this.isActive,
      required final List<String> supportedMethods,
      required final Map<String, dynamic> configuration,
      required this.features,
      final Map<String, dynamic>? analytics})
      : _supportedMethods = supportedMethods,
        _configuration = configuration,
        _analytics = analytics;

  factory _$PaymentProcessorImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentProcessorImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String provider;
  @override
  final bool isActive;
  final List<String> _supportedMethods;
  @override
  List<String> get supportedMethods {
    if (_supportedMethods is EqualUnmodifiableListView)
      return _supportedMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedMethods);
  }

  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  @override
  final PaymentFeatures features;
  final Map<String, dynamic>? _analytics;
  @override
  Map<String, dynamic>? get analytics {
    final value = _analytics;
    if (value == null) return null;
    if (_analytics is EqualUnmodifiableMapView) return _analytics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PaymentProcessor(id: $id, name: $name, provider: $provider, isActive: $isActive, supportedMethods: $supportedMethods, configuration: $configuration, features: $features, analytics: $analytics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentProcessorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._supportedMethods, _supportedMethods) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            (identical(other.features, features) ||
                other.features == features) &&
            const DeepCollectionEquality()
                .equals(other._analytics, _analytics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      provider,
      isActive,
      const DeepCollectionEquality().hash(_supportedMethods),
      const DeepCollectionEquality().hash(_configuration),
      features,
      const DeepCollectionEquality().hash(_analytics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentProcessorImplCopyWith<_$PaymentProcessorImpl> get copyWith =>
      __$$PaymentProcessorImplCopyWithImpl<_$PaymentProcessorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentProcessorImplToJson(
      this,
    );
  }
}

abstract class _PaymentProcessor implements PaymentProcessor {
  const factory _PaymentProcessor(
      {required final String id,
      required final String name,
      required final String provider,
      required final bool isActive,
      required final List<String> supportedMethods,
      required final Map<String, dynamic> configuration,
      required final PaymentFeatures features,
      final Map<String, dynamic>? analytics}) = _$PaymentProcessorImpl;

  factory _PaymentProcessor.fromJson(Map<String, dynamic> json) =
      _$PaymentProcessorImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get provider;
  @override
  bool get isActive;
  @override
  List<String> get supportedMethods;
  @override
  Map<String, dynamic> get configuration;
  @override
  PaymentFeatures get features;
  @override
  Map<String, dynamic>? get analytics;
  @override
  @JsonKey(ignore: true)
  _$$PaymentProcessorImplCopyWith<_$PaymentProcessorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentFeatures _$PaymentFeaturesFromJson(Map<String, dynamic> json) {
  return _PaymentFeatures.fromJson(json);
}

/// @nodoc
mixin _$PaymentFeatures {
  bool get recurring => throw _privateConstructorUsedError;
  bool get refunds => throw _privateConstructorUsedError;
  bool get disputes => throw _privateConstructorUsedError;
  bool get splitPayments => throw _privateConstructorUsedError;
  bool get internationalPayments => throw _privateConstructorUsedError;
  List<String> get currencies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentFeaturesCopyWith<PaymentFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFeaturesCopyWith<$Res> {
  factory $PaymentFeaturesCopyWith(
          PaymentFeatures value, $Res Function(PaymentFeatures) then) =
      _$PaymentFeaturesCopyWithImpl<$Res, PaymentFeatures>;
  @useResult
  $Res call(
      {bool recurring,
      bool refunds,
      bool disputes,
      bool splitPayments,
      bool internationalPayments,
      List<String> currencies});
}

/// @nodoc
class _$PaymentFeaturesCopyWithImpl<$Res, $Val extends PaymentFeatures>
    implements $PaymentFeaturesCopyWith<$Res> {
  _$PaymentFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recurring = null,
    Object? refunds = null,
    Object? disputes = null,
    Object? splitPayments = null,
    Object? internationalPayments = null,
    Object? currencies = null,
  }) {
    return _then(_value.copyWith(
      recurring: null == recurring
          ? _value.recurring
          : recurring // ignore: cast_nullable_to_non_nullable
              as bool,
      refunds: null == refunds
          ? _value.refunds
          : refunds // ignore: cast_nullable_to_non_nullable
              as bool,
      disputes: null == disputes
          ? _value.disputes
          : disputes // ignore: cast_nullable_to_non_nullable
              as bool,
      splitPayments: null == splitPayments
          ? _value.splitPayments
          : splitPayments // ignore: cast_nullable_to_non_nullable
              as bool,
      internationalPayments: null == internationalPayments
          ? _value.internationalPayments
          : internationalPayments // ignore: cast_nullable_to_non_nullable
              as bool,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentFeaturesImplCopyWith<$Res>
    implements $PaymentFeaturesCopyWith<$Res> {
  factory _$$PaymentFeaturesImplCopyWith(_$PaymentFeaturesImpl value,
          $Res Function(_$PaymentFeaturesImpl) then) =
      __$$PaymentFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool recurring,
      bool refunds,
      bool disputes,
      bool splitPayments,
      bool internationalPayments,
      List<String> currencies});
}

/// @nodoc
class __$$PaymentFeaturesImplCopyWithImpl<$Res>
    extends _$PaymentFeaturesCopyWithImpl<$Res, _$PaymentFeaturesImpl>
    implements _$$PaymentFeaturesImplCopyWith<$Res> {
  __$$PaymentFeaturesImplCopyWithImpl(
      _$PaymentFeaturesImpl _value, $Res Function(_$PaymentFeaturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recurring = null,
    Object? refunds = null,
    Object? disputes = null,
    Object? splitPayments = null,
    Object? internationalPayments = null,
    Object? currencies = null,
  }) {
    return _then(_$PaymentFeaturesImpl(
      recurring: null == recurring
          ? _value.recurring
          : recurring // ignore: cast_nullable_to_non_nullable
              as bool,
      refunds: null == refunds
          ? _value.refunds
          : refunds // ignore: cast_nullable_to_non_nullable
              as bool,
      disputes: null == disputes
          ? _value.disputes
          : disputes // ignore: cast_nullable_to_non_nullable
              as bool,
      splitPayments: null == splitPayments
          ? _value.splitPayments
          : splitPayments // ignore: cast_nullable_to_non_nullable
              as bool,
      internationalPayments: null == internationalPayments
          ? _value.internationalPayments
          : internationalPayments // ignore: cast_nullable_to_non_nullable
              as bool,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentFeaturesImpl implements _PaymentFeatures {
  const _$PaymentFeaturesImpl(
      {required this.recurring,
      required this.refunds,
      required this.disputes,
      required this.splitPayments,
      required this.internationalPayments,
      required final List<String> currencies})
      : _currencies = currencies;

  factory _$PaymentFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentFeaturesImplFromJson(json);

  @override
  final bool recurring;
  @override
  final bool refunds;
  @override
  final bool disputes;
  @override
  final bool splitPayments;
  @override
  final bool internationalPayments;
  final List<String> _currencies;
  @override
  List<String> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'PaymentFeatures(recurring: $recurring, refunds: $refunds, disputes: $disputes, splitPayments: $splitPayments, internationalPayments: $internationalPayments, currencies: $currencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFeaturesImpl &&
            (identical(other.recurring, recurring) ||
                other.recurring == recurring) &&
            (identical(other.refunds, refunds) || other.refunds == refunds) &&
            (identical(other.disputes, disputes) ||
                other.disputes == disputes) &&
            (identical(other.splitPayments, splitPayments) ||
                other.splitPayments == splitPayments) &&
            (identical(other.internationalPayments, internationalPayments) ||
                other.internationalPayments == internationalPayments) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      recurring,
      refunds,
      disputes,
      splitPayments,
      internationalPayments,
      const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFeaturesImplCopyWith<_$PaymentFeaturesImpl> get copyWith =>
      __$$PaymentFeaturesImplCopyWithImpl<_$PaymentFeaturesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentFeaturesImplToJson(
      this,
    );
  }
}

abstract class _PaymentFeatures implements PaymentFeatures {
  const factory _PaymentFeatures(
      {required final bool recurring,
      required final bool refunds,
      required final bool disputes,
      required final bool splitPayments,
      required final bool internationalPayments,
      required final List<String> currencies}) = _$PaymentFeaturesImpl;

  factory _PaymentFeatures.fromJson(Map<String, dynamic> json) =
      _$PaymentFeaturesImpl.fromJson;

  @override
  bool get recurring;
  @override
  bool get refunds;
  @override
  bool get disputes;
  @override
  bool get splitPayments;
  @override
  bool get internationalPayments;
  @override
  List<String> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$PaymentFeaturesImplCopyWith<_$PaymentFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialMediaIntegration _$SocialMediaIntegrationFromJson(
    Map<String, dynamic> json) {
  return _SocialMediaIntegration.fromJson(json);
}

/// @nodoc
mixin _$SocialMediaIntegration {
  String get platform => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  DateTime get tokenExpiry => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  SocialFeatures get features => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;
  Map<String, dynamic>? get analytics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMediaIntegrationCopyWith<SocialMediaIntegration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaIntegrationCopyWith<$Res> {
  factory $SocialMediaIntegrationCopyWith(SocialMediaIntegration value,
          $Res Function(SocialMediaIntegration) then) =
      _$SocialMediaIntegrationCopyWithImpl<$Res, SocialMediaIntegration>;
  @useResult
  $Res call(
      {String platform,
      String accessToken,
      DateTime tokenExpiry,
      bool isActive,
      SocialFeatures features,
      Map<String, dynamic> settings,
      Map<String, dynamic>? analytics});

  $SocialFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class _$SocialMediaIntegrationCopyWithImpl<$Res,
        $Val extends SocialMediaIntegration>
    implements $SocialMediaIntegrationCopyWith<$Res> {
  _$SocialMediaIntegrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? accessToken = null,
    Object? tokenExpiry = null,
    Object? isActive = null,
    Object? features = null,
    Object? settings = null,
    Object? analytics = freezed,
  }) {
    return _then(_value.copyWith(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenExpiry: null == tokenExpiry
          ? _value.tokenExpiry
          : tokenExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as SocialFeatures,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SocialFeaturesCopyWith<$Res> get features {
    return $SocialFeaturesCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocialMediaIntegrationImplCopyWith<$Res>
    implements $SocialMediaIntegrationCopyWith<$Res> {
  factory _$$SocialMediaIntegrationImplCopyWith(
          _$SocialMediaIntegrationImpl value,
          $Res Function(_$SocialMediaIntegrationImpl) then) =
      __$$SocialMediaIntegrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String platform,
      String accessToken,
      DateTime tokenExpiry,
      bool isActive,
      SocialFeatures features,
      Map<String, dynamic> settings,
      Map<String, dynamic>? analytics});

  @override
  $SocialFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class __$$SocialMediaIntegrationImplCopyWithImpl<$Res>
    extends _$SocialMediaIntegrationCopyWithImpl<$Res,
        _$SocialMediaIntegrationImpl>
    implements _$$SocialMediaIntegrationImplCopyWith<$Res> {
  __$$SocialMediaIntegrationImplCopyWithImpl(
      _$SocialMediaIntegrationImpl _value,
      $Res Function(_$SocialMediaIntegrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? accessToken = null,
    Object? tokenExpiry = null,
    Object? isActive = null,
    Object? features = null,
    Object? settings = null,
    Object? analytics = freezed,
  }) {
    return _then(_$SocialMediaIntegrationImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenExpiry: null == tokenExpiry
          ? _value.tokenExpiry
          : tokenExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as SocialFeatures,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      analytics: freezed == analytics
          ? _value._analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialMediaIntegrationImpl implements _SocialMediaIntegration {
  const _$SocialMediaIntegrationImpl(
      {required this.platform,
      required this.accessToken,
      required this.tokenExpiry,
      required this.isActive,
      required this.features,
      required final Map<String, dynamic> settings,
      final Map<String, dynamic>? analytics})
      : _settings = settings,
        _analytics = analytics;

  factory _$SocialMediaIntegrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialMediaIntegrationImplFromJson(json);

  @override
  final String platform;
  @override
  final String accessToken;
  @override
  final DateTime tokenExpiry;
  @override
  final bool isActive;
  @override
  final SocialFeatures features;
  final Map<String, dynamic> _settings;
  @override
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  final Map<String, dynamic>? _analytics;
  @override
  Map<String, dynamic>? get analytics {
    final value = _analytics;
    if (value == null) return null;
    if (_analytics is EqualUnmodifiableMapView) return _analytics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocialMediaIntegration(platform: $platform, accessToken: $accessToken, tokenExpiry: $tokenExpiry, isActive: $isActive, features: $features, settings: $settings, analytics: $analytics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaIntegrationImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenExpiry, tokenExpiry) ||
                other.tokenExpiry == tokenExpiry) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.features, features) ||
                other.features == features) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            const DeepCollectionEquality()
                .equals(other._analytics, _analytics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      platform,
      accessToken,
      tokenExpiry,
      isActive,
      features,
      const DeepCollectionEquality().hash(_settings),
      const DeepCollectionEquality().hash(_analytics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMediaIntegrationImplCopyWith<_$SocialMediaIntegrationImpl>
      get copyWith => __$$SocialMediaIntegrationImplCopyWithImpl<
          _$SocialMediaIntegrationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialMediaIntegrationImplToJson(
      this,
    );
  }
}

abstract class _SocialMediaIntegration implements SocialMediaIntegration {
  const factory _SocialMediaIntegration(
      {required final String platform,
      required final String accessToken,
      required final DateTime tokenExpiry,
      required final bool isActive,
      required final SocialFeatures features,
      required final Map<String, dynamic> settings,
      final Map<String, dynamic>? analytics}) = _$SocialMediaIntegrationImpl;

  factory _SocialMediaIntegration.fromJson(Map<String, dynamic> json) =
      _$SocialMediaIntegrationImpl.fromJson;

  @override
  String get platform;
  @override
  String get accessToken;
  @override
  DateTime get tokenExpiry;
  @override
  bool get isActive;
  @override
  SocialFeatures get features;
  @override
  Map<String, dynamic> get settings;
  @override
  Map<String, dynamic>? get analytics;
  @override
  @JsonKey(ignore: true)
  _$$SocialMediaIntegrationImplCopyWith<_$SocialMediaIntegrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SocialFeatures _$SocialFeaturesFromJson(Map<String, dynamic> json) {
  return _SocialFeatures.fromJson(json);
}

/// @nodoc
mixin _$SocialFeatures {
  bool get sharing => throw _privateConstructorUsedError;
  bool get authentication => throw _privateConstructorUsedError;
  bool get feed => throw _privateConstructorUsedError;
  bool get messaging => throw _privateConstructorUsedError;
  bool get notifications => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialFeaturesCopyWith<SocialFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialFeaturesCopyWith<$Res> {
  factory $SocialFeaturesCopyWith(
          SocialFeatures value, $Res Function(SocialFeatures) then) =
      _$SocialFeaturesCopyWithImpl<$Res, SocialFeatures>;
  @useResult
  $Res call(
      {bool sharing,
      bool authentication,
      bool feed,
      bool messaging,
      bool notifications,
      List<String> permissions});
}

/// @nodoc
class _$SocialFeaturesCopyWithImpl<$Res, $Val extends SocialFeatures>
    implements $SocialFeaturesCopyWith<$Res> {
  _$SocialFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharing = null,
    Object? authentication = null,
    Object? feed = null,
    Object? messaging = null,
    Object? notifications = null,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      sharing: null == sharing
          ? _value.sharing
          : sharing // ignore: cast_nullable_to_non_nullable
              as bool,
      authentication: null == authentication
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as bool,
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as bool,
      messaging: null == messaging
          ? _value.messaging
          : messaging // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialFeaturesImplCopyWith<$Res>
    implements $SocialFeaturesCopyWith<$Res> {
  factory _$$SocialFeaturesImplCopyWith(_$SocialFeaturesImpl value,
          $Res Function(_$SocialFeaturesImpl) then) =
      __$$SocialFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool sharing,
      bool authentication,
      bool feed,
      bool messaging,
      bool notifications,
      List<String> permissions});
}

/// @nodoc
class __$$SocialFeaturesImplCopyWithImpl<$Res>
    extends _$SocialFeaturesCopyWithImpl<$Res, _$SocialFeaturesImpl>
    implements _$$SocialFeaturesImplCopyWith<$Res> {
  __$$SocialFeaturesImplCopyWithImpl(
      _$SocialFeaturesImpl _value, $Res Function(_$SocialFeaturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharing = null,
    Object? authentication = null,
    Object? feed = null,
    Object? messaging = null,
    Object? notifications = null,
    Object? permissions = null,
  }) {
    return _then(_$SocialFeaturesImpl(
      sharing: null == sharing
          ? _value.sharing
          : sharing // ignore: cast_nullable_to_non_nullable
              as bool,
      authentication: null == authentication
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as bool,
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as bool,
      messaging: null == messaging
          ? _value.messaging
          : messaging // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialFeaturesImpl implements _SocialFeatures {
  const _$SocialFeaturesImpl(
      {required this.sharing,
      required this.authentication,
      required this.feed,
      required this.messaging,
      required this.notifications,
      required final List<String> permissions})
      : _permissions = permissions;

  factory _$SocialFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialFeaturesImplFromJson(json);

  @override
  final bool sharing;
  @override
  final bool authentication;
  @override
  final bool feed;
  @override
  final bool messaging;
  @override
  final bool notifications;
  final List<String> _permissions;
  @override
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'SocialFeatures(sharing: $sharing, authentication: $authentication, feed: $feed, messaging: $messaging, notifications: $notifications, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialFeaturesImpl &&
            (identical(other.sharing, sharing) || other.sharing == sharing) &&
            (identical(other.authentication, authentication) ||
                other.authentication == authentication) &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.messaging, messaging) ||
                other.messaging == messaging) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sharing,
      authentication,
      feed,
      messaging,
      notifications,
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialFeaturesImplCopyWith<_$SocialFeaturesImpl> get copyWith =>
      __$$SocialFeaturesImplCopyWithImpl<_$SocialFeaturesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialFeaturesImplToJson(
      this,
    );
  }
}

abstract class _SocialFeatures implements SocialFeatures {
  const factory _SocialFeatures(
      {required final bool sharing,
      required final bool authentication,
      required final bool feed,
      required final bool messaging,
      required final bool notifications,
      required final List<String> permissions}) = _$SocialFeaturesImpl;

  factory _SocialFeatures.fromJson(Map<String, dynamic> json) =
      _$SocialFeaturesImpl.fromJson;

  @override
  bool get sharing;
  @override
  bool get authentication;
  @override
  bool get feed;
  @override
  bool get messaging;
  @override
  bool get notifications;
  @override
  List<String> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$SocialFeaturesImplCopyWith<_$SocialFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CloudService _$CloudServiceFromJson(Map<String, dynamic> json) {
  return _CloudService.fromJson(json);
}

/// @nodoc
mixin _$CloudService {
  String get id => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get service => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  CloudFeatures get features => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  Map<String, dynamic> get quotas => throw _privateConstructorUsedError;
  Map<String, dynamic>? get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudServiceCopyWith<CloudService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudServiceCopyWith<$Res> {
  factory $CloudServiceCopyWith(
          CloudService value, $Res Function(CloudService) then) =
      _$CloudServiceCopyWithImpl<$Res, CloudService>;
  @useResult
  $Res call(
      {String id,
      String provider,
      String service,
      bool isActive,
      CloudFeatures features,
      Map<String, dynamic> configuration,
      Map<String, dynamic> quotas,
      Map<String, dynamic>? usage});

  $CloudFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class _$CloudServiceCopyWithImpl<$Res, $Val extends CloudService>
    implements $CloudServiceCopyWith<$Res> {
  _$CloudServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? service = null,
    Object? isActive = null,
    Object? features = null,
    Object? configuration = null,
    Object? quotas = null,
    Object? usage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as CloudFeatures,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      quotas: null == quotas
          ? _value.quotas
          : quotas // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudFeaturesCopyWith<$Res> get features {
    return $CloudFeaturesCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CloudServiceImplCopyWith<$Res>
    implements $CloudServiceCopyWith<$Res> {
  factory _$$CloudServiceImplCopyWith(
          _$CloudServiceImpl value, $Res Function(_$CloudServiceImpl) then) =
      __$$CloudServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String provider,
      String service,
      bool isActive,
      CloudFeatures features,
      Map<String, dynamic> configuration,
      Map<String, dynamic> quotas,
      Map<String, dynamic>? usage});

  @override
  $CloudFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class __$$CloudServiceImplCopyWithImpl<$Res>
    extends _$CloudServiceCopyWithImpl<$Res, _$CloudServiceImpl>
    implements _$$CloudServiceImplCopyWith<$Res> {
  __$$CloudServiceImplCopyWithImpl(
      _$CloudServiceImpl _value, $Res Function(_$CloudServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? service = null,
    Object? isActive = null,
    Object? features = null,
    Object? configuration = null,
    Object? quotas = null,
    Object? usage = freezed,
  }) {
    return _then(_$CloudServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as CloudFeatures,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      quotas: null == quotas
          ? _value._quotas
          : quotas // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      usage: freezed == usage
          ? _value._usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudServiceImpl implements _CloudService {
  const _$CloudServiceImpl(
      {required this.id,
      required this.provider,
      required this.service,
      required this.isActive,
      required this.features,
      required final Map<String, dynamic> configuration,
      required final Map<String, dynamic> quotas,
      final Map<String, dynamic>? usage})
      : _configuration = configuration,
        _quotas = quotas,
        _usage = usage;

  factory _$CloudServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudServiceImplFromJson(json);

  @override
  final String id;
  @override
  final String provider;
  @override
  final String service;
  @override
  final bool isActive;
  @override
  final CloudFeatures features;
  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  final Map<String, dynamic> _quotas;
  @override
  Map<String, dynamic> get quotas {
    if (_quotas is EqualUnmodifiableMapView) return _quotas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quotas);
  }

  final Map<String, dynamic>? _usage;
  @override
  Map<String, dynamic>? get usage {
    final value = _usage;
    if (value == null) return null;
    if (_usage is EqualUnmodifiableMapView) return _usage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CloudService(id: $id, provider: $provider, service: $service, isActive: $isActive, features: $features, configuration: $configuration, quotas: $quotas, usage: $usage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.features, features) ||
                other.features == features) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            const DeepCollectionEquality().equals(other._quotas, _quotas) &&
            const DeepCollectionEquality().equals(other._usage, _usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      provider,
      service,
      isActive,
      features,
      const DeepCollectionEquality().hash(_configuration),
      const DeepCollectionEquality().hash(_quotas),
      const DeepCollectionEquality().hash(_usage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudServiceImplCopyWith<_$CloudServiceImpl> get copyWith =>
      __$$CloudServiceImplCopyWithImpl<_$CloudServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudServiceImplToJson(
      this,
    );
  }
}

abstract class _CloudService implements CloudService {
  const factory _CloudService(
      {required final String id,
      required final String provider,
      required final String service,
      required final bool isActive,
      required final CloudFeatures features,
      required final Map<String, dynamic> configuration,
      required final Map<String, dynamic> quotas,
      final Map<String, dynamic>? usage}) = _$CloudServiceImpl;

  factory _CloudService.fromJson(Map<String, dynamic> json) =
      _$CloudServiceImpl.fromJson;

  @override
  String get id;
  @override
  String get provider;
  @override
  String get service;
  @override
  bool get isActive;
  @override
  CloudFeatures get features;
  @override
  Map<String, dynamic> get configuration;
  @override
  Map<String, dynamic> get quotas;
  @override
  Map<String, dynamic>? get usage;
  @override
  @JsonKey(ignore: true)
  _$$CloudServiceImplCopyWith<_$CloudServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CloudFeatures _$CloudFeaturesFromJson(Map<String, dynamic> json) {
  return _CloudFeatures.fromJson(json);
}

/// @nodoc
mixin _$CloudFeatures {
  bool get storage => throw _privateConstructorUsedError;
  bool get computing => throw _privateConstructorUsedError;
  bool get database => throw _privateConstructorUsedError;
  bool get analytics => throw _privateConstructorUsedError;
  bool get ml => throw _privateConstructorUsedError;
  List<String> get apis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudFeaturesCopyWith<CloudFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudFeaturesCopyWith<$Res> {
  factory $CloudFeaturesCopyWith(
          CloudFeatures value, $Res Function(CloudFeatures) then) =
      _$CloudFeaturesCopyWithImpl<$Res, CloudFeatures>;
  @useResult
  $Res call(
      {bool storage,
      bool computing,
      bool database,
      bool analytics,
      bool ml,
      List<String> apis});
}

/// @nodoc
class _$CloudFeaturesCopyWithImpl<$Res, $Val extends CloudFeatures>
    implements $CloudFeaturesCopyWith<$Res> {
  _$CloudFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storage = null,
    Object? computing = null,
    Object? database = null,
    Object? analytics = null,
    Object? ml = null,
    Object? apis = null,
  }) {
    return _then(_value.copyWith(
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as bool,
      computing: null == computing
          ? _value.computing
          : computing // ignore: cast_nullable_to_non_nullable
              as bool,
      database: null == database
          ? _value.database
          : database // ignore: cast_nullable_to_non_nullable
              as bool,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool,
      ml: null == ml
          ? _value.ml
          : ml // ignore: cast_nullable_to_non_nullable
              as bool,
      apis: null == apis
          ? _value.apis
          : apis // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloudFeaturesImplCopyWith<$Res>
    implements $CloudFeaturesCopyWith<$Res> {
  factory _$$CloudFeaturesImplCopyWith(
          _$CloudFeaturesImpl value, $Res Function(_$CloudFeaturesImpl) then) =
      __$$CloudFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool storage,
      bool computing,
      bool database,
      bool analytics,
      bool ml,
      List<String> apis});
}

/// @nodoc
class __$$CloudFeaturesImplCopyWithImpl<$Res>
    extends _$CloudFeaturesCopyWithImpl<$Res, _$CloudFeaturesImpl>
    implements _$$CloudFeaturesImplCopyWith<$Res> {
  __$$CloudFeaturesImplCopyWithImpl(
      _$CloudFeaturesImpl _value, $Res Function(_$CloudFeaturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storage = null,
    Object? computing = null,
    Object? database = null,
    Object? analytics = null,
    Object? ml = null,
    Object? apis = null,
  }) {
    return _then(_$CloudFeaturesImpl(
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as bool,
      computing: null == computing
          ? _value.computing
          : computing // ignore: cast_nullable_to_non_nullable
              as bool,
      database: null == database
          ? _value.database
          : database // ignore: cast_nullable_to_non_nullable
              as bool,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool,
      ml: null == ml
          ? _value.ml
          : ml // ignore: cast_nullable_to_non_nullable
              as bool,
      apis: null == apis
          ? _value._apis
          : apis // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudFeaturesImpl implements _CloudFeatures {
  const _$CloudFeaturesImpl(
      {required this.storage,
      required this.computing,
      required this.database,
      required this.analytics,
      required this.ml,
      required final List<String> apis})
      : _apis = apis;

  factory _$CloudFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudFeaturesImplFromJson(json);

  @override
  final bool storage;
  @override
  final bool computing;
  @override
  final bool database;
  @override
  final bool analytics;
  @override
  final bool ml;
  final List<String> _apis;
  @override
  List<String> get apis {
    if (_apis is EqualUnmodifiableListView) return _apis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apis);
  }

  @override
  String toString() {
    return 'CloudFeatures(storage: $storage, computing: $computing, database: $database, analytics: $analytics, ml: $ml, apis: $apis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudFeaturesImpl &&
            (identical(other.storage, storage) || other.storage == storage) &&
            (identical(other.computing, computing) ||
                other.computing == computing) &&
            (identical(other.database, database) ||
                other.database == database) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.ml, ml) || other.ml == ml) &&
            const DeepCollectionEquality().equals(other._apis, _apis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, storage, computing, database,
      analytics, ml, const DeepCollectionEquality().hash(_apis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudFeaturesImplCopyWith<_$CloudFeaturesImpl> get copyWith =>
      __$$CloudFeaturesImplCopyWithImpl<_$CloudFeaturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudFeaturesImplToJson(
      this,
    );
  }
}

abstract class _CloudFeatures implements CloudFeatures {
  const factory _CloudFeatures(
      {required final bool storage,
      required final bool computing,
      required final bool database,
      required final bool analytics,
      required final bool ml,
      required final List<String> apis}) = _$CloudFeaturesImpl;

  factory _CloudFeatures.fromJson(Map<String, dynamic> json) =
      _$CloudFeaturesImpl.fromJson;

  @override
  bool get storage;
  @override
  bool get computing;
  @override
  bool get database;
  @override
  bool get analytics;
  @override
  bool get ml;
  @override
  List<String> get apis;
  @override
  @JsonKey(ignore: true)
  _$$CloudFeaturesImplCopyWith<_$CloudFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsPlatform _$AnalyticsPlatformFromJson(Map<String, dynamic> json) {
  return _AnalyticsPlatform.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsPlatform {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  AnalyticsFeatures get features => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  Map<String, dynamic> get tracking => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsPlatformCopyWith<AnalyticsPlatform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsPlatformCopyWith<$Res> {
  factory $AnalyticsPlatformCopyWith(
          AnalyticsPlatform value, $Res Function(AnalyticsPlatform) then) =
      _$AnalyticsPlatformCopyWithImpl<$Res, AnalyticsPlatform>;
  @useResult
  $Res call(
      {String id,
      String name,
      String provider,
      bool isActive,
      AnalyticsFeatures features,
      Map<String, dynamic> configuration,
      Map<String, dynamic> tracking,
      Map<String, dynamic>? metrics});

  $AnalyticsFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class _$AnalyticsPlatformCopyWithImpl<$Res, $Val extends AnalyticsPlatform>
    implements $AnalyticsPlatformCopyWith<$Res> {
  _$AnalyticsPlatformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? provider = null,
    Object? isActive = null,
    Object? features = null,
    Object? configuration = null,
    Object? tracking = null,
    Object? metrics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as AnalyticsFeatures,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      tracking: null == tracking
          ? _value.tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metrics: freezed == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsFeaturesCopyWith<$Res> get features {
    return $AnalyticsFeaturesCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsPlatformImplCopyWith<$Res>
    implements $AnalyticsPlatformCopyWith<$Res> {
  factory _$$AnalyticsPlatformImplCopyWith(_$AnalyticsPlatformImpl value,
          $Res Function(_$AnalyticsPlatformImpl) then) =
      __$$AnalyticsPlatformImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String provider,
      bool isActive,
      AnalyticsFeatures features,
      Map<String, dynamic> configuration,
      Map<String, dynamic> tracking,
      Map<String, dynamic>? metrics});

  @override
  $AnalyticsFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class __$$AnalyticsPlatformImplCopyWithImpl<$Res>
    extends _$AnalyticsPlatformCopyWithImpl<$Res, _$AnalyticsPlatformImpl>
    implements _$$AnalyticsPlatformImplCopyWith<$Res> {
  __$$AnalyticsPlatformImplCopyWithImpl(_$AnalyticsPlatformImpl _value,
      $Res Function(_$AnalyticsPlatformImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? provider = null,
    Object? isActive = null,
    Object? features = null,
    Object? configuration = null,
    Object? tracking = null,
    Object? metrics = freezed,
  }) {
    return _then(_$AnalyticsPlatformImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as AnalyticsFeatures,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      tracking: null == tracking
          ? _value._tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metrics: freezed == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsPlatformImpl implements _AnalyticsPlatform {
  const _$AnalyticsPlatformImpl(
      {required this.id,
      required this.name,
      required this.provider,
      required this.isActive,
      required this.features,
      required final Map<String, dynamic> configuration,
      required final Map<String, dynamic> tracking,
      final Map<String, dynamic>? metrics})
      : _configuration = configuration,
        _tracking = tracking,
        _metrics = metrics;

  factory _$AnalyticsPlatformImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsPlatformImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String provider;
  @override
  final bool isActive;
  @override
  final AnalyticsFeatures features;
  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  final Map<String, dynamic> _tracking;
  @override
  Map<String, dynamic> get tracking {
    if (_tracking is EqualUnmodifiableMapView) return _tracking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tracking);
  }

  final Map<String, dynamic>? _metrics;
  @override
  Map<String, dynamic>? get metrics {
    final value = _metrics;
    if (value == null) return null;
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AnalyticsPlatform(id: $id, name: $name, provider: $provider, isActive: $isActive, features: $features, configuration: $configuration, tracking: $tracking, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsPlatformImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.features, features) ||
                other.features == features) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            const DeepCollectionEquality().equals(other._tracking, _tracking) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      provider,
      isActive,
      features,
      const DeepCollectionEquality().hash(_configuration),
      const DeepCollectionEquality().hash(_tracking),
      const DeepCollectionEquality().hash(_metrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsPlatformImplCopyWith<_$AnalyticsPlatformImpl> get copyWith =>
      __$$AnalyticsPlatformImplCopyWithImpl<_$AnalyticsPlatformImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsPlatformImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsPlatform implements AnalyticsPlatform {
  const factory _AnalyticsPlatform(
      {required final String id,
      required final String name,
      required final String provider,
      required final bool isActive,
      required final AnalyticsFeatures features,
      required final Map<String, dynamic> configuration,
      required final Map<String, dynamic> tracking,
      final Map<String, dynamic>? metrics}) = _$AnalyticsPlatformImpl;

  factory _AnalyticsPlatform.fromJson(Map<String, dynamic> json) =
      _$AnalyticsPlatformImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get provider;
  @override
  bool get isActive;
  @override
  AnalyticsFeatures get features;
  @override
  Map<String, dynamic> get configuration;
  @override
  Map<String, dynamic> get tracking;
  @override
  Map<String, dynamic>? get metrics;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsPlatformImplCopyWith<_$AnalyticsPlatformImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsFeatures _$AnalyticsFeaturesFromJson(Map<String, dynamic> json) {
  return _AnalyticsFeatures.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsFeatures {
  bool get events => throw _privateConstructorUsedError;
  bool get userProperties => throw _privateConstructorUsedError;
  bool get conversions => throw _privateConstructorUsedError;
  bool get funnels => throw _privateConstructorUsedError;
  bool get retention => throw _privateConstructorUsedError;
  bool get realtime => throw _privateConstructorUsedError;
  List<String> get dimensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsFeaturesCopyWith<AnalyticsFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsFeaturesCopyWith<$Res> {
  factory $AnalyticsFeaturesCopyWith(
          AnalyticsFeatures value, $Res Function(AnalyticsFeatures) then) =
      _$AnalyticsFeaturesCopyWithImpl<$Res, AnalyticsFeatures>;
  @useResult
  $Res call(
      {bool events,
      bool userProperties,
      bool conversions,
      bool funnels,
      bool retention,
      bool realtime,
      List<String> dimensions});
}

/// @nodoc
class _$AnalyticsFeaturesCopyWithImpl<$Res, $Val extends AnalyticsFeatures>
    implements $AnalyticsFeaturesCopyWith<$Res> {
  _$AnalyticsFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? userProperties = null,
    Object? conversions = null,
    Object? funnels = null,
    Object? retention = null,
    Object? realtime = null,
    Object? dimensions = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as bool,
      userProperties: null == userProperties
          ? _value.userProperties
          : userProperties // ignore: cast_nullable_to_non_nullable
              as bool,
      conversions: null == conversions
          ? _value.conversions
          : conversions // ignore: cast_nullable_to_non_nullable
              as bool,
      funnels: null == funnels
          ? _value.funnels
          : funnels // ignore: cast_nullable_to_non_nullable
              as bool,
      retention: null == retention
          ? _value.retention
          : retention // ignore: cast_nullable_to_non_nullable
              as bool,
      realtime: null == realtime
          ? _value.realtime
          : realtime // ignore: cast_nullable_to_non_nullable
              as bool,
      dimensions: null == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsFeaturesImplCopyWith<$Res>
    implements $AnalyticsFeaturesCopyWith<$Res> {
  factory _$$AnalyticsFeaturesImplCopyWith(_$AnalyticsFeaturesImpl value,
          $Res Function(_$AnalyticsFeaturesImpl) then) =
      __$$AnalyticsFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool events,
      bool userProperties,
      bool conversions,
      bool funnels,
      bool retention,
      bool realtime,
      List<String> dimensions});
}

/// @nodoc
class __$$AnalyticsFeaturesImplCopyWithImpl<$Res>
    extends _$AnalyticsFeaturesCopyWithImpl<$Res, _$AnalyticsFeaturesImpl>
    implements _$$AnalyticsFeaturesImplCopyWith<$Res> {
  __$$AnalyticsFeaturesImplCopyWithImpl(_$AnalyticsFeaturesImpl _value,
      $Res Function(_$AnalyticsFeaturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? userProperties = null,
    Object? conversions = null,
    Object? funnels = null,
    Object? retention = null,
    Object? realtime = null,
    Object? dimensions = null,
  }) {
    return _then(_$AnalyticsFeaturesImpl(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as bool,
      userProperties: null == userProperties
          ? _value.userProperties
          : userProperties // ignore: cast_nullable_to_non_nullable
              as bool,
      conversions: null == conversions
          ? _value.conversions
          : conversions // ignore: cast_nullable_to_non_nullable
              as bool,
      funnels: null == funnels
          ? _value.funnels
          : funnels // ignore: cast_nullable_to_non_nullable
              as bool,
      retention: null == retention
          ? _value.retention
          : retention // ignore: cast_nullable_to_non_nullable
              as bool,
      realtime: null == realtime
          ? _value.realtime
          : realtime // ignore: cast_nullable_to_non_nullable
              as bool,
      dimensions: null == dimensions
          ? _value._dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsFeaturesImpl implements _AnalyticsFeatures {
  const _$AnalyticsFeaturesImpl(
      {required this.events,
      required this.userProperties,
      required this.conversions,
      required this.funnels,
      required this.retention,
      required this.realtime,
      required final List<String> dimensions})
      : _dimensions = dimensions;

  factory _$AnalyticsFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsFeaturesImplFromJson(json);

  @override
  final bool events;
  @override
  final bool userProperties;
  @override
  final bool conversions;
  @override
  final bool funnels;
  @override
  final bool retention;
  @override
  final bool realtime;
  final List<String> _dimensions;
  @override
  List<String> get dimensions {
    if (_dimensions is EqualUnmodifiableListView) return _dimensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dimensions);
  }

  @override
  String toString() {
    return 'AnalyticsFeatures(events: $events, userProperties: $userProperties, conversions: $conversions, funnels: $funnels, retention: $retention, realtime: $realtime, dimensions: $dimensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsFeaturesImpl &&
            (identical(other.events, events) || other.events == events) &&
            (identical(other.userProperties, userProperties) ||
                other.userProperties == userProperties) &&
            (identical(other.conversions, conversions) ||
                other.conversions == conversions) &&
            (identical(other.funnels, funnels) || other.funnels == funnels) &&
            (identical(other.retention, retention) ||
                other.retention == retention) &&
            (identical(other.realtime, realtime) ||
                other.realtime == realtime) &&
            const DeepCollectionEquality()
                .equals(other._dimensions, _dimensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      events,
      userProperties,
      conversions,
      funnels,
      retention,
      realtime,
      const DeepCollectionEquality().hash(_dimensions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsFeaturesImplCopyWith<_$AnalyticsFeaturesImpl> get copyWith =>
      __$$AnalyticsFeaturesImplCopyWithImpl<_$AnalyticsFeaturesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsFeaturesImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsFeatures implements AnalyticsFeatures {
  const factory _AnalyticsFeatures(
      {required final bool events,
      required final bool userProperties,
      required final bool conversions,
      required final bool funnels,
      required final bool retention,
      required final bool realtime,
      required final List<String> dimensions}) = _$AnalyticsFeaturesImpl;

  factory _AnalyticsFeatures.fromJson(Map<String, dynamic> json) =
      _$AnalyticsFeaturesImpl.fromJson;

  @override
  bool get events;
  @override
  bool get userProperties;
  @override
  bool get conversions;
  @override
  bool get funnels;
  @override
  bool get retention;
  @override
  bool get realtime;
  @override
  List<String> get dimensions;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsFeaturesImplCopyWith<_$AnalyticsFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntegrationStatus _$IntegrationStatusFromJson(Map<String, dynamic> json) {
  return _IntegrationStatus.fromJson(json);
}

/// @nodoc
mixin _$IntegrationStatus {
  String get integrationId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get lastCheck => throw _privateConstructorUsedError;
  bool get isHealthy => throw _privateConstructorUsedError;
  Map<String, bool> get features => throw _privateConstructorUsedError;
  Map<String, dynamic> get metrics => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntegrationStatusCopyWith<IntegrationStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegrationStatusCopyWith<$Res> {
  factory $IntegrationStatusCopyWith(
          IntegrationStatus value, $Res Function(IntegrationStatus) then) =
      _$IntegrationStatusCopyWithImpl<$Res, IntegrationStatus>;
  @useResult
  $Res call(
      {String integrationId,
      String type,
      bool isActive,
      DateTime lastCheck,
      bool isHealthy,
      Map<String, bool> features,
      Map<String, dynamic> metrics,
      String? error});
}

/// @nodoc
class _$IntegrationStatusCopyWithImpl<$Res, $Val extends IntegrationStatus>
    implements $IntegrationStatusCopyWith<$Res> {
  _$IntegrationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? integrationId = null,
    Object? type = null,
    Object? isActive = null,
    Object? lastCheck = null,
    Object? isHealthy = null,
    Object? features = null,
    Object? metrics = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      integrationId: null == integrationId
          ? _value.integrationId
          : integrationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      lastCheck: null == lastCheck
          ? _value.lastCheck
          : lastCheck // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isHealthy: null == isHealthy
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntegrationStatusImplCopyWith<$Res>
    implements $IntegrationStatusCopyWith<$Res> {
  factory _$$IntegrationStatusImplCopyWith(_$IntegrationStatusImpl value,
          $Res Function(_$IntegrationStatusImpl) then) =
      __$$IntegrationStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String integrationId,
      String type,
      bool isActive,
      DateTime lastCheck,
      bool isHealthy,
      Map<String, bool> features,
      Map<String, dynamic> metrics,
      String? error});
}

/// @nodoc
class __$$IntegrationStatusImplCopyWithImpl<$Res>
    extends _$IntegrationStatusCopyWithImpl<$Res, _$IntegrationStatusImpl>
    implements _$$IntegrationStatusImplCopyWith<$Res> {
  __$$IntegrationStatusImplCopyWithImpl(_$IntegrationStatusImpl _value,
      $Res Function(_$IntegrationStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? integrationId = null,
    Object? type = null,
    Object? isActive = null,
    Object? lastCheck = null,
    Object? isHealthy = null,
    Object? features = null,
    Object? metrics = null,
    Object? error = freezed,
  }) {
    return _then(_$IntegrationStatusImpl(
      integrationId: null == integrationId
          ? _value.integrationId
          : integrationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      lastCheck: null == lastCheck
          ? _value.lastCheck
          : lastCheck // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isHealthy: null == isHealthy
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      metrics: null == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntegrationStatusImpl implements _IntegrationStatus {
  const _$IntegrationStatusImpl(
      {required this.integrationId,
      required this.type,
      required this.isActive,
      required this.lastCheck,
      required this.isHealthy,
      required final Map<String, bool> features,
      required final Map<String, dynamic> metrics,
      this.error})
      : _features = features,
        _metrics = metrics;

  factory _$IntegrationStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntegrationStatusImplFromJson(json);

  @override
  final String integrationId;
  @override
  final String type;
  @override
  final bool isActive;
  @override
  final DateTime lastCheck;
  @override
  final bool isHealthy;
  final Map<String, bool> _features;
  @override
  Map<String, bool> get features {
    if (_features is EqualUnmodifiableMapView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_features);
  }

  final Map<String, dynamic> _metrics;
  @override
  Map<String, dynamic> get metrics {
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metrics);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'IntegrationStatus(integrationId: $integrationId, type: $type, isActive: $isActive, lastCheck: $lastCheck, isHealthy: $isHealthy, features: $features, metrics: $metrics, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegrationStatusImpl &&
            (identical(other.integrationId, integrationId) ||
                other.integrationId == integrationId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastCheck, lastCheck) ||
                other.lastCheck == lastCheck) &&
            (identical(other.isHealthy, isHealthy) ||
                other.isHealthy == isHealthy) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      integrationId,
      type,
      isActive,
      lastCheck,
      isHealthy,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(_metrics),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntegrationStatusImplCopyWith<_$IntegrationStatusImpl> get copyWith =>
      __$$IntegrationStatusImplCopyWithImpl<_$IntegrationStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegrationStatusImplToJson(
      this,
    );
  }
}

abstract class _IntegrationStatus implements IntegrationStatus {
  const factory _IntegrationStatus(
      {required final String integrationId,
      required final String type,
      required final bool isActive,
      required final DateTime lastCheck,
      required final bool isHealthy,
      required final Map<String, bool> features,
      required final Map<String, dynamic> metrics,
      final String? error}) = _$IntegrationStatusImpl;

  factory _IntegrationStatus.fromJson(Map<String, dynamic> json) =
      _$IntegrationStatusImpl.fromJson;

  @override
  String get integrationId;
  @override
  String get type;
  @override
  bool get isActive;
  @override
  DateTime get lastCheck;
  @override
  bool get isHealthy;
  @override
  Map<String, bool> get features;
  @override
  Map<String, dynamic> get metrics;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$IntegrationStatusImplCopyWith<_$IntegrationStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiUsage _$ApiUsageFromJson(Map<String, dynamic> json) {
  return _ApiUsage.fromJson(json);
}

/// @nodoc
mixin _$ApiUsage {
  String get apiId => throw _privateConstructorUsedError;
  DateTime get period => throw _privateConstructorUsedError;
  int get requests => throw _privateConstructorUsedError;
  int get errors => throw _privateConstructorUsedError;
  double get latency => throw _privateConstructorUsedError;
  Map<String, int> get endpoints => throw _privateConstructorUsedError;
  Map<String, double> get costs => throw _privateConstructorUsedError;
  Map<String, dynamic>? get quotas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUsageCopyWith<ApiUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUsageCopyWith<$Res> {
  factory $ApiUsageCopyWith(ApiUsage value, $Res Function(ApiUsage) then) =
      _$ApiUsageCopyWithImpl<$Res, ApiUsage>;
  @useResult
  $Res call(
      {String apiId,
      DateTime period,
      int requests,
      int errors,
      double latency,
      Map<String, int> endpoints,
      Map<String, double> costs,
      Map<String, dynamic>? quotas});
}

/// @nodoc
class _$ApiUsageCopyWithImpl<$Res, $Val extends ApiUsage>
    implements $ApiUsageCopyWith<$Res> {
  _$ApiUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? period = null,
    Object? requests = null,
    Object? errors = null,
    Object? latency = null,
    Object? endpoints = null,
    Object? costs = null,
    Object? quotas = freezed,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as int,
      latency: null == latency
          ? _value.latency
          : latency // ignore: cast_nullable_to_non_nullable
              as double,
      endpoints: null == endpoints
          ? _value.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      costs: null == costs
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      quotas: freezed == quotas
          ? _value.quotas
          : quotas // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiUsageImplCopyWith<$Res>
    implements $ApiUsageCopyWith<$Res> {
  factory _$$ApiUsageImplCopyWith(
          _$ApiUsageImpl value, $Res Function(_$ApiUsageImpl) then) =
      __$$ApiUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiId,
      DateTime period,
      int requests,
      int errors,
      double latency,
      Map<String, int> endpoints,
      Map<String, double> costs,
      Map<String, dynamic>? quotas});
}

/// @nodoc
class __$$ApiUsageImplCopyWithImpl<$Res>
    extends _$ApiUsageCopyWithImpl<$Res, _$ApiUsageImpl>
    implements _$$ApiUsageImplCopyWith<$Res> {
  __$$ApiUsageImplCopyWithImpl(
      _$ApiUsageImpl _value, $Res Function(_$ApiUsageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? period = null,
    Object? requests = null,
    Object? errors = null,
    Object? latency = null,
    Object? endpoints = null,
    Object? costs = null,
    Object? quotas = freezed,
  }) {
    return _then(_$ApiUsageImpl(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as int,
      latency: null == latency
          ? _value.latency
          : latency // ignore: cast_nullable_to_non_nullable
              as double,
      endpoints: null == endpoints
          ? _value._endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      costs: null == costs
          ? _value._costs
          : costs // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      quotas: freezed == quotas
          ? _value._quotas
          : quotas // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiUsageImpl implements _ApiUsage {
  const _$ApiUsageImpl(
      {required this.apiId,
      required this.period,
      required this.requests,
      required this.errors,
      required this.latency,
      required final Map<String, int> endpoints,
      required final Map<String, double> costs,
      final Map<String, dynamic>? quotas})
      : _endpoints = endpoints,
        _costs = costs,
        _quotas = quotas;

  factory _$ApiUsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUsageImplFromJson(json);

  @override
  final String apiId;
  @override
  final DateTime period;
  @override
  final int requests;
  @override
  final int errors;
  @override
  final double latency;
  final Map<String, int> _endpoints;
  @override
  Map<String, int> get endpoints {
    if (_endpoints is EqualUnmodifiableMapView) return _endpoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_endpoints);
  }

  final Map<String, double> _costs;
  @override
  Map<String, double> get costs {
    if (_costs is EqualUnmodifiableMapView) return _costs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_costs);
  }

  final Map<String, dynamic>? _quotas;
  @override
  Map<String, dynamic>? get quotas {
    final value = _quotas;
    if (value == null) return null;
    if (_quotas is EqualUnmodifiableMapView) return _quotas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiUsage(apiId: $apiId, period: $period, requests: $requests, errors: $errors, latency: $latency, endpoints: $endpoints, costs: $costs, quotas: $quotas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUsageImpl &&
            (identical(other.apiId, apiId) || other.apiId == apiId) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.requests, requests) ||
                other.requests == requests) &&
            (identical(other.errors, errors) || other.errors == errors) &&
            (identical(other.latency, latency) || other.latency == latency) &&
            const DeepCollectionEquality()
                .equals(other._endpoints, _endpoints) &&
            const DeepCollectionEquality().equals(other._costs, _costs) &&
            const DeepCollectionEquality().equals(other._quotas, _quotas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      apiId,
      period,
      requests,
      errors,
      latency,
      const DeepCollectionEquality().hash(_endpoints),
      const DeepCollectionEquality().hash(_costs),
      const DeepCollectionEquality().hash(_quotas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUsageImplCopyWith<_$ApiUsageImpl> get copyWith =>
      __$$ApiUsageImplCopyWithImpl<_$ApiUsageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUsageImplToJson(
      this,
    );
  }
}

abstract class _ApiUsage implements ApiUsage {
  const factory _ApiUsage(
      {required final String apiId,
      required final DateTime period,
      required final int requests,
      required final int errors,
      required final double latency,
      required final Map<String, int> endpoints,
      required final Map<String, double> costs,
      final Map<String, dynamic>? quotas}) = _$ApiUsageImpl;

  factory _ApiUsage.fromJson(Map<String, dynamic> json) =
      _$ApiUsageImpl.fromJson;

  @override
  String get apiId;
  @override
  DateTime get period;
  @override
  int get requests;
  @override
  int get errors;
  @override
  double get latency;
  @override
  Map<String, int> get endpoints;
  @override
  Map<String, double> get costs;
  @override
  Map<String, dynamic>? get quotas;
  @override
  @JsonKey(ignore: true)
  _$$ApiUsageImplCopyWith<_$ApiUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntegrationConfig _$IntegrationConfigFromJson(Map<String, dynamic> json) {
  return _IntegrationConfig.fromJson(json);
}

/// @nodoc
mixin _$IntegrationConfig {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, String> get credentials => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;
  Map<String, bool> get features => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntegrationConfigCopyWith<IntegrationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegrationConfigCopyWith<$Res> {
  factory $IntegrationConfigCopyWith(
          IntegrationConfig value, $Res Function(IntegrationConfig) then) =
      _$IntegrationConfigCopyWithImpl<$Res, IntegrationConfig>;
  @useResult
  $Res call(
      {String id,
      String type,
      Map<String, String> credentials,
      Map<String, dynamic> settings,
      Map<String, bool> features,
      bool isActive,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IntegrationConfigCopyWithImpl<$Res, $Val extends IntegrationConfig>
    implements $IntegrationConfigCopyWith<$Res> {
  _$IntegrationConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? credentials = null,
    Object? settings = null,
    Object? features = null,
    Object? isActive = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntegrationConfigImplCopyWith<$Res>
    implements $IntegrationConfigCopyWith<$Res> {
  factory _$$IntegrationConfigImplCopyWith(_$IntegrationConfigImpl value,
          $Res Function(_$IntegrationConfigImpl) then) =
      __$$IntegrationConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Map<String, String> credentials,
      Map<String, dynamic> settings,
      Map<String, bool> features,
      bool isActive,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$IntegrationConfigImplCopyWithImpl<$Res>
    extends _$IntegrationConfigCopyWithImpl<$Res, _$IntegrationConfigImpl>
    implements _$$IntegrationConfigImplCopyWith<$Res> {
  __$$IntegrationConfigImplCopyWithImpl(_$IntegrationConfigImpl _value,
      $Res Function(_$IntegrationConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? credentials = null,
    Object? settings = null,
    Object? features = null,
    Object? isActive = null,
    Object? metadata = freezed,
  }) {
    return _then(_$IntegrationConfigImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      credentials: null == credentials
          ? _value._credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntegrationConfigImpl implements _IntegrationConfig {
  const _$IntegrationConfigImpl(
      {required this.id,
      required this.type,
      required final Map<String, String> credentials,
      required final Map<String, dynamic> settings,
      required final Map<String, bool> features,
      required this.isActive,
      final Map<String, dynamic>? metadata})
      : _credentials = credentials,
        _settings = settings,
        _features = features,
        _metadata = metadata;

  factory _$IntegrationConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntegrationConfigImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  final Map<String, String> _credentials;
  @override
  Map<String, String> get credentials {
    if (_credentials is EqualUnmodifiableMapView) return _credentials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_credentials);
  }

  final Map<String, dynamic> _settings;
  @override
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  final Map<String, bool> _features;
  @override
  Map<String, bool> get features {
    if (_features is EqualUnmodifiableMapView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_features);
  }

  @override
  final bool isActive;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IntegrationConfig(id: $id, type: $type, credentials: $credentials, settings: $settings, features: $features, isActive: $isActive, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegrationConfigImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._credentials, _credentials) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      const DeepCollectionEquality().hash(_credentials),
      const DeepCollectionEquality().hash(_settings),
      const DeepCollectionEquality().hash(_features),
      isActive,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntegrationConfigImplCopyWith<_$IntegrationConfigImpl> get copyWith =>
      __$$IntegrationConfigImplCopyWithImpl<_$IntegrationConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegrationConfigImplToJson(
      this,
    );
  }
}

abstract class _IntegrationConfig implements IntegrationConfig {
  const factory _IntegrationConfig(
      {required final String id,
      required final String type,
      required final Map<String, String> credentials,
      required final Map<String, dynamic> settings,
      required final Map<String, bool> features,
      required final bool isActive,
      final Map<String, dynamic>? metadata}) = _$IntegrationConfigImpl;

  factory _IntegrationConfig.fromJson(Map<String, dynamic> json) =
      _$IntegrationConfigImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  Map<String, String> get credentials;
  @override
  Map<String, dynamic> get settings;
  @override
  Map<String, bool> get features;
  @override
  bool get isActive;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$IntegrationConfigImplCopyWith<_$IntegrationConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IoTDevice _$IoTDeviceFromJson(Map<String, dynamic> json) {
  return _IoTDevice.fromJson(json);
}

/// @nodoc
mixin _$IoTDevice {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get firmwareVersion => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  DateTime get lastSeen => throw _privateConstructorUsedError;
  IoTFeatures get features => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  Map<String, dynamic> get status => throw _privateConstructorUsedError;
  Map<String, dynamic>? get telemetry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoTDeviceCopyWith<IoTDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoTDeviceCopyWith<$Res> {
  factory $IoTDeviceCopyWith(IoTDevice value, $Res Function(IoTDevice) then) =
      _$IoTDeviceCopyWithImpl<$Res, IoTDevice>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      String manufacturer,
      String model,
      String firmwareVersion,
      bool isOnline,
      DateTime lastSeen,
      IoTFeatures features,
      Map<String, dynamic> configuration,
      Map<String, dynamic> status,
      Map<String, dynamic>? telemetry});

  $IoTFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class _$IoTDeviceCopyWithImpl<$Res, $Val extends IoTDevice>
    implements $IoTDeviceCopyWith<$Res> {
  _$IoTDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? manufacturer = null,
    Object? model = null,
    Object? firmwareVersion = null,
    Object? isOnline = null,
    Object? lastSeen = null,
    Object? features = null,
    Object? configuration = null,
    Object? status = null,
    Object? telemetry = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      firmwareVersion: null == firmwareVersion
          ? _value.firmwareVersion
          : firmwareVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as IoTFeatures,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      telemetry: freezed == telemetry
          ? _value.telemetry
          : telemetry // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IoTFeaturesCopyWith<$Res> get features {
    return $IoTFeaturesCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IoTDeviceImplCopyWith<$Res>
    implements $IoTDeviceCopyWith<$Res> {
  factory _$$IoTDeviceImplCopyWith(
          _$IoTDeviceImpl value, $Res Function(_$IoTDeviceImpl) then) =
      __$$IoTDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      String manufacturer,
      String model,
      String firmwareVersion,
      bool isOnline,
      DateTime lastSeen,
      IoTFeatures features,
      Map<String, dynamic> configuration,
      Map<String, dynamic> status,
      Map<String, dynamic>? telemetry});

  @override
  $IoTFeaturesCopyWith<$Res> get features;
}

/// @nodoc
class __$$IoTDeviceImplCopyWithImpl<$Res>
    extends _$IoTDeviceCopyWithImpl<$Res, _$IoTDeviceImpl>
    implements _$$IoTDeviceImplCopyWith<$Res> {
  __$$IoTDeviceImplCopyWithImpl(
      _$IoTDeviceImpl _value, $Res Function(_$IoTDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? manufacturer = null,
    Object? model = null,
    Object? firmwareVersion = null,
    Object? isOnline = null,
    Object? lastSeen = null,
    Object? features = null,
    Object? configuration = null,
    Object? status = null,
    Object? telemetry = freezed,
  }) {
    return _then(_$IoTDeviceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      firmwareVersion: null == firmwareVersion
          ? _value.firmwareVersion
          : firmwareVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as IoTFeatures,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      telemetry: freezed == telemetry
          ? _value._telemetry
          : telemetry // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IoTDeviceImpl implements _IoTDevice {
  const _$IoTDeviceImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.manufacturer,
      required this.model,
      required this.firmwareVersion,
      required this.isOnline,
      required this.lastSeen,
      required this.features,
      required final Map<String, dynamic> configuration,
      required final Map<String, dynamic> status,
      final Map<String, dynamic>? telemetry})
      : _configuration = configuration,
        _status = status,
        _telemetry = telemetry;

  factory _$IoTDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$IoTDeviceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String manufacturer;
  @override
  final String model;
  @override
  final String firmwareVersion;
  @override
  final bool isOnline;
  @override
  final DateTime lastSeen;
  @override
  final IoTFeatures features;
  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  final Map<String, dynamic> _status;
  @override
  Map<String, dynamic> get status {
    if (_status is EqualUnmodifiableMapView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_status);
  }

  final Map<String, dynamic>? _telemetry;
  @override
  Map<String, dynamic>? get telemetry {
    final value = _telemetry;
    if (value == null) return null;
    if (_telemetry is EqualUnmodifiableMapView) return _telemetry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IoTDevice(id: $id, name: $name, type: $type, manufacturer: $manufacturer, model: $model, firmwareVersion: $firmwareVersion, isOnline: $isOnline, lastSeen: $lastSeen, features: $features, configuration: $configuration, status: $status, telemetry: $telemetry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IoTDeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.firmwareVersion, firmwareVersion) ||
                other.firmwareVersion == firmwareVersion) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.features, features) ||
                other.features == features) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            const DeepCollectionEquality()
                .equals(other._telemetry, _telemetry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      manufacturer,
      model,
      firmwareVersion,
      isOnline,
      lastSeen,
      features,
      const DeepCollectionEquality().hash(_configuration),
      const DeepCollectionEquality().hash(_status),
      const DeepCollectionEquality().hash(_telemetry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IoTDeviceImplCopyWith<_$IoTDeviceImpl> get copyWith =>
      __$$IoTDeviceImplCopyWithImpl<_$IoTDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IoTDeviceImplToJson(
      this,
    );
  }
}

abstract class _IoTDevice implements IoTDevice {
  const factory _IoTDevice(
      {required final String id,
      required final String name,
      required final String type,
      required final String manufacturer,
      required final String model,
      required final String firmwareVersion,
      required final bool isOnline,
      required final DateTime lastSeen,
      required final IoTFeatures features,
      required final Map<String, dynamic> configuration,
      required final Map<String, dynamic> status,
      final Map<String, dynamic>? telemetry}) = _$IoTDeviceImpl;

  factory _IoTDevice.fromJson(Map<String, dynamic> json) =
      _$IoTDeviceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get manufacturer;
  @override
  String get model;
  @override
  String get firmwareVersion;
  @override
  bool get isOnline;
  @override
  DateTime get lastSeen;
  @override
  IoTFeatures get features;
  @override
  Map<String, dynamic> get configuration;
  @override
  Map<String, dynamic> get status;
  @override
  Map<String, dynamic>? get telemetry;
  @override
  @JsonKey(ignore: true)
  _$$IoTDeviceImplCopyWith<_$IoTDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IoTFeatures _$IoTFeaturesFromJson(Map<String, dynamic> json) {
  return _IoTFeatures.fromJson(json);
}

/// @nodoc
mixin _$IoTFeatures {
  bool get sensors => throw _privateConstructorUsedError;
  bool get actuators => throw _privateConstructorUsedError;
  bool get telemetry => throw _privateConstructorUsedError;
  bool get automation => throw _privateConstructorUsedError;
  bool get firmware => throw _privateConstructorUsedError;
  bool get remote => throw _privateConstructorUsedError;
  List<String> get protocols => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoTFeaturesCopyWith<IoTFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoTFeaturesCopyWith<$Res> {
  factory $IoTFeaturesCopyWith(
          IoTFeatures value, $Res Function(IoTFeatures) then) =
      _$IoTFeaturesCopyWithImpl<$Res, IoTFeatures>;
  @useResult
  $Res call(
      {bool sensors,
      bool actuators,
      bool telemetry,
      bool automation,
      bool firmware,
      bool remote,
      List<String> protocols});
}

/// @nodoc
class _$IoTFeaturesCopyWithImpl<$Res, $Val extends IoTFeatures>
    implements $IoTFeaturesCopyWith<$Res> {
  _$IoTFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensors = null,
    Object? actuators = null,
    Object? telemetry = null,
    Object? automation = null,
    Object? firmware = null,
    Object? remote = null,
    Object? protocols = null,
  }) {
    return _then(_value.copyWith(
      sensors: null == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as bool,
      actuators: null == actuators
          ? _value.actuators
          : actuators // ignore: cast_nullable_to_non_nullable
              as bool,
      telemetry: null == telemetry
          ? _value.telemetry
          : telemetry // ignore: cast_nullable_to_non_nullable
              as bool,
      automation: null == automation
          ? _value.automation
          : automation // ignore: cast_nullable_to_non_nullable
              as bool,
      firmware: null == firmware
          ? _value.firmware
          : firmware // ignore: cast_nullable_to_non_nullable
              as bool,
      remote: null == remote
          ? _value.remote
          : remote // ignore: cast_nullable_to_non_nullable
              as bool,
      protocols: null == protocols
          ? _value.protocols
          : protocols // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IoTFeaturesImplCopyWith<$Res>
    implements $IoTFeaturesCopyWith<$Res> {
  factory _$$IoTFeaturesImplCopyWith(
          _$IoTFeaturesImpl value, $Res Function(_$IoTFeaturesImpl) then) =
      __$$IoTFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool sensors,
      bool actuators,
      bool telemetry,
      bool automation,
      bool firmware,
      bool remote,
      List<String> protocols});
}

/// @nodoc
class __$$IoTFeaturesImplCopyWithImpl<$Res>
    extends _$IoTFeaturesCopyWithImpl<$Res, _$IoTFeaturesImpl>
    implements _$$IoTFeaturesImplCopyWith<$Res> {
  __$$IoTFeaturesImplCopyWithImpl(
      _$IoTFeaturesImpl _value, $Res Function(_$IoTFeaturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensors = null,
    Object? actuators = null,
    Object? telemetry = null,
    Object? automation = null,
    Object? firmware = null,
    Object? remote = null,
    Object? protocols = null,
  }) {
    return _then(_$IoTFeaturesImpl(
      sensors: null == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as bool,
      actuators: null == actuators
          ? _value.actuators
          : actuators // ignore: cast_nullable_to_non_nullable
              as bool,
      telemetry: null == telemetry
          ? _value.telemetry
          : telemetry // ignore: cast_nullable_to_non_nullable
              as bool,
      automation: null == automation
          ? _value.automation
          : automation // ignore: cast_nullable_to_non_nullable
              as bool,
      firmware: null == firmware
          ? _value.firmware
          : firmware // ignore: cast_nullable_to_non_nullable
              as bool,
      remote: null == remote
          ? _value.remote
          : remote // ignore: cast_nullable_to_non_nullable
              as bool,
      protocols: null == protocols
          ? _value._protocols
          : protocols // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IoTFeaturesImpl implements _IoTFeatures {
  const _$IoTFeaturesImpl(
      {required this.sensors,
      required this.actuators,
      required this.telemetry,
      required this.automation,
      required this.firmware,
      required this.remote,
      required final List<String> protocols})
      : _protocols = protocols;

  factory _$IoTFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$IoTFeaturesImplFromJson(json);

  @override
  final bool sensors;
  @override
  final bool actuators;
  @override
  final bool telemetry;
  @override
  final bool automation;
  @override
  final bool firmware;
  @override
  final bool remote;
  final List<String> _protocols;
  @override
  List<String> get protocols {
    if (_protocols is EqualUnmodifiableListView) return _protocols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_protocols);
  }

  @override
  String toString() {
    return 'IoTFeatures(sensors: $sensors, actuators: $actuators, telemetry: $telemetry, automation: $automation, firmware: $firmware, remote: $remote, protocols: $protocols)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IoTFeaturesImpl &&
            (identical(other.sensors, sensors) || other.sensors == sensors) &&
            (identical(other.actuators, actuators) ||
                other.actuators == actuators) &&
            (identical(other.telemetry, telemetry) ||
                other.telemetry == telemetry) &&
            (identical(other.automation, automation) ||
                other.automation == automation) &&
            (identical(other.firmware, firmware) ||
                other.firmware == firmware) &&
            (identical(other.remote, remote) || other.remote == remote) &&
            const DeepCollectionEquality()
                .equals(other._protocols, _protocols));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sensors,
      actuators,
      telemetry,
      automation,
      firmware,
      remote,
      const DeepCollectionEquality().hash(_protocols));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IoTFeaturesImplCopyWith<_$IoTFeaturesImpl> get copyWith =>
      __$$IoTFeaturesImplCopyWithImpl<_$IoTFeaturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IoTFeaturesImplToJson(
      this,
    );
  }
}

abstract class _IoTFeatures implements IoTFeatures {
  const factory _IoTFeatures(
      {required final bool sensors,
      required final bool actuators,
      required final bool telemetry,
      required final bool automation,
      required final bool firmware,
      required final bool remote,
      required final List<String> protocols}) = _$IoTFeaturesImpl;

  factory _IoTFeatures.fromJson(Map<String, dynamic> json) =
      _$IoTFeaturesImpl.fromJson;

  @override
  bool get sensors;
  @override
  bool get actuators;
  @override
  bool get telemetry;
  @override
  bool get automation;
  @override
  bool get firmware;
  @override
  bool get remote;
  @override
  List<String> get protocols;
  @override
  @JsonKey(ignore: true)
  _$$IoTFeaturesImplCopyWith<_$IoTFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IoTSensor _$IoTSensorFromJson(Map<String, dynamic> json) {
  return _IoTSensor.fromJson(json);
}

/// @nodoc
mixin _$IoTSensor {
  String get id => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoTSensorCopyWith<IoTSensor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoTSensorCopyWith<$Res> {
  factory $IoTSensorCopyWith(IoTSensor value, $Res Function(IoTSensor) then) =
      _$IoTSensorCopyWithImpl<$Res, IoTSensor>;
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String type,
      String unit,
      double value,
      DateTime timestamp,
      bool isActive,
      Map<String, dynamic> configuration,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IoTSensorCopyWithImpl<$Res, $Val extends IoTSensor>
    implements $IoTSensorCopyWith<$Res> {
  _$IoTSensorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? type = null,
    Object? unit = null,
    Object? value = null,
    Object? timestamp = null,
    Object? isActive = null,
    Object? configuration = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IoTSensorImplCopyWith<$Res>
    implements $IoTSensorCopyWith<$Res> {
  factory _$$IoTSensorImplCopyWith(
          _$IoTSensorImpl value, $Res Function(_$IoTSensorImpl) then) =
      __$$IoTSensorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String type,
      String unit,
      double value,
      DateTime timestamp,
      bool isActive,
      Map<String, dynamic> configuration,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$IoTSensorImplCopyWithImpl<$Res>
    extends _$IoTSensorCopyWithImpl<$Res, _$IoTSensorImpl>
    implements _$$IoTSensorImplCopyWith<$Res> {
  __$$IoTSensorImplCopyWithImpl(
      _$IoTSensorImpl _value, $Res Function(_$IoTSensorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? type = null,
    Object? unit = null,
    Object? value = null,
    Object? timestamp = null,
    Object? isActive = null,
    Object? configuration = null,
    Object? metadata = freezed,
  }) {
    return _then(_$IoTSensorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IoTSensorImpl implements _IoTSensor {
  const _$IoTSensorImpl(
      {required this.id,
      required this.deviceId,
      required this.type,
      required this.unit,
      required this.value,
      required this.timestamp,
      required this.isActive,
      required final Map<String, dynamic> configuration,
      final Map<String, dynamic>? metadata})
      : _configuration = configuration,
        _metadata = metadata;

  factory _$IoTSensorImpl.fromJson(Map<String, dynamic> json) =>
      _$$IoTSensorImplFromJson(json);

  @override
  final String id;
  @override
  final String deviceId;
  @override
  final String type;
  @override
  final String unit;
  @override
  final double value;
  @override
  final DateTime timestamp;
  @override
  final bool isActive;
  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IoTSensor(id: $id, deviceId: $deviceId, type: $type, unit: $unit, value: $value, timestamp: $timestamp, isActive: $isActive, configuration: $configuration, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IoTSensorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      deviceId,
      type,
      unit,
      value,
      timestamp,
      isActive,
      const DeepCollectionEquality().hash(_configuration),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IoTSensorImplCopyWith<_$IoTSensorImpl> get copyWith =>
      __$$IoTSensorImplCopyWithImpl<_$IoTSensorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IoTSensorImplToJson(
      this,
    );
  }
}

abstract class _IoTSensor implements IoTSensor {
  const factory _IoTSensor(
      {required final String id,
      required final String deviceId,
      required final String type,
      required final String unit,
      required final double value,
      required final DateTime timestamp,
      required final bool isActive,
      required final Map<String, dynamic> configuration,
      final Map<String, dynamic>? metadata}) = _$IoTSensorImpl;

  factory _IoTSensor.fromJson(Map<String, dynamic> json) =
      _$IoTSensorImpl.fromJson;

  @override
  String get id;
  @override
  String get deviceId;
  @override
  String get type;
  @override
  String get unit;
  @override
  double get value;
  @override
  DateTime get timestamp;
  @override
  bool get isActive;
  @override
  Map<String, dynamic> get configuration;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$IoTSensorImplCopyWith<_$IoTSensorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IoTAutomation _$IoTAutomationFromJson(Map<String, dynamic> json) {
  return _IoTAutomation.fromJson(json);
}

/// @nodoc
mixin _$IoTAutomation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get trigger => throw _privateConstructorUsedError;
  Map<String, dynamic> get conditions => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get actions => throw _privateConstructorUsedError;
  DateTime get lastTriggered => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  Map<String, dynamic>? get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoTAutomationCopyWith<IoTAutomation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoTAutomationCopyWith<$Res> {
  factory $IoTAutomationCopyWith(
          IoTAutomation value, $Res Function(IoTAutomation) then) =
      _$IoTAutomationCopyWithImpl<$Res, IoTAutomation>;
  @useResult
  $Res call(
      {String id,
      String name,
      bool isActive,
      String trigger,
      Map<String, dynamic> conditions,
      List<Map<String, dynamic>> actions,
      DateTime lastTriggered,
      Map<String, dynamic> configuration,
      Map<String, dynamic>? history});
}

/// @nodoc
class _$IoTAutomationCopyWithImpl<$Res, $Val extends IoTAutomation>
    implements $IoTAutomationCopyWith<$Res> {
  _$IoTAutomationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isActive = null,
    Object? trigger = null,
    Object? conditions = null,
    Object? actions = null,
    Object? lastTriggered = null,
    Object? configuration = null,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      lastTriggered: null == lastTriggered
          ? _value.lastTriggered
          : lastTriggered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IoTAutomationImplCopyWith<$Res>
    implements $IoTAutomationCopyWith<$Res> {
  factory _$$IoTAutomationImplCopyWith(
          _$IoTAutomationImpl value, $Res Function(_$IoTAutomationImpl) then) =
      __$$IoTAutomationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool isActive,
      String trigger,
      Map<String, dynamic> conditions,
      List<Map<String, dynamic>> actions,
      DateTime lastTriggered,
      Map<String, dynamic> configuration,
      Map<String, dynamic>? history});
}

/// @nodoc
class __$$IoTAutomationImplCopyWithImpl<$Res>
    extends _$IoTAutomationCopyWithImpl<$Res, _$IoTAutomationImpl>
    implements _$$IoTAutomationImplCopyWith<$Res> {
  __$$IoTAutomationImplCopyWithImpl(
      _$IoTAutomationImpl _value, $Res Function(_$IoTAutomationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isActive = null,
    Object? trigger = null,
    Object? conditions = null,
    Object? actions = null,
    Object? lastTriggered = null,
    Object? configuration = null,
    Object? history = freezed,
  }) {
    return _then(_$IoTAutomationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      lastTriggered: null == lastTriggered
          ? _value.lastTriggered
          : lastTriggered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IoTAutomationImpl implements _IoTAutomation {
  const _$IoTAutomationImpl(
      {required this.id,
      required this.name,
      required this.isActive,
      required this.trigger,
      required final Map<String, dynamic> conditions,
      required final List<Map<String, dynamic>> actions,
      required this.lastTriggered,
      required final Map<String, dynamic> configuration,
      final Map<String, dynamic>? history})
      : _conditions = conditions,
        _actions = actions,
        _configuration = configuration,
        _history = history;

  factory _$IoTAutomationImpl.fromJson(Map<String, dynamic> json) =>
      _$$IoTAutomationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isActive;
  @override
  final String trigger;
  final Map<String, dynamic> _conditions;
  @override
  Map<String, dynamic> get conditions {
    if (_conditions is EqualUnmodifiableMapView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conditions);
  }

  final List<Map<String, dynamic>> _actions;
  @override
  List<Map<String, dynamic>> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  final DateTime lastTriggered;
  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  final Map<String, dynamic>? _history;
  @override
  Map<String, dynamic>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableMapView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IoTAutomation(id: $id, name: $name, isActive: $isActive, trigger: $trigger, conditions: $conditions, actions: $actions, lastTriggered: $lastTriggered, configuration: $configuration, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IoTAutomationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.trigger, trigger) || other.trigger == trigger) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.lastTriggered, lastTriggered) ||
                other.lastTriggered == lastTriggered) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isActive,
      trigger,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_actions),
      lastTriggered,
      const DeepCollectionEquality().hash(_configuration),
      const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IoTAutomationImplCopyWith<_$IoTAutomationImpl> get copyWith =>
      __$$IoTAutomationImplCopyWithImpl<_$IoTAutomationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IoTAutomationImplToJson(
      this,
    );
  }
}

abstract class _IoTAutomation implements IoTAutomation {
  const factory _IoTAutomation(
      {required final String id,
      required final String name,
      required final bool isActive,
      required final String trigger,
      required final Map<String, dynamic> conditions,
      required final List<Map<String, dynamic>> actions,
      required final DateTime lastTriggered,
      required final Map<String, dynamic> configuration,
      final Map<String, dynamic>? history}) = _$IoTAutomationImpl;

  factory _IoTAutomation.fromJson(Map<String, dynamic> json) =
      _$IoTAutomationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isActive;
  @override
  String get trigger;
  @override
  Map<String, dynamic> get conditions;
  @override
  List<Map<String, dynamic>> get actions;
  @override
  DateTime get lastTriggered;
  @override
  Map<String, dynamic> get configuration;
  @override
  Map<String, dynamic>? get history;
  @override
  @JsonKey(ignore: true)
  _$$IoTAutomationImplCopyWith<_$IoTAutomationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IoTNetwork _$IoTNetworkFromJson(Map<String, dynamic> json) {
  return _IoTNetwork.fromJson(json);
}

/// @nodoc
mixin _$IoTNetwork {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<String> get devices => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  Map<String, dynamic> get security => throw _privateConstructorUsedError;
  Map<String, dynamic>? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoTNetworkCopyWith<IoTNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoTNetworkCopyWith<$Res> {
  factory $IoTNetworkCopyWith(
          IoTNetwork value, $Res Function(IoTNetwork) then) =
      _$IoTNetworkCopyWithImpl<$Res, IoTNetwork>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      bool isActive,
      List<String> devices,
      Map<String, dynamic> configuration,
      Map<String, dynamic> security,
      Map<String, dynamic>? status});
}

/// @nodoc
class _$IoTNetworkCopyWithImpl<$Res, $Val extends IoTNetwork>
    implements $IoTNetworkCopyWith<$Res> {
  _$IoTNetworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? isActive = null,
    Object? devices = null,
    Object? configuration = null,
    Object? security = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IoTNetworkImplCopyWith<$Res>
    implements $IoTNetworkCopyWith<$Res> {
  factory _$$IoTNetworkImplCopyWith(
          _$IoTNetworkImpl value, $Res Function(_$IoTNetworkImpl) then) =
      __$$IoTNetworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      bool isActive,
      List<String> devices,
      Map<String, dynamic> configuration,
      Map<String, dynamic> security,
      Map<String, dynamic>? status});
}

/// @nodoc
class __$$IoTNetworkImplCopyWithImpl<$Res>
    extends _$IoTNetworkCopyWithImpl<$Res, _$IoTNetworkImpl>
    implements _$$IoTNetworkImplCopyWith<$Res> {
  __$$IoTNetworkImplCopyWithImpl(
      _$IoTNetworkImpl _value, $Res Function(_$IoTNetworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? isActive = null,
    Object? devices = null,
    Object? configuration = null,
    Object? security = null,
    Object? status = freezed,
  }) {
    return _then(_$IoTNetworkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      security: null == security
          ? _value._security
          : security // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: freezed == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IoTNetworkImpl implements _IoTNetwork {
  const _$IoTNetworkImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.isActive,
      required final List<String> devices,
      required final Map<String, dynamic> configuration,
      required final Map<String, dynamic> security,
      final Map<String, dynamic>? status})
      : _devices = devices,
        _configuration = configuration,
        _security = security,
        _status = status;

  factory _$IoTNetworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$IoTNetworkImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final bool isActive;
  final List<String> _devices;
  @override
  List<String> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  final Map<String, dynamic> _security;
  @override
  Map<String, dynamic> get security {
    if (_security is EqualUnmodifiableMapView) return _security;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_security);
  }

  final Map<String, dynamic>? _status;
  @override
  Map<String, dynamic>? get status {
    final value = _status;
    if (value == null) return null;
    if (_status is EqualUnmodifiableMapView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IoTNetwork(id: $id, name: $name, type: $type, isActive: $isActive, devices: $devices, configuration: $configuration, security: $security, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IoTNetworkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            const DeepCollectionEquality().equals(other._security, _security) &&
            const DeepCollectionEquality().equals(other._status, _status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      isActive,
      const DeepCollectionEquality().hash(_devices),
      const DeepCollectionEquality().hash(_configuration),
      const DeepCollectionEquality().hash(_security),
      const DeepCollectionEquality().hash(_status));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IoTNetworkImplCopyWith<_$IoTNetworkImpl> get copyWith =>
      __$$IoTNetworkImplCopyWithImpl<_$IoTNetworkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IoTNetworkImplToJson(
      this,
    );
  }
}

abstract class _IoTNetwork implements IoTNetwork {
  const factory _IoTNetwork(
      {required final String id,
      required final String name,
      required final String type,
      required final bool isActive,
      required final List<String> devices,
      required final Map<String, dynamic> configuration,
      required final Map<String, dynamic> security,
      final Map<String, dynamic>? status}) = _$IoTNetworkImpl;

  factory _IoTNetwork.fromJson(Map<String, dynamic> json) =
      _$IoTNetworkImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  bool get isActive;
  @override
  List<String> get devices;
  @override
  Map<String, dynamic> get configuration;
  @override
  Map<String, dynamic> get security;
  @override
  Map<String, dynamic>? get status;
  @override
  @JsonKey(ignore: true)
  _$$IoTNetworkImplCopyWith<_$IoTNetworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IoTTelemetry _$IoTTelemetryFromJson(Map<String, dynamic> json) {
  return _IoTTelemetry.fromJson(json);
}

/// @nodoc
mixin _$IoTTelemetry {
  String get deviceId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, double> get metrics => throw _privateConstructorUsedError;
  Map<String, String> get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get diagnostics => throw _privateConstructorUsedError;
  Map<String, dynamic>? get alerts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoTTelemetryCopyWith<IoTTelemetry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoTTelemetryCopyWith<$Res> {
  factory $IoTTelemetryCopyWith(
          IoTTelemetry value, $Res Function(IoTTelemetry) then) =
      _$IoTTelemetryCopyWithImpl<$Res, IoTTelemetry>;
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      Map<String, double> metrics,
      Map<String, String> status,
      Map<String, dynamic> diagnostics,
      Map<String, dynamic>? alerts});
}

/// @nodoc
class _$IoTTelemetryCopyWithImpl<$Res, $Val extends IoTTelemetry>
    implements $IoTTelemetryCopyWith<$Res> {
  _$IoTTelemetryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? metrics = null,
    Object? status = null,
    Object? diagnostics = null,
    Object? alerts = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      diagnostics: null == diagnostics
          ? _value.diagnostics
          : diagnostics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      alerts: freezed == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IoTTelemetryImplCopyWith<$Res>
    implements $IoTTelemetryCopyWith<$Res> {
  factory _$$IoTTelemetryImplCopyWith(
          _$IoTTelemetryImpl value, $Res Function(_$IoTTelemetryImpl) then) =
      __$$IoTTelemetryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      Map<String, double> metrics,
      Map<String, String> status,
      Map<String, dynamic> diagnostics,
      Map<String, dynamic>? alerts});
}

/// @nodoc
class __$$IoTTelemetryImplCopyWithImpl<$Res>
    extends _$IoTTelemetryCopyWithImpl<$Res, _$IoTTelemetryImpl>
    implements _$$IoTTelemetryImplCopyWith<$Res> {
  __$$IoTTelemetryImplCopyWithImpl(
      _$IoTTelemetryImpl _value, $Res Function(_$IoTTelemetryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? metrics = null,
    Object? status = null,
    Object? diagnostics = null,
    Object? alerts = freezed,
  }) {
    return _then(_$IoTTelemetryImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metrics: null == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      status: null == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      diagnostics: null == diagnostics
          ? _value._diagnostics
          : diagnostics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      alerts: freezed == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IoTTelemetryImpl implements _IoTTelemetry {
  const _$IoTTelemetryImpl(
      {required this.deviceId,
      required this.timestamp,
      required final Map<String, double> metrics,
      required final Map<String, String> status,
      required final Map<String, dynamic> diagnostics,
      final Map<String, dynamic>? alerts})
      : _metrics = metrics,
        _status = status,
        _diagnostics = diagnostics,
        _alerts = alerts;

  factory _$IoTTelemetryImpl.fromJson(Map<String, dynamic> json) =>
      _$$IoTTelemetryImplFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime timestamp;
  final Map<String, double> _metrics;
  @override
  Map<String, double> get metrics {
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metrics);
  }

  final Map<String, String> _status;
  @override
  Map<String, String> get status {
    if (_status is EqualUnmodifiableMapView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_status);
  }

  final Map<String, dynamic> _diagnostics;
  @override
  Map<String, dynamic> get diagnostics {
    if (_diagnostics is EqualUnmodifiableMapView) return _diagnostics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_diagnostics);
  }

  final Map<String, dynamic>? _alerts;
  @override
  Map<String, dynamic>? get alerts {
    final value = _alerts;
    if (value == null) return null;
    if (_alerts is EqualUnmodifiableMapView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IoTTelemetry(deviceId: $deviceId, timestamp: $timestamp, metrics: $metrics, status: $status, diagnostics: $diagnostics, alerts: $alerts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IoTTelemetryImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            const DeepCollectionEquality()
                .equals(other._diagnostics, _diagnostics) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceId,
      timestamp,
      const DeepCollectionEquality().hash(_metrics),
      const DeepCollectionEquality().hash(_status),
      const DeepCollectionEquality().hash(_diagnostics),
      const DeepCollectionEquality().hash(_alerts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IoTTelemetryImplCopyWith<_$IoTTelemetryImpl> get copyWith =>
      __$$IoTTelemetryImplCopyWithImpl<_$IoTTelemetryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IoTTelemetryImplToJson(
      this,
    );
  }
}

abstract class _IoTTelemetry implements IoTTelemetry {
  const factory _IoTTelemetry(
      {required final String deviceId,
      required final DateTime timestamp,
      required final Map<String, double> metrics,
      required final Map<String, String> status,
      required final Map<String, dynamic> diagnostics,
      final Map<String, dynamic>? alerts}) = _$IoTTelemetryImpl;

  factory _IoTTelemetry.fromJson(Map<String, dynamic> json) =
      _$IoTTelemetryImpl.fromJson;

  @override
  String get deviceId;
  @override
  DateTime get timestamp;
  @override
  Map<String, double> get metrics;
  @override
  Map<String, String> get status;
  @override
  Map<String, dynamic> get diagnostics;
  @override
  Map<String, dynamic>? get alerts;
  @override
  @JsonKey(ignore: true)
  _$$IoTTelemetryImplCopyWith<_$IoTTelemetryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IoTFirmware _$IoTFirmwareFromJson(Map<String, dynamic> json) {
  return _IoTFirmware.fromJson(json);
}

/// @nodoc
mixin _$IoTFirmware {
  String get version => throw _privateConstructorUsedError;
  String get deviceType => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get checksum => throw _privateConstructorUsedError;
  DateTime get releaseDate => throw _privateConstructorUsedError;
  List<String> get changes => throw _privateConstructorUsedError;
  Map<String, dynamic> get compatibility => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoTFirmwareCopyWith<IoTFirmware> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoTFirmwareCopyWith<$Res> {
  factory $IoTFirmwareCopyWith(
          IoTFirmware value, $Res Function(IoTFirmware) then) =
      _$IoTFirmwareCopyWithImpl<$Res, IoTFirmware>;
  @useResult
  $Res call(
      {String version,
      String deviceType,
      String url,
      String checksum,
      DateTime releaseDate,
      List<String> changes,
      Map<String, dynamic> compatibility,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IoTFirmwareCopyWithImpl<$Res, $Val extends IoTFirmware>
    implements $IoTFirmwareCopyWith<$Res> {
  _$IoTFirmwareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? deviceType = null,
    Object? url = null,
    Object? checksum = null,
    Object? releaseDate = null,
    Object? changes = null,
    Object? compatibility = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      checksum: null == checksum
          ? _value.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changes: null == changes
          ? _value.changes
          : changes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      compatibility: null == compatibility
          ? _value.compatibility
          : compatibility // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IoTFirmwareImplCopyWith<$Res>
    implements $IoTFirmwareCopyWith<$Res> {
  factory _$$IoTFirmwareImplCopyWith(
          _$IoTFirmwareImpl value, $Res Function(_$IoTFirmwareImpl) then) =
      __$$IoTFirmwareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      String deviceType,
      String url,
      String checksum,
      DateTime releaseDate,
      List<String> changes,
      Map<String, dynamic> compatibility,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$IoTFirmwareImplCopyWithImpl<$Res>
    extends _$IoTFirmwareCopyWithImpl<$Res, _$IoTFirmwareImpl>
    implements _$$IoTFirmwareImplCopyWith<$Res> {
  __$$IoTFirmwareImplCopyWithImpl(
      _$IoTFirmwareImpl _value, $Res Function(_$IoTFirmwareImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? deviceType = null,
    Object? url = null,
    Object? checksum = null,
    Object? releaseDate = null,
    Object? changes = null,
    Object? compatibility = null,
    Object? metadata = freezed,
  }) {
    return _then(_$IoTFirmwareImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      checksum: null == checksum
          ? _value.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changes: null == changes
          ? _value._changes
          : changes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      compatibility: null == compatibility
          ? _value._compatibility
          : compatibility // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IoTFirmwareImpl implements _IoTFirmware {
  const _$IoTFirmwareImpl(
      {required this.version,
      required this.deviceType,
      required this.url,
      required this.checksum,
      required this.releaseDate,
      required final List<String> changes,
      required final Map<String, dynamic> compatibility,
      final Map<String, dynamic>? metadata})
      : _changes = changes,
        _compatibility = compatibility,
        _metadata = metadata;

  factory _$IoTFirmwareImpl.fromJson(Map<String, dynamic> json) =>
      _$$IoTFirmwareImplFromJson(json);

  @override
  final String version;
  @override
  final String deviceType;
  @override
  final String url;
  @override
  final String checksum;
  @override
  final DateTime releaseDate;
  final List<String> _changes;
  @override
  List<String> get changes {
    if (_changes is EqualUnmodifiableListView) return _changes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changes);
  }

  final Map<String, dynamic> _compatibility;
  @override
  Map<String, dynamic> get compatibility {
    if (_compatibility is EqualUnmodifiableMapView) return _compatibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_compatibility);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IoTFirmware(version: $version, deviceType: $deviceType, url: $url, checksum: $checksum, releaseDate: $releaseDate, changes: $changes, compatibility: $compatibility, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IoTFirmwareImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.checksum, checksum) ||
                other.checksum == checksum) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality().equals(other._changes, _changes) &&
            const DeepCollectionEquality()
                .equals(other._compatibility, _compatibility) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      deviceType,
      url,
      checksum,
      releaseDate,
      const DeepCollectionEquality().hash(_changes),
      const DeepCollectionEquality().hash(_compatibility),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IoTFirmwareImplCopyWith<_$IoTFirmwareImpl> get copyWith =>
      __$$IoTFirmwareImplCopyWithImpl<_$IoTFirmwareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IoTFirmwareImplToJson(
      this,
    );
  }
}

abstract class _IoTFirmware implements IoTFirmware {
  const factory _IoTFirmware(
      {required final String version,
      required final String deviceType,
      required final String url,
      required final String checksum,
      required final DateTime releaseDate,
      required final List<String> changes,
      required final Map<String, dynamic> compatibility,
      final Map<String, dynamic>? metadata}) = _$IoTFirmwareImpl;

  factory _IoTFirmware.fromJson(Map<String, dynamic> json) =
      _$IoTFirmwareImpl.fromJson;

  @override
  String get version;
  @override
  String get deviceType;
  @override
  String get url;
  @override
  String get checksum;
  @override
  DateTime get releaseDate;
  @override
  List<String> get changes;
  @override
  Map<String, dynamic> get compatibility;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$IoTFirmwareImplCopyWith<_$IoTFirmwareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialProfile _$SocialProfileFromJson(Map<String, dynamic> json) {
  return _SocialProfile.fromJson(json);
}

/// @nodoc
mixin _$SocialProfile {
  String get id => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get platformUserId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get profileUrl => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  DateTime get lastSync => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialProfileCopyWith<SocialProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialProfileCopyWith<$Res> {
  factory $SocialProfileCopyWith(
          SocialProfile value, $Res Function(SocialProfile) then) =
      _$SocialProfileCopyWithImpl<$Res, SocialProfile>;
  @useResult
  $Res call(
      {String id,
      String platform,
      String platformUserId,
      String username,
      String displayName,
      String? profileUrl,
      String? avatarUrl,
      Map<String, dynamic> metadata,
      bool isVerified,
      DateTime lastSync,
      Map<String, dynamic>? settings});
}

/// @nodoc
class _$SocialProfileCopyWithImpl<$Res, $Val extends SocialProfile>
    implements $SocialProfileCopyWith<$Res> {
  _$SocialProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? platformUserId = null,
    Object? username = null,
    Object? displayName = null,
    Object? profileUrl = freezed,
    Object? avatarUrl = freezed,
    Object? metadata = null,
    Object? isVerified = null,
    Object? lastSync = null,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      platformUserId: null == platformUserId
          ? _value.platformUserId
          : platformUserId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSync: null == lastSync
          ? _value.lastSync
          : lastSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialProfileImplCopyWith<$Res>
    implements $SocialProfileCopyWith<$Res> {
  factory _$$SocialProfileImplCopyWith(
          _$SocialProfileImpl value, $Res Function(_$SocialProfileImpl) then) =
      __$$SocialProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String platform,
      String platformUserId,
      String username,
      String displayName,
      String? profileUrl,
      String? avatarUrl,
      Map<String, dynamic> metadata,
      bool isVerified,
      DateTime lastSync,
      Map<String, dynamic>? settings});
}

/// @nodoc
class __$$SocialProfileImplCopyWithImpl<$Res>
    extends _$SocialProfileCopyWithImpl<$Res, _$SocialProfileImpl>
    implements _$$SocialProfileImplCopyWith<$Res> {
  __$$SocialProfileImplCopyWithImpl(
      _$SocialProfileImpl _value, $Res Function(_$SocialProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? platformUserId = null,
    Object? username = null,
    Object? displayName = null,
    Object? profileUrl = freezed,
    Object? avatarUrl = freezed,
    Object? metadata = null,
    Object? isVerified = null,
    Object? lastSync = null,
    Object? settings = freezed,
  }) {
    return _then(_$SocialProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      platformUserId: null == platformUserId
          ? _value.platformUserId
          : platformUserId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSync: null == lastSync
          ? _value.lastSync
          : lastSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialProfileImpl implements _SocialProfile {
  const _$SocialProfileImpl(
      {required this.id,
      required this.platform,
      required this.platformUserId,
      required this.username,
      required this.displayName,
      required this.profileUrl,
      required this.avatarUrl,
      required final Map<String, dynamic> metadata,
      required this.isVerified,
      required this.lastSync,
      final Map<String, dynamic>? settings})
      : _metadata = metadata,
        _settings = settings;

  factory _$SocialProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String platform;
  @override
  final String platformUserId;
  @override
  final String username;
  @override
  final String displayName;
  @override
  final String? profileUrl;
  @override
  final String? avatarUrl;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final bool isVerified;
  @override
  final DateTime lastSync;
  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocialProfile(id: $id, platform: $platform, platformUserId: $platformUserId, username: $username, displayName: $displayName, profileUrl: $profileUrl, avatarUrl: $avatarUrl, metadata: $metadata, isVerified: $isVerified, lastSync: $lastSync, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.platformUserId, platformUserId) ||
                other.platformUserId == platformUserId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.lastSync, lastSync) ||
                other.lastSync == lastSync) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      platform,
      platformUserId,
      username,
      displayName,
      profileUrl,
      avatarUrl,
      const DeepCollectionEquality().hash(_metadata),
      isVerified,
      lastSync,
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialProfileImplCopyWith<_$SocialProfileImpl> get copyWith =>
      __$$SocialProfileImplCopyWithImpl<_$SocialProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialProfileImplToJson(
      this,
    );
  }
}

abstract class _SocialProfile implements SocialProfile {
  const factory _SocialProfile(
      {required final String id,
      required final String platform,
      required final String platformUserId,
      required final String username,
      required final String displayName,
      required final String? profileUrl,
      required final String? avatarUrl,
      required final Map<String, dynamic> metadata,
      required final bool isVerified,
      required final DateTime lastSync,
      final Map<String, dynamic>? settings}) = _$SocialProfileImpl;

  factory _SocialProfile.fromJson(Map<String, dynamic> json) =
      _$SocialProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get platform;
  @override
  String get platformUserId;
  @override
  String get username;
  @override
  String get displayName;
  @override
  String? get profileUrl;
  @override
  String? get avatarUrl;
  @override
  Map<String, dynamic> get metadata;
  @override
  bool get isVerified;
  @override
  DateTime get lastSync;
  @override
  Map<String, dynamic>? get settings;
  @override
  @JsonKey(ignore: true)
  _$$SocialProfileImplCopyWith<_$SocialProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialConnection _$SocialConnectionFromJson(Map<String, dynamic> json) {
  return _SocialConnection.fromJson(json);
}

/// @nodoc
mixin _$SocialConnection {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get connectionId => throw _privateConstructorUsedError;
  String get connectionType => throw _privateConstructorUsedError;
  DateTime get connectedAt => throw _privateConstructorUsedError;
  bool get isMutual => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialConnectionCopyWith<SocialConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialConnectionCopyWith<$Res> {
  factory $SocialConnectionCopyWith(
          SocialConnection value, $Res Function(SocialConnection) then) =
      _$SocialConnectionCopyWithImpl<$Res, SocialConnection>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String connectionId,
      String connectionType,
      DateTime connectedAt,
      bool isMutual,
      Map<String, dynamic> metadata,
      Map<String, dynamic>? settings});
}

/// @nodoc
class _$SocialConnectionCopyWithImpl<$Res, $Val extends SocialConnection>
    implements $SocialConnectionCopyWith<$Res> {
  _$SocialConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? connectionId = null,
    Object? connectionType = null,
    Object? connectedAt = null,
    Object? isMutual = null,
    Object? metadata = null,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      connectionId: null == connectionId
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as String,
      connectionType: null == connectionType
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as String,
      connectedAt: null == connectedAt
          ? _value.connectedAt
          : connectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isMutual: null == isMutual
          ? _value.isMutual
          : isMutual // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialConnectionImplCopyWith<$Res>
    implements $SocialConnectionCopyWith<$Res> {
  factory _$$SocialConnectionImplCopyWith(_$SocialConnectionImpl value,
          $Res Function(_$SocialConnectionImpl) then) =
      __$$SocialConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String connectionId,
      String connectionType,
      DateTime connectedAt,
      bool isMutual,
      Map<String, dynamic> metadata,
      Map<String, dynamic>? settings});
}

/// @nodoc
class __$$SocialConnectionImplCopyWithImpl<$Res>
    extends _$SocialConnectionCopyWithImpl<$Res, _$SocialConnectionImpl>
    implements _$$SocialConnectionImplCopyWith<$Res> {
  __$$SocialConnectionImplCopyWithImpl(_$SocialConnectionImpl _value,
      $Res Function(_$SocialConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? connectionId = null,
    Object? connectionType = null,
    Object? connectedAt = null,
    Object? isMutual = null,
    Object? metadata = null,
    Object? settings = freezed,
  }) {
    return _then(_$SocialConnectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      connectionId: null == connectionId
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as String,
      connectionType: null == connectionType
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as String,
      connectedAt: null == connectedAt
          ? _value.connectedAt
          : connectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isMutual: null == isMutual
          ? _value.isMutual
          : isMutual // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialConnectionImpl implements _SocialConnection {
  const _$SocialConnectionImpl(
      {required this.id,
      required this.userId,
      required this.platform,
      required this.connectionId,
      required this.connectionType,
      required this.connectedAt,
      required this.isMutual,
      required final Map<String, dynamic> metadata,
      final Map<String, dynamic>? settings})
      : _metadata = metadata,
        _settings = settings;

  factory _$SocialConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialConnectionImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String platform;
  @override
  final String connectionId;
  @override
  final String connectionType;
  @override
  final DateTime connectedAt;
  @override
  final bool isMutual;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocialConnection(id: $id, userId: $userId, platform: $platform, connectionId: $connectionId, connectionType: $connectionType, connectedAt: $connectedAt, isMutual: $isMutual, metadata: $metadata, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialConnectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.connectionId, connectionId) ||
                other.connectionId == connectionId) &&
            (identical(other.connectionType, connectionType) ||
                other.connectionType == connectionType) &&
            (identical(other.connectedAt, connectedAt) ||
                other.connectedAt == connectedAt) &&
            (identical(other.isMutual, isMutual) ||
                other.isMutual == isMutual) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      platform,
      connectionId,
      connectionType,
      connectedAt,
      isMutual,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialConnectionImplCopyWith<_$SocialConnectionImpl> get copyWith =>
      __$$SocialConnectionImplCopyWithImpl<_$SocialConnectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialConnectionImplToJson(
      this,
    );
  }
}

abstract class _SocialConnection implements SocialConnection {
  const factory _SocialConnection(
      {required final String id,
      required final String userId,
      required final String platform,
      required final String connectionId,
      required final String connectionType,
      required final DateTime connectedAt,
      required final bool isMutual,
      required final Map<String, dynamic> metadata,
      final Map<String, dynamic>? settings}) = _$SocialConnectionImpl;

  factory _SocialConnection.fromJson(Map<String, dynamic> json) =
      _$SocialConnectionImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get platform;
  @override
  String get connectionId;
  @override
  String get connectionType;
  @override
  DateTime get connectedAt;
  @override
  bool get isMutual;
  @override
  Map<String, dynamic> get metadata;
  @override
  Map<String, dynamic>? get settings;
  @override
  @JsonKey(ignore: true)
  _$$SocialConnectionImplCopyWith<_$SocialConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialPost _$SocialPostFromJson(Map<String, dynamic> json) {
  return _SocialPost.fromJson(json);
}

/// @nodoc
mixin _$SocialPost {
  String get id => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get mediaUrls => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  DateTime get postedAt => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  Map<String, int> get engagement => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  Map<String, dynamic>? get crossPostData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialPostCopyWith<SocialPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialPostCopyWith<$Res> {
  factory $SocialPostCopyWith(
          SocialPost value, $Res Function(SocialPost) then) =
      _$SocialPostCopyWithImpl<$Res, SocialPost>;
  @useResult
  $Res call(
      {String id,
      String platform,
      String userId,
      String content,
      List<String> mediaUrls,
      Map<String, dynamic> metadata,
      DateTime postedAt,
      List<String> tags,
      Map<String, int> engagement,
      String visibility,
      Map<String, dynamic>? crossPostData});
}

/// @nodoc
class _$SocialPostCopyWithImpl<$Res, $Val extends SocialPost>
    implements $SocialPostCopyWith<$Res> {
  _$SocialPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? userId = null,
    Object? content = null,
    Object? mediaUrls = null,
    Object? metadata = null,
    Object? postedAt = null,
    Object? tags = null,
    Object? engagement = null,
    Object? visibility = null,
    Object? crossPostData = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: null == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postedAt: null == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      engagement: null == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      crossPostData: freezed == crossPostData
          ? _value.crossPostData
          : crossPostData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialPostImplCopyWith<$Res>
    implements $SocialPostCopyWith<$Res> {
  factory _$$SocialPostImplCopyWith(
          _$SocialPostImpl value, $Res Function(_$SocialPostImpl) then) =
      __$$SocialPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String platform,
      String userId,
      String content,
      List<String> mediaUrls,
      Map<String, dynamic> metadata,
      DateTime postedAt,
      List<String> tags,
      Map<String, int> engagement,
      String visibility,
      Map<String, dynamic>? crossPostData});
}

/// @nodoc
class __$$SocialPostImplCopyWithImpl<$Res>
    extends _$SocialPostCopyWithImpl<$Res, _$SocialPostImpl>
    implements _$$SocialPostImplCopyWith<$Res> {
  __$$SocialPostImplCopyWithImpl(
      _$SocialPostImpl _value, $Res Function(_$SocialPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? userId = null,
    Object? content = null,
    Object? mediaUrls = null,
    Object? metadata = null,
    Object? postedAt = null,
    Object? tags = null,
    Object? engagement = null,
    Object? visibility = null,
    Object? crossPostData = freezed,
  }) {
    return _then(_$SocialPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: null == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postedAt: null == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      engagement: null == engagement
          ? _value._engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      crossPostData: freezed == crossPostData
          ? _value._crossPostData
          : crossPostData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialPostImpl implements _SocialPost {
  const _$SocialPostImpl(
      {required this.id,
      required this.platform,
      required this.userId,
      required this.content,
      required final List<String> mediaUrls,
      required final Map<String, dynamic> metadata,
      required this.postedAt,
      required final List<String> tags,
      required final Map<String, int> engagement,
      required this.visibility,
      final Map<String, dynamic>? crossPostData})
      : _mediaUrls = mediaUrls,
        _metadata = metadata,
        _tags = tags,
        _engagement = engagement,
        _crossPostData = crossPostData;

  factory _$SocialPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialPostImplFromJson(json);

  @override
  final String id;
  @override
  final String platform;
  @override
  final String userId;
  @override
  final String content;
  final List<String> _mediaUrls;
  @override
  List<String> get mediaUrls {
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaUrls);
  }

  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final DateTime postedAt;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final Map<String, int> _engagement;
  @override
  Map<String, int> get engagement {
    if (_engagement is EqualUnmodifiableMapView) return _engagement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_engagement);
  }

  @override
  final String visibility;
  final Map<String, dynamic>? _crossPostData;
  @override
  Map<String, dynamic>? get crossPostData {
    final value = _crossPostData;
    if (value == null) return null;
    if (_crossPostData is EqualUnmodifiableMapView) return _crossPostData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocialPost(id: $id, platform: $platform, userId: $userId, content: $content, mediaUrls: $mediaUrls, metadata: $metadata, postedAt: $postedAt, tags: $tags, engagement: $engagement, visibility: $visibility, crossPostData: $crossPostData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._engagement, _engagement) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            const DeepCollectionEquality()
                .equals(other._crossPostData, _crossPostData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      platform,
      userId,
      content,
      const DeepCollectionEquality().hash(_mediaUrls),
      const DeepCollectionEquality().hash(_metadata),
      postedAt,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_engagement),
      visibility,
      const DeepCollectionEquality().hash(_crossPostData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialPostImplCopyWith<_$SocialPostImpl> get copyWith =>
      __$$SocialPostImplCopyWithImpl<_$SocialPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialPostImplToJson(
      this,
    );
  }
}

abstract class _SocialPost implements SocialPost {
  const factory _SocialPost(
      {required final String id,
      required final String platform,
      required final String userId,
      required final String content,
      required final List<String> mediaUrls,
      required final Map<String, dynamic> metadata,
      required final DateTime postedAt,
      required final List<String> tags,
      required final Map<String, int> engagement,
      required final String visibility,
      final Map<String, dynamic>? crossPostData}) = _$SocialPostImpl;

  factory _SocialPost.fromJson(Map<String, dynamic> json) =
      _$SocialPostImpl.fromJson;

  @override
  String get id;
  @override
  String get platform;
  @override
  String get userId;
  @override
  String get content;
  @override
  List<String> get mediaUrls;
  @override
  Map<String, dynamic> get metadata;
  @override
  DateTime get postedAt;
  @override
  List<String> get tags;
  @override
  Map<String, int> get engagement;
  @override
  String get visibility;
  @override
  Map<String, dynamic>? get crossPostData;
  @override
  @JsonKey(ignore: true)
  _$$SocialPostImplCopyWith<_$SocialPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialActivity _$SocialActivityFromJson(Map<String, dynamic> json) {
  return _SocialActivity.fromJson(json);
}

/// @nodoc
mixin _$SocialActivity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get activityType => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialActivityCopyWith<SocialActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialActivityCopyWith<$Res> {
  factory $SocialActivityCopyWith(
          SocialActivity value, $Res Function(SocialActivity) then) =
      _$SocialActivityCopyWithImpl<$Res, SocialActivity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String activityType,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isPublic,
      List<String> tags,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SocialActivityCopyWithImpl<$Res, $Val extends SocialActivity>
    implements $SocialActivityCopyWith<$Res> {
  _$SocialActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? activityType = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isPublic = null,
    Object? tags = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialActivityImplCopyWith<$Res>
    implements $SocialActivityCopyWith<$Res> {
  factory _$$SocialActivityImplCopyWith(_$SocialActivityImpl value,
          $Res Function(_$SocialActivityImpl) then) =
      __$$SocialActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String activityType,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isPublic,
      List<String> tags,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$SocialActivityImplCopyWithImpl<$Res>
    extends _$SocialActivityCopyWithImpl<$Res, _$SocialActivityImpl>
    implements _$$SocialActivityImplCopyWith<$Res> {
  __$$SocialActivityImplCopyWithImpl(
      _$SocialActivityImpl _value, $Res Function(_$SocialActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? activityType = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isPublic = null,
    Object? tags = null,
    Object? metadata = freezed,
  }) {
    return _then(_$SocialActivityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialActivityImpl implements _SocialActivity {
  const _$SocialActivityImpl(
      {required this.id,
      required this.userId,
      required this.platform,
      required this.activityType,
      required final Map<String, dynamic> data,
      required this.timestamp,
      required this.isPublic,
      required final List<String> tags,
      final Map<String, dynamic>? metadata})
      : _data = data,
        _tags = tags,
        _metadata = metadata;

  factory _$SocialActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialActivityImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String platform;
  @override
  final String activityType;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime timestamp;
  @override
  final bool isPublic;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocialActivity(id: $id, userId: $userId, platform: $platform, activityType: $activityType, data: $data, timestamp: $timestamp, isPublic: $isPublic, tags: $tags, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      platform,
      activityType,
      const DeepCollectionEquality().hash(_data),
      timestamp,
      isPublic,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialActivityImplCopyWith<_$SocialActivityImpl> get copyWith =>
      __$$SocialActivityImplCopyWithImpl<_$SocialActivityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialActivityImplToJson(
      this,
    );
  }
}

abstract class _SocialActivity implements SocialActivity {
  const factory _SocialActivity(
      {required final String id,
      required final String userId,
      required final String platform,
      required final String activityType,
      required final Map<String, dynamic> data,
      required final DateTime timestamp,
      required final bool isPublic,
      required final List<String> tags,
      final Map<String, dynamic>? metadata}) = _$SocialActivityImpl;

  factory _SocialActivity.fromJson(Map<String, dynamic> json) =
      _$SocialActivityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get platform;
  @override
  String get activityType;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get timestamp;
  @override
  bool get isPublic;
  @override
  List<String> get tags;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SocialActivityImplCopyWith<_$SocialActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialAuth _$SocialAuthFromJson(Map<String, dynamic> json) {
  return _SocialAuth.fromJson(json);
}

/// @nodoc
mixin _$SocialAuth {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  DateTime get tokenExpiry => throw _privateConstructorUsedError;
  List<String> get scopes => throw _privateConstructorUsedError;
  Map<String, dynamic> get userData => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialAuthCopyWith<SocialAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialAuthCopyWith<$Res> {
  factory $SocialAuthCopyWith(
          SocialAuth value, $Res Function(SocialAuth) then) =
      _$SocialAuthCopyWithImpl<$Res, SocialAuth>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String accessToken,
      String? refreshToken,
      DateTime tokenExpiry,
      List<String> scopes,
      Map<String, dynamic> userData,
      Map<String, dynamic>? settings});
}

/// @nodoc
class _$SocialAuthCopyWithImpl<$Res, $Val extends SocialAuth>
    implements $SocialAuthCopyWith<$Res> {
  _$SocialAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? tokenExpiry = null,
    Object? scopes = null,
    Object? userData = null,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenExpiry: null == tokenExpiry
          ? _value.tokenExpiry
          : tokenExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scopes: null == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialAuthImplCopyWith<$Res>
    implements $SocialAuthCopyWith<$Res> {
  factory _$$SocialAuthImplCopyWith(
          _$SocialAuthImpl value, $Res Function(_$SocialAuthImpl) then) =
      __$$SocialAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String accessToken,
      String? refreshToken,
      DateTime tokenExpiry,
      List<String> scopes,
      Map<String, dynamic> userData,
      Map<String, dynamic>? settings});
}

/// @nodoc
class __$$SocialAuthImplCopyWithImpl<$Res>
    extends _$SocialAuthCopyWithImpl<$Res, _$SocialAuthImpl>
    implements _$$SocialAuthImplCopyWith<$Res> {
  __$$SocialAuthImplCopyWithImpl(
      _$SocialAuthImpl _value, $Res Function(_$SocialAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? tokenExpiry = null,
    Object? scopes = null,
    Object? userData = null,
    Object? settings = freezed,
  }) {
    return _then(_$SocialAuthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenExpiry: null == tokenExpiry
          ? _value.tokenExpiry
          : tokenExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scopes: null == scopes
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userData: null == userData
          ? _value._userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialAuthImpl implements _SocialAuth {
  const _$SocialAuthImpl(
      {required this.id,
      required this.userId,
      required this.platform,
      required this.accessToken,
      required this.refreshToken,
      required this.tokenExpiry,
      required final List<String> scopes,
      required final Map<String, dynamic> userData,
      final Map<String, dynamic>? settings})
      : _scopes = scopes,
        _userData = userData,
        _settings = settings;

  factory _$SocialAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialAuthImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String platform;
  @override
  final String accessToken;
  @override
  final String? refreshToken;
  @override
  final DateTime tokenExpiry;
  final List<String> _scopes;
  @override
  List<String> get scopes {
    if (_scopes is EqualUnmodifiableListView) return _scopes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scopes);
  }

  final Map<String, dynamic> _userData;
  @override
  Map<String, dynamic> get userData {
    if (_userData is EqualUnmodifiableMapView) return _userData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userData);
  }

  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocialAuth(id: $id, userId: $userId, platform: $platform, accessToken: $accessToken, refreshToken: $refreshToken, tokenExpiry: $tokenExpiry, scopes: $scopes, userData: $userData, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialAuthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenExpiry, tokenExpiry) ||
                other.tokenExpiry == tokenExpiry) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes) &&
            const DeepCollectionEquality().equals(other._userData, _userData) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      platform,
      accessToken,
      refreshToken,
      tokenExpiry,
      const DeepCollectionEquality().hash(_scopes),
      const DeepCollectionEquality().hash(_userData),
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialAuthImplCopyWith<_$SocialAuthImpl> get copyWith =>
      __$$SocialAuthImplCopyWithImpl<_$SocialAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialAuthImplToJson(
      this,
    );
  }
}

abstract class _SocialAuth implements SocialAuth {
  const factory _SocialAuth(
      {required final String id,
      required final String userId,
      required final String platform,
      required final String accessToken,
      required final String? refreshToken,
      required final DateTime tokenExpiry,
      required final List<String> scopes,
      required final Map<String, dynamic> userData,
      final Map<String, dynamic>? settings}) = _$SocialAuthImpl;

  factory _SocialAuth.fromJson(Map<String, dynamic> json) =
      _$SocialAuthImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get platform;
  @override
  String get accessToken;
  @override
  String? get refreshToken;
  @override
  DateTime get tokenExpiry;
  @override
  List<String> get scopes;
  @override
  Map<String, dynamic> get userData;
  @override
  Map<String, dynamic>? get settings;
  @override
  @JsonKey(ignore: true)
  _$$SocialAuthImplCopyWith<_$SocialAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialInteraction _$SocialInteractionFromJson(Map<String, dynamic> json) {
  return _SocialInteraction.fromJson(json);
}

/// @nodoc
mixin _$SocialInteraction {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get interactionType => throw _privateConstructorUsedError;
  String get targetId => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialInteractionCopyWith<SocialInteraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialInteractionCopyWith<$Res> {
  factory $SocialInteractionCopyWith(
          SocialInteraction value, $Res Function(SocialInteraction) then) =
      _$SocialInteractionCopyWithImpl<$Res, SocialInteraction>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String interactionType,
      String targetId,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isPublic,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SocialInteractionCopyWithImpl<$Res, $Val extends SocialInteraction>
    implements $SocialInteractionCopyWith<$Res> {
  _$SocialInteractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? interactionType = null,
    Object? targetId = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isPublic = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      interactionType: null == interactionType
          ? _value.interactionType
          : interactionType // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialInteractionImplCopyWith<$Res>
    implements $SocialInteractionCopyWith<$Res> {
  factory _$$SocialInteractionImplCopyWith(_$SocialInteractionImpl value,
          $Res Function(_$SocialInteractionImpl) then) =
      __$$SocialInteractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String interactionType,
      String targetId,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isPublic,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$SocialInteractionImplCopyWithImpl<$Res>
    extends _$SocialInteractionCopyWithImpl<$Res, _$SocialInteractionImpl>
    implements _$$SocialInteractionImplCopyWith<$Res> {
  __$$SocialInteractionImplCopyWithImpl(_$SocialInteractionImpl _value,
      $Res Function(_$SocialInteractionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? interactionType = null,
    Object? targetId = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isPublic = null,
    Object? metadata = freezed,
  }) {
    return _then(_$SocialInteractionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      interactionType: null == interactionType
          ? _value.interactionType
          : interactionType // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialInteractionImpl implements _SocialInteraction {
  const _$SocialInteractionImpl(
      {required this.id,
      required this.userId,
      required this.platform,
      required this.interactionType,
      required this.targetId,
      required final Map<String, dynamic> data,
      required this.timestamp,
      required this.isPublic,
      final Map<String, dynamic>? metadata})
      : _data = data,
        _metadata = metadata;

  factory _$SocialInteractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialInteractionImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String platform;
  @override
  final String interactionType;
  @override
  final String targetId;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime timestamp;
  @override
  final bool isPublic;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocialInteraction(id: $id, userId: $userId, platform: $platform, interactionType: $interactionType, targetId: $targetId, data: $data, timestamp: $timestamp, isPublic: $isPublic, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialInteractionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.interactionType, interactionType) ||
                other.interactionType == interactionType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      platform,
      interactionType,
      targetId,
      const DeepCollectionEquality().hash(_data),
      timestamp,
      isPublic,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialInteractionImplCopyWith<_$SocialInteractionImpl> get copyWith =>
      __$$SocialInteractionImplCopyWithImpl<_$SocialInteractionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialInteractionImplToJson(
      this,
    );
  }
}

abstract class _SocialInteraction implements SocialInteraction {
  const factory _SocialInteraction(
      {required final String id,
      required final String userId,
      required final String platform,
      required final String interactionType,
      required final String targetId,
      required final Map<String, dynamic> data,
      required final DateTime timestamp,
      required final bool isPublic,
      final Map<String, dynamic>? metadata}) = _$SocialInteractionImpl;

  factory _SocialInteraction.fromJson(Map<String, dynamic> json) =
      _$SocialInteractionImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get platform;
  @override
  String get interactionType;
  @override
  String get targetId;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get timestamp;
  @override
  bool get isPublic;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SocialInteractionImplCopyWith<_$SocialInteractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialNotification _$SocialNotificationFromJson(Map<String, dynamic> json) {
  return _SocialNotification.fromJson(json);
}

/// @nodoc
mixin _$SocialNotification {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialNotificationCopyWith<SocialNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialNotificationCopyWith<$Res> {
  factory $SocialNotificationCopyWith(
          SocialNotification value, $Res Function(SocialNotification) then) =
      _$SocialNotificationCopyWithImpl<$Res, SocialNotification>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String type,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isRead,
      String priority,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SocialNotificationCopyWithImpl<$Res, $Val extends SocialNotification>
    implements $SocialNotificationCopyWith<$Res> {
  _$SocialNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? type = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isRead = null,
    Object? priority = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialNotificationImplCopyWith<$Res>
    implements $SocialNotificationCopyWith<$Res> {
  factory _$$SocialNotificationImplCopyWith(_$SocialNotificationImpl value,
          $Res Function(_$SocialNotificationImpl) then) =
      __$$SocialNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String platform,
      String type,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isRead,
      String priority,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$SocialNotificationImplCopyWithImpl<$Res>
    extends _$SocialNotificationCopyWithImpl<$Res, _$SocialNotificationImpl>
    implements _$$SocialNotificationImplCopyWith<$Res> {
  __$$SocialNotificationImplCopyWithImpl(_$SocialNotificationImpl _value,
      $Res Function(_$SocialNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? platform = null,
    Object? type = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isRead = null,
    Object? priority = null,
    Object? metadata = freezed,
  }) {
    return _then(_$SocialNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialNotificationImpl implements _SocialNotification {
  const _$SocialNotificationImpl(
      {required this.id,
      required this.userId,
      required this.platform,
      required this.type,
      required final Map<String, dynamic> data,
      required this.timestamp,
      required this.isRead,
      required this.priority,
      final Map<String, dynamic>? metadata})
      : _data = data,
        _metadata = metadata;

  factory _$SocialNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialNotificationImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String platform;
  @override
  final String type;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime timestamp;
  @override
  final bool isRead;
  @override
  final String priority;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocialNotification(id: $id, userId: $userId, platform: $platform, type: $type, data: $data, timestamp: $timestamp, isRead: $isRead, priority: $priority, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      platform,
      type,
      const DeepCollectionEquality().hash(_data),
      timestamp,
      isRead,
      priority,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialNotificationImplCopyWith<_$SocialNotificationImpl> get copyWith =>
      __$$SocialNotificationImplCopyWithImpl<_$SocialNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialNotificationImplToJson(
      this,
    );
  }
}

abstract class _SocialNotification implements SocialNotification {
  const factory _SocialNotification(
      {required final String id,
      required final String userId,
      required final String platform,
      required final String type,
      required final Map<String, dynamic> data,
      required final DateTime timestamp,
      required final bool isRead,
      required final String priority,
      final Map<String, dynamic>? metadata}) = _$SocialNotificationImpl;

  factory _SocialNotification.fromJson(Map<String, dynamic> json) =
      _$SocialNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get platform;
  @override
  String get type;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get timestamp;
  @override
  bool get isRead;
  @override
  String get priority;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SocialNotificationImplCopyWith<_$SocialNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
