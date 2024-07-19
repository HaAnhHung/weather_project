import 'package:clean_architechture/data/data_mapper/base/base_data_mapper.dart';
import 'package:clean_architechture/data/models/current_weather_model.dart';
import 'package:clean_architechture/domain/entities/current_weather_entity.dart';

class CurrentWeatherDataMapper extends BaseDataMapper<CurrentWeatherEntity, CurrentWeatherModel>{
  @override
  CurrentWeatherEntity mapToEntity(CurrentWeatherModel? data) {
    return CurrentWeatherEntity(
      current: CurrentDataMapper().mapToEntity(data?.current),
      location: LocationDataMapper().mapToEntity(data?.location)
    );
  }
}

class CurrentDataMapper extends BaseDataMapper<CurrentEntity, CurrentModel> {
  @override
  CurrentEntity mapToEntity(CurrentModel? data) {
    return CurrentEntity(
        lastUpdatedEpoch: data?.lastUpdatedEpoch,
        lastUpdated: data?.lastUpdated,
        tempC: data?.tempC,
        tempF: data?.tempF,
        isDay: data?.isDay,
        condition: ConditionDataMapper().mapToEntity(data?.condition),
        airQuality: AirQualityDataMapper().mapToEntity(data?.airQuality)
    );
  }
}

class ConditionDataMapper extends BaseDataMapper<ConditionEntity, ConditionModel> {
  @override
  ConditionEntity mapToEntity(ConditionModel? data) {
    return ConditionEntity(
      text: data?.text,
      icon: data?.icon,
      code: data?.code
    );
  }
}

class AirQualityDataMapper extends BaseDataMapper<AirQualityEntity, AirQualityModel> {
  @override
  AirQualityEntity mapToEntity(AirQualityModel? data) {
    return AirQualityEntity(
      co: data?.co,
      no2: data?.no2,
      o3: data?.o3,
      so2: data?.so2,
      pm25: data?.pm25,
      pm10: data?.pm10,
      usEpaIndex: data?.usEpaIndex,
      gbDefraIndex: data?.gbDefraIndex,
    );
  }
}

class LocationDataMapper extends BaseDataMapper<LocationEntity, LocationModel> {
  @override
  LocationEntity mapToEntity(LocationModel? data) {
    return LocationEntity(
      name: data?.name,
      region: data?.region,
      country: data?.country,
      lat: data?.lat,
      lon: data?.lon,
      tzId: data?.tzId,
      localtime: data?.localtime,
      localtimeEpoch: data?.localtimeEpoch
    );
  }
}