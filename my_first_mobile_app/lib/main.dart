import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Cl0ud R4p 20l6'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  int counter = 1;
  void PreviousPicture()
  {
    setState(()
    {
      counter--;
      if (counter == 0)
        counter = 4;
    });
  }

  void NextPicture()
  {
    setState(()
    {
      counter++;
      if (counter == 5)
        counter = 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text
              (
              'tap the buttons to change aesthetic pics . . .',
              style: TextStyle(fontSize:18, fontStyle: FontStyle.italic),
            ),
            Image.asset("assets/pics/$counter.jpg" ,fit:BoxFit.contain),
            Text
              (
              'pic number $counter'
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: PreviousPicture,
                  child: Text(
                    '<-'
                  )
                ),
                ElevatedButton(
                  onPressed: NextPicture,
                  child: Text(
                    '->'
                  )
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}
