class Category {
  String id;
  String image;
  String name;

  Category({
    required this.id,
    required this.image,
    required this.name,
  });
}

List cartItems = [];
//CATEGORIES
List<Category> categories = [
  Category(
    id: '1',
    image: 'images/freshfruitandveg.png',
    name: 'Fresh Fruits & Vegetable',
  ),
  Category(
    id: '2',
    image: "images/oil.png",
    name: 'Cooking Oil & Ghee',
  ),
  Category(
    id: '3',
    image: 'images/meatandfish.png',
    name: 'Meat & Fish',
  ),
  Category(
    id: '4',
    image: "images/bakery.png",
    name: 'Bakery & Snacks',
  ),
  Category(
    id: '5',
    image: 'images/milk.png',
    name: 'Dairy & Eggs',
  ),
  Category(
    id: '6',
    image: "images/beverages.png",
    name: 'Beverages',
  ),
];
