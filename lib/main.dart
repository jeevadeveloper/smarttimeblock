import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'LoginDemo.dart';
import 'ForgotPassword.dart';
import 'camera.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        // Main initial route
        '/': (context) => MainPage(),
        // Second route
        '/second': (context) => SecondPage(),
        '/login': (context) => LoginDemo(),
        '/forgotpassword': (context) => ForgotPassword(),
        '/camera': (context) => camera(),
      },
      initialRoute: '/',
    );
  }
}

class MainPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('Simple App'),
        ),
        body: Container(
          margin: EdgeInsets.all(30.0),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginDemo()),
                    ),
                child: Text('Login'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => camera()),
                    ),
                child: Text('camera'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    ),
                child: Text('Flutter Wiki'),
              )
            ],
          ),
        ),
      );
}

class SecondPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Wiki'),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. First described in 2015, Flutter was released in May 2017.',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 30,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
