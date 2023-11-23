import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  var dPadding = const EdgeInsets.symmetric(
    horizontal: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 20,
          ),
          Padding(
            padding: dPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Mon Panier",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff11422f),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    child: Text(
                      "Caisse >",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: dPadding,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total 5 Articles",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff11422f),
                        ),
                      ),
                      Text(
                        "Vider le Panier",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 25,
                  thickness: .5,
                ),
                for (var i = 0; i <= 30; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 15,
                    ),
                    child: SizedBox(
                      height: 120,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black45,
                              ),
                            ),
                            child: Icon(
                              Icons.remove,
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 90,
                            color: Colors.red,
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Casquette avec Logo - Militair"
                                      .toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "\$7.77".toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("1"),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.arrow_drop_down,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
