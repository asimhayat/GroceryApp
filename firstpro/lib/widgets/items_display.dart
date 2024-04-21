import 'package:firstpro/screens/allitems_screen.dart';
import 'package:firstpro/screens/detail_screen.dart';
import 'package:firstpro/data/food_details.dart';
import 'package:flutter/material.dart';

class ItemsDisplay extends StatefulWidget {
  const ItemsDisplay({super.key});

  @override
  State<ItemsDisplay> createState() => _ItemsDisplayState();
}

class _ItemsDisplayState extends State<ItemsDisplay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const AllItems()));
          },
          child: const Text(
            'Search in Products List',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
          margin: const EdgeInsets.only(bottom: 10),
          child: Image.asset(
            "images/banner.png",
            height: 150,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Exclusive Offer",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const AllItems()));
              },
              child: const Text(
                "See all",
                style: TextStyle(
                  color: Color(0xFF53B175),
                ),
              ),
            ),
          ],
        ),

        //********************EXCLUSIVE ITEMS */
        GridView.builder(
          shrinkWrap: true,
          itemCount: exclusiveItems.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 265,
          ),
          itemBuilder: (context, index) {
            FoodDetail food = exclusiveItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              food: food,
                            )));
              },
              child: Container(
                height: 265,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: ClipRRect(
                            // borderRadius: BorderRadius.circular(125),
                            child: Image.asset(
                              food.image,
                              height: 120,
                              // width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            food.name,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text(
                                food.qunty_price,
                                style: const TextStyle(color: Colors.black38),
                              ),
                              const Spacer(),
                              const SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '\$${food.price}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Colors.black),
                              ),
                            ),
                            //PLUS BUTTON ADD TO CART BUTTON
                            const Align(
                              alignment: Alignment.bottomRight,
                              child: Material(
                                color: Color(0xFF53B175),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: InkWell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 20,
        ),

        //********************BEST SELLING */

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const AllItems()));
              },
              child: const Text(
                "See all",
                style: TextStyle(
                  color: Color(0xFF53B175),
                ),
              ),
            ),
          ],
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: bestSelling.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 265,
          ),
          itemBuilder: (context, index) {
            FoodDetail food = bestSelling[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              food: food,
                            )));
              },
              child: Container(
                height: 265,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: ClipRRect(
                            // borderRadius: BorderRadius.circular(125),
                            child: Image.asset(
                              food.image,
                              height: 120,
                              // width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            food.name,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text(
                                food.qunty_price,
                                style: const TextStyle(color: Colors.black38),
                              ),
                              const Spacer(),
                              const SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '\$${food.price}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Colors.black),
                              ),
                            ),
                            //PLUS BUTTON ADD TO CART BUTTON
                            const Align(
                              alignment: Alignment.bottomRight,
                              child: Material(
                                color: Color(0xFF53B175),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: InkWell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 20,
        ),

        Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Groceries",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllItems()));
                  },
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xFF53B175),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //********************GROCERIES */
            SizedBox(
              height: 140, // Height of each tile
              child: ListView.builder(
                scrollDirection:
                    Axis.horizontal, // Set the scroll direction to horizontal
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: groceries.length,
                itemBuilder: (context, index) {
                  // Replace 'GroceryDetail' with your data model
                  FoodDetail food = groceries[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            food: food,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 300,
                      height: 10, // Width of each tile
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5), // Adjust margin as needed
                      decoration: BoxDecoration(
                        color: Color(0xFFFEF1E4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Center(
                            child: ClipRRect(
                              // borderRadius: BorderRadius.circular(150),
                              child: Image.asset(
                                food.image,
                                height: 120,
                                // width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            //********************MEAT */

            SizedBox(
              height: 265, // Height of each tile
              child: ListView.builder(
                scrollDirection:
                    Axis.horizontal, // Set the scroll direction to horizontal
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: meat.length,
                itemBuilder: (context, index) {
                  // Replace 'GroceryDetail' with your data model
                  FoodDetail food = meat[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            food: food,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 200, // Width of each tile
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5), // Adjust margin as needed
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15),
                          Center(
                            child: ClipRRect(
                              // borderRadius: BorderRadius.circular(125),
                              child: Image.asset(
                                food.image,
                                height: 120,
                                // width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              food.name,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Text(
                                  food.qunty_price,
                                  style: const TextStyle(color: Colors.black38),
                                ),
                                Spacer(),
                                SizedBox(width: 4),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  '\$${food.price}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              //PLUS BUTTON ADD TO CART BUTTON
                              const Align(
                                alignment: Alignment.bottomRight,
                                child: Material(
                                  color: Color(0xFF53B175),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: InkWell(
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
