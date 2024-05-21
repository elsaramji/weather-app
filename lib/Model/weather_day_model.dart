class WeatherCurnetModel {
  final String cityName;
  final String temp;
  final double? minTemp;
  final double? mixTemp;
  final String weathericon;
  final String weatherDescription;
  final String datetime;

  WeatherCurnetModel(
      {required this.cityName,
      required this.temp,
      required this.minTemp,
      required this.mixTemp,
      required this.weathericon,
      required this.weatherDescription,
      required this.datetime});

  factory WeatherCurnetModel.fromJson({required Map<String, dynamic> json}) {
    return WeatherCurnetModel(
      cityName: json["location"]['name'],
      temp: json["current"]["temp_c"].toString(),
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      mixTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      weathericon: "http:${json['current']['condition']['icon']}",
      weatherDescription: json['current']['condition']['text'],
      datetime: json['current']['last_updated'],
    );
  }
}
