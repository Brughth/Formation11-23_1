import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 100,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 35,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.menu,
            size: 35,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              //height: 116,
              width: 340,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Welcome to Plants"),
                          const SizedBox(height: 8),
                          RichText(
                            text: const TextSpan(
                              text: "LET’S MAKE A \nBETTER ",
                              children: [
                                TextSpan(
                                  text: 'PLANTS',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Welcome to Plants LET’S MAKE A BETTER PLANTS We are an online plants shop offering a wide range of cheap and trendy plants.",
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 100,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color(0xff00337E),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                "BOOK NOW",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.orangeAccent,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.category,
                            color: Colors.white,
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Clothing",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                for (var i = 0; i <= 10; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.category,
                              color: Colors.grey[850],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Clothing",
                              style: TextStyle(
                                color: Colors.grey[850],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.sort),
                      SizedBox(width: 8),
                      Text("Sort By"),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              children: [
                for (var i = 0; i <= 10; i++) const ProductWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
