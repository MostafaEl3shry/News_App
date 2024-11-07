import 'package:dio/dio.dart';
import 'package:newsapp/Model/NewsModel.dart';

class NewsServices{
  static Dio dio = Dio();

  static Future<NewsModel> getmodel() async{
    var response = await dio.get("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c64a4b2debe40168c74926def260cdf#");
    return NewsModel.fromJeson(response.data);
  }
}