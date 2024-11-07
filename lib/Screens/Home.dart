import 'package:flutter/material.dart';
import 'package:newsapp/Provider/NEWSProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Page",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        width: double.infinity,
        child: Consumer<NewsProvider>(builder: (context, value, child) {
          var model = value.articale?.artical;
          if(model == null){
            value.getdata();
            return CircularProgressIndicator();
          }
          return ListView.builder(itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(model[index]["img"]),
                  Text(model[index]["title"],style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(model[index]["description"]),
                ],
              ),
            );
          },
          itemCount: model.length,
          );
        },),
      ),
    );
  }
}
