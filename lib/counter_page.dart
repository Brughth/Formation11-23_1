import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_page.dart';
import 'package:flutter_application_1/home_page.dart';

class CounterPage extends StatefulWidget {
  final String title;

  const CounterPage({
    super.key,
    required this.title,
  });

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late int counter;

  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          "$counter",
          style: const TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.extended(
            heroTag: "increment",
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            label: const Text("Increment"),
            icon: const Icon(Icons.add),
          ),
          SizedBox(height: 20),
          FloatingActionButton.extended(
            heroTag: "decrement",
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            label: const Text("Decrement"),
            icon: const Icon(Icons.remove),
          ),
          const SizedBox(height: 20),
          FloatingActionButton.extended(
            heroTag: "next_page",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
            label: const Text("Next Page"),
            icon: const Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
