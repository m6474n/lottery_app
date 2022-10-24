import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  int lot = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          
          title: const Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Lottery number is $lot',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
                child: Container(
              width: 330,
              height: 150,
              decoration: BoxDecoration(
                  color: x == lot ? Colors.green.shade100 : Colors.black12,
                  borderRadius: BorderRadius.circular(50)),
              child: x == lot
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done_all,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Congratulations You Won the lottery! \n Your number is $x',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Better Luck Next Time! \n Your number is $x',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
            )),
            const SizedBox(
              height: 40,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {});
                x = random.nextInt(10);
                print(x);
              },
              child: const Icon(Icons.restart_alt),
            )
          ],
        ),
      ),
    );
  }
}
