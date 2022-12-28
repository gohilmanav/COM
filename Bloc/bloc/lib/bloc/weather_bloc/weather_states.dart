import 'package:flutter/material.dart';

@immutable
abstract class WeatherState {}
class WeatherInitial extends WeatherState {}
class WeatherLoadInprogress extends WeatherState {}
class WeatherLoadSuccess extends WeatherState {
final  weather;
WeatherLoadSuccess({required this.weather});
}
class WeatherLoadFailure extends WeatherState {
final String error;
final String add;  
WeatherLoadFailure({required this.error,required this.add});
}    