/// Represents the different states of the weather in the application.
///
/// [WeatherCurnetInitial] is the initial state when the weather data has not been loaded yet.
/// [WeatherCurnetLoadSuccess] is the state when the weather data has been successfully loaded.
/// [Weathererror] is the state when there is an error loading the weather data.
class WeatherStates {}

class WeatherCurnetInitial extends WeatherStates {}

class WeatherCurnetLoadSuccess extends WeatherStates {}

class Weathererror extends WeatherStates {}
