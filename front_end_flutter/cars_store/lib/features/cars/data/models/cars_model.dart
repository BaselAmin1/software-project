class Cars {
  int? id;
  String? model;
  String? price;
  String? caption;
  bool? availabilty;
  String? image;
  String? updated;
  String? created;

  Cars(
      {this.id,
      this.model,
      this.price,
      this.caption,
      this.availabilty,
      this.image,
      this.updated,
      this.created});

  Cars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    model = json['model'];
    price = json['price'];
    caption = json['caption'];
    availabilty = json['availabilty'];
    image = json['image'];
    updated = json['updated'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['model'] = this.model;
    data['price'] = this.price;
    data['caption'] = this.caption;
    data['availabilty'] = this.availabilty;
    data['image'] = this.image;
    data['updated'] = this.updated;
    data['created'] = this.created;
    return data;
  }
}