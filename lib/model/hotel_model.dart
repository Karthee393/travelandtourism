class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Cinnamon Red',
    address: 'Lakeside Colombo 3',
    price: 5000,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Taj Samuthra',
    address: 'Galle Road Colombo 4',
    price:10000,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hilton',
    address: 'Galle road, Galkissa',
    price: 5000,
  ),
];
