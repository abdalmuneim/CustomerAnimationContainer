import 'package:animation_container/animation_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                AnimationButtonContainer(
                  child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 25.0),
                      color: Colors.blue,
                      child: const Text('Click Me')),
                  childData: Column(
                    children: const [
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                    ],
                  ),
                  replaceChild: false,
                ),
                const SizedBox(height: 30),
                AnimationButtonContainer(
                  replaceChild: true,
                  replaceChildWith: const Text('After Clicked'),
                  child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 25.0),
                      color: Colors.blue,
                      child: const Text('Click Me')),
                  childData: Column(
                    children: const [
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                      Text('add more'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
