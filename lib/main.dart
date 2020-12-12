import 'package:flutter/material.dart';
import 'package:tabbar_widget/page/contact.dart';
import 'package:tabbar_widget/page/home.dart';
import 'package:tabbar_widget/page/video.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Tabs',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController tabBar;
  
  @override
  void initState() {
    super.initState();
    tabBar = new TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Tabs'),
        backgroundColor: Colors.redAccent,
        bottom: _tabBarCreation()
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: TabBarView(
          children: [
            HomePage(),
            VideoPage(),
            ContactPage()
          ],
          controller: tabBar,
        ),
      )
    );
  }

  Widget _tabBarCreation() {
    return TabBar(
      controller: tabBar,
      tabs: _tabs
    );
  }

  List<Widget> _tabs = [
    Tab(
      icon: Icon(Icons.home),
    ),
    Tab(
      icon: Icon(Icons.ondemand_video),
    ),
    Tab(
      icon: Icon(Icons.contacts),
    )
  ];

}