import 'package:flutter/material.dart';
import 'DetailScreen.dart';

class MainScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        child: Hero(
            tag: 'imgHero',
            child: Image.network(
                'http://picsum.photos/250?image=9'
            ),
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return DetailScreen();
          }));
        },
      ),
    );    
  }
}
