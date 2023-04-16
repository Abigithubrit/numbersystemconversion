import 'package:flutter/material.dart';
import 'package:number/binary.dart';
import 'package:number/decimal.dart';
import 'package:number/hexadecimal.dart';
import 'package:number/octal.dart';
import 'package:number/binary.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Number System",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:15.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right:11.0),
            child: Icon(Icons.info),
          ),
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(

          controller: _tabController,
        indicatorColor: Colors.white,
          tabs: [
          Text("Binary",style: TextStyle(fontSize: 12),),
          Text("Decimal",style: TextStyle(fontSize: 12),),
          Text("Octal",style: TextStyle(fontSize: 12),),
          Text("Hexadecimal",style: TextStyle(fontSize: 12))

        ]),

      ),
      body: TabBarView(
        controller: _tabController,
        children: [
        Binary(),
        Decimal(),
        Octal(),
        HexaDecimal(),
      ]),


    );
  }
}