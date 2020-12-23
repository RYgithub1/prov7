import 'package:flutter/material.dart';
import 'package:prov7/weather_model.dart';
import 'package:provider/provider.dart';


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

    return ChangeNotifierProvider<WeatherModel>(
      create: (context) => WeatherModel(),

      child: Scaffold(
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
        floatingActionButton: MyFloatingActionButton(),
      ),
    );
  }
}



/// [--- sup1 ---]
class MyTemperatureType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text("Temperature Type: "),
    );
  }
}


/// [--- sup2 ---]
class MyTemperatureValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text("Temperature Value: "),
    );
  }
}


/// [--- sup3 ---]
class MyFloatingActionButton extends StatelessWidget {

  Color decideColor(WeatherModel model) {
    return model.temperatureType == "celcius"
        ? Colors.blue
        : Colors.red;
  }

  @override
  Widget build(BuildContext context) {

    var weatherModel = Provider.of<WeatherModel>(context);

    return FloatingActionButton(
          onPressed: (){

            String newWeatherType = weatherModel.temperatureType == "celcius"
                ? "fahrenheit"   /// [onPressedによりもう片方のTypenに変更するため]
                : "celcius";
            weatherModel.temperatureType = newWeatherType;

          },
          tooltip: 'Change Type',
          child: Icon(Icons.note),

          // backgroundColor: Colors.greeen,
          backgroundColor: decideColor(weatherModel),
    );
  }
}