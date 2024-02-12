import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map<String,dynamic>> info = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Info App"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(itemCount: info.length, itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("City: ${info[index]['city']}"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Temperature: ${info[index]['temperature']}°C"),
                Text("Condition: ${info[index]['condition']}"),
                Text("Humidity: ${info[index]['humidity']}%"),
                Text("Wind Speed: ${info[index]['windSpeed']} m/s"),
              ],
            ),
          ),
        );
      }),
    );
  }
}

