import 'package:flutter/material.dart';

import 'api/api.dart';

void main() {
  Api api = Api();
  api.getMovies();
  runApp(MaterialApp(
    home: Homescreen(),
  ));
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
    );
  }
}
