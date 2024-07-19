import 'package:json_annotation/json_annotation.dart';

class CurrentWeatherEntity {
  LocationEntity? location;
  CurrentEntity? current;

  CurrentWeatherEntity({this.location, this.current});
}

class LocationEntity {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  LocationEntity({this.name, this.region, this.country, this.lat, this.lon, this.tzId, this.localtimeEpoch, this.localtime});
}

class CurrentEntity {
  int? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  double? tempF;
  int? isDay;
  ConditionEntity? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  int? pressureMb;
  double? pressureIn;
  int? precipMm;
  int? precipIn;
  int? humidity;
  int? cloud;
  int? feelslikeC;
  double? feelslikeF;
  int? visKm;
  int? visMiles;
  int? uv;
  double? gustMph;
  double? gustKph;
  AirQualityEntity? airQuality;

  CurrentEntity(
      {this.lastUpdatedEpoch,
        this.lastUpdated,
        this.tempC,
        this.tempF,
        this.isDay,
        this.condition,
        this.windMph,
        this.windKph,
        this.windDegree,
        this.windDir,
        this.pressureMb,
        this.pressureIn,
        this.precipMm,
        this.precipIn,
        this.humidity,
        this.cloud,
        this.feelslikeC,
        this.feelslikeF,
        this.visKm,
        this.visMiles,
        this.uv,
        this.gustMph,
        this.gustKph,
        this.airQuality});
}

class ConditionEntity {
  String? text;
  String? icon;
  int? code;

  ConditionEntity({this.text, this.icon, this.code});
}

class AirQualityEntity {
  double? co;
  double? no2;
  double? o3;
  int? so2;
  double? pm25;
  int? pm10;
  int? usEpaIndex;
  int? gbDefraIndex;

  AirQualityEntity({this.co, this.no2, this.o3, this.so2, this.pm25, this.pm10, this.usEpaIndex, this.gbDefraIndex});
}
