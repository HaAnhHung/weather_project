import 'package:json_annotation/json_annotation.dart';

part 'current_weather_model.g.dart';

@JsonSerializable()
class CurrentWeatherModel {
  LocationModel? location;
  CurrentModel? current;

  CurrentWeatherModel({this.location, this.current});

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) => _$CurrentWeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherModelToJson(this);
}

@JsonSerializable()
class LocationModel {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tz_id;
  int? localtime_epoch;
  String? localtime;

  LocationModel({this.name, this.region, this.country, this.lat, this.lon, this.tz_id, this.localtime_epoch, this.localtime});

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}

@JsonSerializable()
class CurrentModel {
  int? last_updated_epoch;
  String? last_updated;
  double? temp_c;
  double? temp_f;
  int? isDay;
  ConditionModel? condition;
  double? wind_mph;
  double? wind_kph;
  int? wind_degree;
  String? wind_dir;
  int? pressure_mb;
  double? pressure_in;
  int? precip_mm;
  int? precip_in;
  int? humidity;
  int? cloud;
  int? feelslike_c;
  double? feelslike_f;
  int? vis_km;
  int? vis_Miles;
  int? uv;
  double? gust_mph;
  double? gust_kph;
  AirQualityModel? air_quality;

  CurrentModel(
      {this.last_updated_epoch,
      this.last_updated,
      this.temp_c,
      this.temp_f,
      this.isDay,
      this.condition,
      this.wind_mph,
      this.wind_kph,
      this.wind_degree,
      this.wind_dir,
      this.pressure_mb,
      this.pressure_in,
      this.precip_mm,
      this.precip_in,
      this.humidity,
      this.cloud,
      this.feelslike_c,
      this.feelslike_f,
      this.vis_km,
      this.vis_Miles,
      this.uv,
      this.gust_kph,
      this.gust_mph,
      this.air_quality});

  factory CurrentModel.fromJson(Map<String, dynamic> json) => _$CurrentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentModelToJson(this);
}

@JsonSerializable()
class ConditionModel {
  String? text;
  String? icon;
  int? code;

  ConditionModel({this.text, this.icon, this.code});

  factory ConditionModel.fromJson(Map<String, dynamic> json) => _$ConditionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionModelToJson(this);
}

@JsonSerializable()
class AirQualityModel {
  double? co;
  double? no2;
  double? o3;
  int? so2;
  double? pm25;
  int? pm10;
  int? us_epa_index;
  int? gb_defra_index;

  AirQualityModel({this.co, this.no2, this.o3, this.so2, this.pm25, this.pm10, this.us_epa_index, this.gb_defra_index});

  factory AirQualityModel.fromJson(Map<String, dynamic> json) => _$AirQualityModelFromJson(json);

  Map<String, dynamic> toJson() => _$AirQualityModelToJson(this);
}
