import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatelessWidget {
  const GridViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> items = List.generate(16, (i) => i);
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            // ignore: sort_child_properties_last
            child: Center(
              child: Text(
                index.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              // color: Colors.primaries[index],
              // borderRadius: BorderRadius.circular(8),
              border: Border(
                bottom: BorderSide(),
                right: (index % 2) == 0 ? BorderSide() : BorderSide.none,
              ),
            ),
          );
        },
      ),
    );
  }
}
