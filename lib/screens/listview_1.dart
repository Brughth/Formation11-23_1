import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/listview_builder_screen.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Listview 1",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(children: [
        const ListTile(
          leading: CircleAvatar(),
          title: Text("Listviw 1"),
          subtitle: Text(
              "Le widget ListView de base est le plus simple et le plus rapide à utiliser."),
          trailing: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
        const Divider(),
        ListTile(
          leading: const CircleAvatar(),
          title: const Text("Listviw Builder"),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return ListViewBuilderScreen();
            }));
          },
          subtitle: const Text(
            "Le widget ListView.builder est plus performant que le ListView de base.",
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ]),
    );
  }
}
