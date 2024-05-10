class WeatherFutuerModle {
  final double minTemp;
  final double maxTemp;
  final String weatherIcon;
  final String datetime;
  WeatherFutuerModle(
      {required this.minTemp,
      required this.maxTemp,
      required this.weatherIcon,
      required this.datetime});

  factory WeatherFutuerModle.fromJson(
      {required Map<String, dynamic> json, required int index}) {
    return WeatherFutuerModle(
      minTemp: json['forecast']['forecastday'][index]['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][index]['maxtemp_c'],
      weatherIcon: json['forecast']['forecastday'][index]['condition']['icon'],
      datetime: json['forecast']['forecastday'][index]['date'],
    );
  }
}
