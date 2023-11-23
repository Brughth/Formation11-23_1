import 'package:flutter/material.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "Formation 11/23",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 35,
          )
        ],
      ),
      body: Stack(
        //alignment: Alignment.center,
        children: [
          Container(
            height: 220,
            width: 220,
            decoration: const BoxDecoration(
              //color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              color: Colors.brown,
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            top: 100,
            right: 0,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
      // body: ListView(
      //   padding: EdgeInsets.all(8),
      //   children: [
      //     Stack(
      //       children: [
      //         Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.brown,
      //         ),
      //         Positioned(
      //           top: 0,
      //           right: 0,
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.deepOrange,
      //           ),
      //         )
      //       ],
      //     ),
      //     SizedBox(
      //       height: 110,
      //       child: ListView(
      //         scrollDirection: Axis.horizontal,
      //         children: [
      //           for (var i = 0; i <= 10; i++)
      //             Padding(
      //               padding: const EdgeInsets.only(right: 8),
      //               child: Container(
      //                 width: 100,
      //                 height: 100,
      //                 color: Colors.green,
      //               ),
      //             ),
      //         ],
      //       ),
      //     ),
      //     SizedBox(height: 20),
      //     for (var i = 0; i <= 2; i++)
      //       Padding(
      //         padding: const EdgeInsets.only(bottom: 10),
      //         child: Container(
      //           width: MediaQuery.sizeOf(context).width,
      //           height: 150,
      //           decoration: BoxDecoration(
      //             boxShadow: [
      //               BoxShadow(
      //                 color: Colors.grey.withOpacity(.4),
      //                 offset: const Offset(10, 10),
      //               )
      //             ],
      //             color: Colors.purple,
      //             border: Border.all(
      //               color: Colors.black,
      //               width: 5,
      //             ),
      //             //shape: BoxShape.circle
      //             borderRadius: const BorderRadius.only(
      //               topRight: Radius.circular(15),
      //               bottomLeft: Radius.circular(15),
      //             ),
      //           ),
      //         ),
      //       ),
      //     SizedBox(height: 20),
      //   ],
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(16),
      //   child: Column(
      //     children: [
      //       Container(
      //         width: MediaQuery.sizeOf(context).width,
      //         height: 150,
      //         decoration: const BoxDecoration(
      //           color: Colors.purple,
      //         ),
      //       ),
      //       const SizedBox(height: 8),
      //       Container(
      //         width: MediaQuery.sizeOf(context).width,
      //         height: 150,
      //         decoration: const BoxDecoration(
      //           color: Colors.purple,
      //         ),
      //       ),
      //       const SizedBox(height: 8),
      //       Container(
      //         width: MediaQuery.sizeOf(context).width,
      //         height: 150,
      //         decoration: const BoxDecoration(
      //           color: Colors.purple,
      //         ),
      //       ),
      //       const SizedBox(height: 8),
      //       Container(
      //         width: MediaQuery.sizeOf(context).width,
      //         height: 150,
      //         decoration: const BoxDecoration(
      //           color: Colors.purple,
      //         ),
      //       ),
      //       const SizedBox(height: 8),
      //       Container(
      //         width: MediaQuery.sizeOf(context).width,
      //         height: 150,
      //         decoration: const BoxDecoration(
      //           color: Colors.purple,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
