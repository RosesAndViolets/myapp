import 'package:dio/dio.dart';
import 'package:myapp/client/api_client.dart';
import 'package:myapp/model/article.dart';
import 'package:myapp/repository/article_repository.dart';
import 'package:myapp/response/result.dart';

class ArticleRepositoryImpl with ArticleRepository {
  final ApiClient _client;

  ArticleRepositoryImpl([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  @override
  Future<Result<List<Article>>> fetchArticles() {
    return _client
        .fetchArticles()
        .then((articles) => Result<List<Article>>.success(articles))
        .catchError((error) => Result<List<Article>>.failure(error));
  }
}
