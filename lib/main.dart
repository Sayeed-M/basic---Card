import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Micard());
  }
}

class Micard extends StatelessWidget {
  const Micard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Mi Card',
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SafeArea(
            child: Center(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/photo.jpg'),
                ),
                Text(
                  'Mohd Sayeed S Mulla',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSans3',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone), hintText: '7880661203'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.mail),
                        hintText: 'mohdsayeed1092@gmail.com'),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
