class Model {
  String imageURL;
  String artist;
  String title;
  Model({required this.imageURL, required this.artist, required this.title});
}

final List<Model> itemList = [
  Model(
      imageURL: "images/alesia.jpg",
      artist: "JASON SAM",
      title: "Winners home"),
  Model(
      imageURL: "images/andre.jpg",
      artist: "Andres Smith",
      title: "Love story"),
  Model(
      imageURL: "images/mendes.jpg",
      artist: "JASON SAM",
      title: "Winners home"),
  Model(
      imageURL: "images/burak.jpg", artist: "JASON SAM", title: "Winners home"),
];
