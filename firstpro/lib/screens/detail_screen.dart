import 'package:firstpro/data/categories_details.dart';
import 'package:firstpro/data/food_details.dart';
import 'package:firstpro/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.food});
  final FoodDetail food;

  @override
  State<DetailScreen> createState() => _DetailPageState();
}

int quantity = 1;

class _DetailPageState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(cartItems.length.toString()),
            Spacer(),
            GestureDetector(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(
                      items: cartItems,
                    ),
                  ),
                );
                setState(() {});
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(213, 214, 213, 0.996),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          // detail header
          detailItemsHeader(),
          // for image
          detailImage(),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // For name
                          Text(
                            widget.food.name,
                            // maxLines: 1,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 34),
                          ),
                          // For price
                          Text(
                            '\$${widget.food.price}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Color(0xFF53B175)),
                          ),
                        ],
                      ),
                    ),
                    // For items quantity
                    Material(
                      color: Color(0xFF53B175),
                      borderRadius: BorderRadius.circular(500),
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
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "$quantity",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 25),
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
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 27,
                ),
                const Text(
                  "Product Detail",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                // For description
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.food.description,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
                // For add to cart button
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    cartItems.add(widget.food);
                    setState(() {});
                  },
                  child: Material(
                    color: Color(0xFF53B175),
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 21),
                        child: const Text(
                          "Add to Cart",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox detailImage() {
    return SizedBox(
      height: 370,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: ClipRRect(
                // borderRadius: BorderRadius.all(Radius.circular(150)),
                child: Image.asset(
                  widget.food.image,
                  height: 300,
                  // width: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding detailItemsHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          // For back button
          Material(
            color: Color(0xFF53B175),
            borderRadius: BorderRadius.circular(10),
            child: const BackButton(
              color: Colors.white,
            ),
          ),
          const Spacer(),
          // For detail food

          const Spacer(),
          Material(
            color: const Color.fromARGB(255, 202, 201, 201).withOpacity(0.21),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.favorite_border,
                  color: Color(0xFF53B175),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
