import 'package:flurest/networking/api_base_helper.dart';
import 'package:flurest/models/movie_response.dart';
//import 'package:flurest/apiKey.dart';

class MovieRepository {
  //final String _apiKey = apiKey;

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper
        .get("movie/popular?api_key=ddc61a0549c1a9cc3a521cdcbadfce17");
    return MovieResponse.fromJson(response).results;
  }
}
