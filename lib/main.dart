import 'package:flutter/material.dart';
import 'package:webdesign/screen/mobile_view.dart';
import 'package:webdesign/screen/web_view.dart';


import 'screen/custom_drawer.dart';
import 'screen/image_custom_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}





class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var cw=MediaQuery.of(context).size.width;
    var ch=MediaQuery.of(context).size.height;
    return LayoutBuilder(builder: (context, size){
      if( size.maxWidth <850){
        return MobileView();
      }else{
        return WebView();
      }
    });
  }
}

