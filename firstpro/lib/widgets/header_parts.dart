import 'package:flutter/material.dart';
import 'package:firstpro/widgets/searchbar.dart';

class HeaderParts extends StatefulWidget {
  const HeaderParts({super.key});

  @override
  State<HeaderParts> createState() => _HeaderPartsState();
}

int indexCategory = 0;

class _HeaderPartsState extends State<HeaderParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        topHeader(),
        const SizedBox(
          height: 20,
        ),

        //SEARCH BAR
        const Searchbar(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Padding topHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SafeArea(
            child: Image.asset(
              "images/carrot.png",
              height: 25,
            ),
          ),
          const Row(
            children: [
              Spacer(),
              // For location
              Icon(
                Icons.location_on,
                color: Colors.black,
                size: 18,
              ),
              Text(
                "Karachi, Pakistan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
