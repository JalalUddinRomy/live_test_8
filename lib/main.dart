import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            // Portrait mode UI
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  child: Card(
                    child: Image.network("https://via.placeholder.com/150"),
                  ),
                );
              },
            );
          } else {
            // Landscape mode UI
            return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 150,
                    child: Card(
                      child: Image.network("https://via.placeholder.com/150"),
                    ),
                  );

                },);
          }
        },
      ),
    );
  }
}
