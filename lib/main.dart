import 'package:flutter/material.dart';


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'prov7',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Temperature: Type and Value")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyTemperatureType(),
            MyTemperatureValue(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Change Type',
        child: Icon(Icons.note),
      ),
    );
  }
}


/// [--- sup ---]
class MyTemperatureType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text("Temperature Type: "),
    );
  }
}


class MyTemperatureValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text("Temperature Value: "),
    );
  }
}