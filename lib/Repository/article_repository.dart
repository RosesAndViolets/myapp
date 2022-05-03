import 'package:myapp/model/article.dart';
import 'package:myapp/response/result.dart';

abstract class ArticleRepository {
  Future<Result<List<Article>>> fetchArticles();
}
