import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:http/http.dart';

class apiTest extends StatefulWidget {
  const apiTest({Key? key}) : super(key: key);
  @override
  State<apiTest> createState() => _apiTestState();
}

class _apiTestState extends State<apiTest> {
  test() async {
// ① ベースとなるAPIクライアント生成
    var client = ApiClient(basePath: "http://localhost:8080");
// ヘッダを追加したい場合はクライアントに設定可能
//  client.addDefaultHeader("key", "value");

// ② APIクライアントラッパーを生成
// APIレスポンスをモデルに変換してくれる
    var api = SystemApi(client);

// ③ レスポンスボディのみが欲しい場合は${HTTPメソッド名+パス名}のメソッドをcall
    Response res = await api.healthGetWithHttpInfo();
    print(res.statusCode);
    print(res.headers);
    print(res.body);
  }
}
