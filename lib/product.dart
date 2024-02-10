// {
// "albumId": 1,
//     "id": 1,
//     "title": "accusamus beatae ad facilis cum similique qui sunt",
//     "url": "https://via.placeholder.com/600/92c952",
//     "thumbnailUrl": "https://via.placeholder.com/150/92c952"
// }

class Product {
  dynamic id;
  dynamic albumId;
  dynamic title;
  dynamic url;
  dynamic thumbnailUrl;

  Product({
    this.id,
    this.albumId,
    this.title,
    this.url,
    this.thumbnailUrl
  });

  Product.fromJson(Map<dynamic,dynamic> json) {
    id = json['id'];
    albumId = json['albumId'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String,dynamic> toJson() {
    return {
      "id": id,
      "albumId": albumId,
      "title": title,
      "url": url,
      "thumbnailUrl": thumbnailUrl,
    };
  }

}