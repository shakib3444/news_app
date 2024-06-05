import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app_api/models/news_model.dart';
import 'package:news_app_api/news_view_model/news_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  NewsViewModel newsViewModel = NewsViewModel();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){},
            child:Icon(Icons.dashboard)),
        title: Text("News",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
        centerTitle: true,

      ),
      body: ListView(
        children: [
          SizedBox(
            height: size.height*0.40,
            width: size.width*0.60,
            child: FutureBuilder(
                future: newsViewModel.getNews(),
                builder: (context,snapshot){
                  return isLoading?Center(child: SpinKitCircle(size: 20,color: Colors.orange,),):ListView.builder(
                    itemCount: snapshot.data!.articles!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                      final data = snapshot.data!.articles![index];
                        return Container(
                          margin: EdgeInsets.only(right: 10),

                          child: Stack(

                            children: [
                              //Text("amr sonar bangla ami tumy valo bashe"),
                              Container(
                                child: CachedNetworkImage(
                                  imageUrl:data.urlToImage.toString(),
                                  fit: BoxFit.cover,
                                  placeholder: (context,url)=>spinkit2,
                                  errorWidget: (context,url,error)=>Icon(Icons.error_outline,color: Colors.red,),
                                ),
                              ),
                            ],
                          ),

                        );
                      });
                }
            ),
          )
        ],
      ),
    );
  }
}

final spinkit2 = SpinKitFadingCircle(
  color: Colors.orange,
  size: 30,

);