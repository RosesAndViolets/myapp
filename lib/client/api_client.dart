import 'package:dio/dio.dart';
import 'package:myapp/model/article.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "http://3.37.206.169:8081")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  // @GET("/items")
  // Future<List<Article>> fetchArticles();
  // Future<List<Article>> getUserID();

  @POST("/diary")
  Future<List<Article>> postDiary(@Body() Map<String, dynamic> postDiary);
}
