
import 'package:flutter/material.dart';

@immutable
abstract class WeatherEvent {}
class WeatherRequest extends WeatherEvent {
final String cityName;
final String temp;
final String image;
WeatherRequest({required this.cityName,required this.temp,required this.image});
}
