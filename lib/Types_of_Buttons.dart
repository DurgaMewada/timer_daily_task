import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade900,
          centerTitle: true,
          title: Text('Button',style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white ,
          ),),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){}, child: Text('See More')),
              ElevatedButton(onPressed: (){}, child: Text('Click to See')),
              IconButton(onPressed: (){}, icon: Icon(Icons.add),),
              FloatingActionButton(onPressed: (){},child: Text('Button'),),
              FilledButton(onPressed: (){}, child: Text('Filled Button')),
              OutlinedButton(onPressed: (){}, child: Text('Outlined Button')),
            ],
          ),
        ),
      ),
    );
  }
}
