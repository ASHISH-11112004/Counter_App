
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 188, 219, 11),
          primary: Colors.purple, // Override primary color
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
  var count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('COUNTER_APP'),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: $count', style:TextStyle(fontFamily: 'fontMain', fontSize: 34)),
            Container(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                  print('Count: $count');
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, // Set background color to violet
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Make corners square
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding as needed
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min, // Make row take minimum space
                children: const [
                  Icon(Icons.add,color: Colors.black,), // Add plus icon
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('Increment Counter',style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}