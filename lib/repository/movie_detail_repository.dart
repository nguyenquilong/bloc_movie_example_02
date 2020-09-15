import 'package:flurest/networking/api_base_helper.dart';
import 'package:flurest/models/movie_response.dart';
//import 'package:flurest/apiKey.dart';

class MovieDetailRepository {
  //final String _apiKey = apiKey;

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<Movie> fetchMovieDetail(int selectedMovie) async {
    final response = await _helper
        .get("movie/$selectedMovie?api_key=ddc61a0549c1a9cc3a521cdcbadfce17");
    return Movie.fromJson(response);
  }
}
