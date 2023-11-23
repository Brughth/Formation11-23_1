import 'package:flutter/material.dart';

class ListViewSeparatedScreen extends StatelessWidget {
  final String title;
  ListViewSeparatedScreen({
    super.key,
    required this.title,
  });

  List<int> items = List.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: items.length,
          //physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            if (index == 2) {
              return SizedBox();
            } else {
              return Container(
                height: 10,
                color: Colors.grey,
              );
            }
          },
          itemBuilder: (context, index) {
            var item = items[index];
            return ListTile(
              leading: CircleAvatar(),
              title: Text("Title $index"),
              subtitle: Text(" Description du Title $item"),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      ),
    );
  }
}
