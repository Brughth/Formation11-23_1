import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: GridView(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        children: List.generate(
          16,
          (index) => Container(
            decoration: BoxDecoration(
              color: Colors.primaries[index],
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
