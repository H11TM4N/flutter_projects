// ignore_for_file: public_member_api_docs, sort_constructors_first

class Pizza {
  int id;
  String pizzaName;
  String description;
  double price;
  String imageUrl;

  Pizza(
    this.id,
    this.description,
    this.pizzaName,
    this.imageUrl,
    this.price,
  );

  Pizza.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        description = json['description'],
        pizzaName = json['pizzaName'],
        imageUrl = json['imageUrl'],
        price = json['price'];
}
