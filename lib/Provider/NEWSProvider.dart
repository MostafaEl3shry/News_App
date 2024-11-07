import 'package:flutter/cupertino.dart';
import 'package:newsapp/Model/NewsModel.dart';
import 'package:newsapp/Services/NEWs%20Services.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel? articale;
  Future<void> getdata() async{
    articale = await NewsServices.getmodel();
    notifyListeners();
  }
}