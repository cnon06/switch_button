import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {




  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  bool switchKontrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mani Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(value: switchKontrol,
            activeTrackColor: Colors.pinkAccent,
            activeColor: Colors.lightGreen,
            inactiveTrackColor: Colors.yellow,
            inactiveThumbColor: Colors.red,
            onChanged:
            (data)
              {
                setState(() {
                  switchKontrol=data;
                  print('Data: $data');
                });


              }

              ,
            ),
            Text("Output: $switchKontrol")

          ],
        ),
      ),

    );
  }
}
