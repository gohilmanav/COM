
import 'package:bloc/bloc/weather_bloc/weather_events.dart';
import 'package:bloc/bloc/weather_bloc/weather_states.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


// import 'package:flutter_weather/repositories/repositories.dart';
// import 'package:flutter_weather/models/models.dart';

class WeatherBloc extends BlocBuilder<WeatherEvent, WeatherState> {
  final  weatherRepository;

  WeatherBloc({@required this.weatherRepository})
      : assert(weatherRepository != null);

  WeatherState get initialState => weatherRepository();

  Stream<WeatherState?> MapBase(
    WeatherState currentState,
    WeatherEvent event,
  ) async* {
    if (event is WeatherBloc) {
      yield WeatherLoadInprogress();
      try {
        yield WeatherLoadFailure(error:"error404" , add: "");
      } catch (_) {
        yield WeatherLoadSuccess(weather:"");
      }
    }
  }
}