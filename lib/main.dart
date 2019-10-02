import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _check = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // drawer: Drawer(),
      // appBar: AppBar(
  
      //   title: Text("GDG"),
      //   actions: <Widget>[
      //     IconButton(icon: Icon(Icons.camera), onPressed: () {
      //       print("click");
      //     },           
      //     ),
      //       Checkbox(onChanged: (bool value) {
      //       setState(() {
      //         _check = value;
      //       });
      //     },
      //     value: _check,
      //     ),
      //   ],
      // ),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/img/tinderlogo.png",width: 300, height: 100),
              Text(
                'GDG Tinder',
                style: TextStyle(color: Colors.white, 
                fontSize: 30,
                fontWeight: FontWeight.bold),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.high_quality),
      ),
    );
  }
}
