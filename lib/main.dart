import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Routing and Navigation",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation and Routing "),
      ),
       body: Center(
        child: ElevatedButton(
          child: const Text('Open second widget'),
          onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: 
                (context)=>MySecondWidget()));
          },
        ),
      ),
    );
  }
} 

class MySecondWidget extends StatelessWidget {
  const MySecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation and Routing "),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
         Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),      

    );
  }
}



