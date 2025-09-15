class ProductModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  double rating;
  int ratingCount;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
    required this.ratingCount,
  });

  factory ProductModel.fromJson(Map json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      //price: ['price'] * 1.0,
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: json['rating']['rate'] * 1.0,
      ratingCount: json['rating']['count'],
    );
  }
}
// class Rating {
//   double rate;
//   int count;
//
//   Rating({
//     required this.rate,
//     required this.count,
//   });
//
//   factory Rating.fromJson(Map<String, dynamic> json) {
//     return Rating(
//       rate: (json['rate'] as num).toDouble(),
//       count: json['count'],
//     );
//   }
// }

/*
 {
    "id": 1,
    "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
    "price": 109.95,
    "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png",
    "rating": {
      "rate": 3.9,
      "count": 120
    }
  }
 */