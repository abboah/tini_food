class Model {
  String name;
  String date;
  String image;

  Model({
    required this.name,
    required this.date,
    required this.image,
  });

  static List<Model> model = [];
  static void initialiseM() {
    model = [
      Model(
          name: "Discount all Excelsa 20% in all stores",
          date: "20/04/20 - 06/09/2020",
          image: "assets/images/Image1.png"),
      Model(
          name: "Discount all Liberica 20% in all stores",
          date: "20/04/20 - 06/09/2020",
          image: "assets/images/Image2.png"),
      Model(
          name: "Discount all Arabica 20% in all stores",
          date: "20/04/20 - 06/09/2020",
          image: "assets/images/Image3.png"),
      Model(
          name: "Discount all Robusta 20% in all stores",
          date: "20/04/20 - 06/09/2020",
          image: "assets/images/Image4.png"),
    ];
  }
}
