import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  ListViewBuilderScreen({super.key});

  List<int> items = List.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          //physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            var item = items[index];
            return ListTile(
              leading: CircleAvatar(),
              title: Text("Title $index"),
              subtitle: Text(" Description du Title $index"),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      ),
    );
  }
}
