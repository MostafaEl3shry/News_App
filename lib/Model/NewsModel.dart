class NewsModel {
  List<dynamic> artical;
  NewsModel({required this.artical});
  factory NewsModel.fromJeson(Map<String,dynamic>json){
    var fulldata=[];
    fulldata=json["articles"].map((user){
      return{
        "title":user["title"],
        "description":user["description"],
        "img":user["urlToImage"]
      };
    }).toList();
    return NewsModel(artical: fulldata);
  }
}