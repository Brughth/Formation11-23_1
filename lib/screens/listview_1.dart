import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/gridview_builder_screen.dart';
import 'package:flutter_application_1/screens/gridview_screen.dart';
import 'package:flutter_application_1/screens/listview_builder_screen.dart';
import 'package:flutter_application_1/screens/listview_separated_screen.dart';

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
      body: ListView(
        children: [
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
          const Divider(),
          ListTile(
            leading: const CircleAvatar(),
            title: const Text("Listviw Separated"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ListViewSeparatedScreen(
                  title: 'Listviw Separated',
                );
              }));
            },
            subtitle: const Text(
              "Le widget ListView.separated est utilisé pour afficher une liste d'éléments séparés par un widget séparateur.",
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(),
            title: const Text("GridView"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const GridviewScreen();
              }));
            },
            subtitle: const Text(
              "Le widget GridView de base est le plus simple et le plus rapide à utiliser.",
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(),
            title: const Text("GridView Builder"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const GridViewBuilderScreen();
              }));
            },
            subtitle: const Text(
              "Le widget GridView.builder est plus performant que le GridView. Il crée et rend les éléments de la grille de manière paresseuse.",
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ],
      ),
    );
  }
}
