import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
      home: const MyHomePage(title: '𝙘𝙡𝙤𝙪𝙙 𝙧𝙖𝙥'),
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
  int counterCurrent = 1;
  Random random = Random();
  void previousPicture()
  {
    setState(()
    {
      counter--;
      if (counter == 0) {
        counter = 10;
      }
    });
  }

  void nextPicture()
  {
    setState(()
    {
      counter++;
      if (counter == 11) {
        counter = 1;
      }
    });
  }

  void randomPicture()
  {
    setState(()
    {
      counterCurrent = counter;
      counter = random.nextInt(10) + 1;
      if (counter == counterCurrent)
        {
          counter = random.nextInt(10) + 1;
        }
    });
  }

      Future randomPictureEveryTiming() { //пока что меняет картинку 1 раз с задержкой в 1с
        return Future.delayed(const Duration(seconds: 1), () =>
            setState
              (
                    () {
                  counter = random.nextInt(10) + 1;
                }
            )
        );
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
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                    const Text
                    (
                      'Tap the buttons to change aesthetic pics ',
                      style: TextStyle(fontSize:18, fontStyle: FontStyle.italic),
                    ),

                Image.asset(
                    "assets/pics/crystal.gif",
                  width: 25,
                  height: 25,
                ),
                ]
            ),
            Column(
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child:
                Image.asset
                (
                  "assets/pics/$counter.jpg" ,
                  fit:BoxFit.cover,
                ),
                ),
                Text
                  (
                  'aesthetic pic number $counter'
                ),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: previousPicture,
                  child: const Icon (Icons.arrow_back)
                  ),
                Column (
                  children:[
                    ElevatedButton(
                        onPressed: randomPicture,
                        child: const Text ("Random")
                    ),
                    ElevatedButton(
                        onPressed: randomPictureEveryTiming,
                        child:
                          const Text ("Random every 1s"),
                    ),
                    ]
                ),
                ElevatedButton(
                  onPressed: nextPicture,
                  child: const Icon(Icons.arrow_forward)
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}
