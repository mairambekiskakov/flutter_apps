import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 214, 233),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'First Screen of My Appl',
          style: TextStyle(
            color: Colors.black,
          ),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                // ignore: prefer_const_constructors
                child: Center(
                  child: const Text(
                    '2',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    ));
  }
}
