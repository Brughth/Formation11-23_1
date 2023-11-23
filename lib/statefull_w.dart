import 'package:flutter/material.dart';

class MyStateFullWidget extends StatefulWidget {
  const MyStateFullWidget({super.key});

  @override
  State<MyStateFullWidget> createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget> {
  late String name;

  @override
  void initState() {
    name = "Hello !";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateFull Widget"),
      ),
      body: Center(
        child: Text(
          name,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
