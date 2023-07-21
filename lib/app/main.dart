import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finances App',
      home: const MainPage(),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => Text('page A'),
        '/b': (BuildContext context) => Text('page B'),
        '/c': (BuildContext context) => Text('page C'),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.list_alt),
            onPressed: () {},
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TabsBlock(),
      ),
    );
  }
}

class TabsBlock extends StatelessWidget {
  const TabsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: 300,
                    child: const Text('Container'),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const OperationItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OperationItem extends StatelessWidget {
  const OperationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          color: Colors.amber,
        ),
        height: 30,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Some text",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
