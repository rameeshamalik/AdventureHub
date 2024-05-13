/*import 'package:http/http.dart' as http;
import 'package:adventurehub/weather/weather.dart';
import 'dart:convert';

class HttpHelper {
  String domainName = "api.openweathermap.org";
  String route = "data/2.5/weather";
  String lat = "31.573152";
  String lon = "74.3078585";
  String apiKey = "a9b3edb52046fab8610cfab2b0c1a950";

  Future<Weather> GetWeatherOfGCU() async {
    Map<String, dynamic> parameters = {"lat": lat, "lon": lon, "appid": apiKey};

    Uri apiURL = Uri.https(domainName, route, parameters);

    http.Response response = await http.get(apiURL);

    String responseString = response.body;
    Map<String, dynamic> data = json.decode(responseString);

    Weather obj = Weather.fromJson(data);

    return obj;
  }
}
*/

import 'package:http/http.dart' as http;
import 'package:adventurehub/weather/weather.dart';
import 'dart:convert';

class HttpHelper {
  Future<Weather> getWeather(String lat, String lon, String apiKey) async {
    String domainName = "api.openweathermap.org";
    String route = "data/2.5/weather";

    Map<String, dynamic> parameters = {"lat": lat, "lon": lon, "appid": apiKey};
    Uri apiURL = Uri.https(domainName, route, parameters);

    http.Response response = await http.get(apiURL);

    if (response.statusCode == 200) {
      String responseString = response.body;
      Map<String, dynamic> data = json.decode(responseString);
      Weather obj = Weather.fromJson(data);
      return obj;
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}
