import 'dart:convert';

import 'package:cmovie_app/models/movies_model.dart';
import 'package:http/http.dart';

class ApiService {
  final apiKey = "api_key=2fea4e9de5ce402178bbd69f6311bced";
  final popular = "https://api.themoviedb.org/3/movie/popular?";


//>>>>>>>>>>>>>> Get popular movies


  Future<List<Movie>> getMovies({required int page}) async {
    //Send request
    Response response = await get(Uri.parse("$popular$apiKey&page=$page"));
    //Check response status code
    if (response.statusCode == 200) {
      //Extract response body
      Map<String, dynamic> body = jsonDecode(response.body);
      //Extract results from body
      List<dynamic> data = body['results'];
      //Map to Movie model
      List<Movie> movies = data.map((movie) => Movie.fromJson(movie)).toList();
      return movies;
    } else {
      throw Exception(response.statusCode);
    }
  }
}
 