 import 'package:bloc/model/weather_model.dart';
import 'package:bloc/ui/home/Weather_ui.dart';

@override
  Future<List<WeatherHome>> getAll() async {
    var cityName = await WeatherModel.list();
    return cityName.map((item) => WeatherHome.fromMap(item)).toList();
  }

  