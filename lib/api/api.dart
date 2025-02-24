import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  //https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey     --- Now Playing
  //https://api.themoviedb.org/3/movie/popular?api_key=$apiKey         --- popular
  String baseurl = "api.themoviedb.org";
  String apiKey = "eb1636452ca9c6d9d008a6636ee6e360";
  String nowPlayingEndPoint = "/3/movie/now_playing";
  String popularEndPoint = "/3/movie/popular";

  Future<void> getMovies() async {
    Uri url = Uri.https(baseurl, nowPlayingEndPoint, {"api_key": apiKey});
    var response = await http.get(url);
    String resBody = response.body;
    Map<String, dynamic> json = jsonDecode(resBody);
    print(json);
  }
}
