import 'package:clean_architechture/data/data_mapper/base/base_data_mapper.dart';
import 'package:clean_architechture/data/models/current_weather_model.dart';
import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CurrentWeatherDataMapper extends BaseDataMapper<CurrentWeatherEntity, CurrentWeatherModel>{
  @override
  CurrentWeatherEntity mapToEntity(CurrentWeatherModel? data) {
    return CurrentWeatherEntity(
      current: CurrentDataMapper().mapToEntity(data?.current),
      location: LocationDataMapper().mapToEntity(data?.location)
    );
  }
}

@Injectable()
class CurrentDataMapper extends BaseDataMapper<CurrentEntity, CurrentModel> {
  @override
  CurrentEntity mapToEntity(CurrentModel? data) {
    return CurrentEntity(
        lastUpdatedEpoch: data?.last_updated_epoch,
        lastUpdated: data?.last_updated,
        tempC: data?.temp_c,
        tempF: data?.temp_f,
        isDay: data?.isDay,
        condition: ConditionDataMapper().mapToEntity(data?.condition),
        airQuality: AirQualityDataMapper().mapToEntity(data?.air_quality)
    );
  }
}

@Injectable()
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

@Injectable()
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
      usEpaIndex: data?.us_epa_index,
      gbDefraIndex: data?.gb_defra_index,
    );
  }
}

@Injectable()
class LocationDataMapper extends BaseDataMapper<LocationEntity, LocationModel> {
  @override
  LocationEntity mapToEntity(LocationModel? data) {
    return LocationEntity(
      name: data?.name,
      region: data?.region,
      country: data?.country,
      lat: data?.lat,
      lon: data?.lon,
      localtime: data?.localtime,
    );
  }
}