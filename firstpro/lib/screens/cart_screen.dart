import 'package:firstpro/data/food_details.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final List items;
  const CartScreen({super.key, required this.items});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

int quantity = 1;

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CART",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: widget.items.isEmpty
          ? Center(child: Text("EmptyCart"))
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: widget.items.length,
                      itemBuilder: (context, index) {
                        FoodDetail food = widget.items[index];
                        return Container(
                          width: 100, // Width of each tile
                          margin: const EdgeInsets.symmetric(
                              vertical: 10), // Adjust margin as needed
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFFE2E2E2), width: 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    food.image,
                                    height: 100,
                                    width: 130,
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Text(
                                        food.name,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19,
                                        ),
                                      ),
                                      Text(
                                        '\$${food.qunty_price}',
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Material(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(500),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                if (quantity > 1) {
                                                  quantity -= 1;
                                                  setState(() {});
                                                }
                                              },
                                              icon: const Icon(
                                                Icons.remove,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "$quantity",
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                quantity += 1;
                                                setState(() {});
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            widget.items.removeAt(index);
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            Icons.close,
                                            color: Colors.grey,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '\$${food.price}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                        );
                      },
                    ),
                    Container(
                      width: double.infinity,
                      height: 55,
                      margin: const EdgeInsets.all(20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF53B175),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: const Text(
                            "Go To Checkout",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
