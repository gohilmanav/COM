import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable {
  final String temp;
  final String image;
  final String name;

  const WeatherModel({
    required this.temp,
    required this.image,
    required this.name,
  });
  @override
// ignore: override_on_non_overriding_member
  List<Object> get props => [temp, image, name];
  static List<WeatherModel> blocs = [
    WeatherModel(
        temp: "49c",
        image: "assets/sun-removebg-preview-removebg-preview.png",
        name: "sunny"),
    WeatherModel(
        temp: "15c",
        image: "assets/cold-removebg-preview.png",
        name: "cold"),
    WeatherModel(
        temp: "35c",
        image: "assets/images_004-removebg-preview.png",
        name: "wharm"),
    WeatherModel(
        temp: "29c",
        image: "assets/images-removebg-preview.png",
        name: "night"),
  ];

  static list() {}

  static findOne(int id) {}
}
