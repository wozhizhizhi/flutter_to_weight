import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FristScreen(),
    );
  }
}

//class MyHomePage extends StatefulWidget
//{
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//  @override
//  _MyHomePageState createState() => new _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage>
//{
//
//  @override
//  Widget build(BuildContext context)
//  {
//
//  }
//}
class FristScreen extends StatelessWidget
{
    @override
  Widget build(BuildContext context)
  {
    return new Scaffold(appBar: new AppBar(title: new Text("Frist Screen")),
                          body: new Center(child: new RaisedButton(child: new Text("Launch new screen"),
                            onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => new SecondScreen()));})));
  }
}

class SecondScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(appBar: new AppBar(title: new Text("Second Screen")),
        body: new Center(child: new RaisedButton(child: new Text("Go back"),
            onPressed: (){Navigator.pop(context);})));
  }
}
