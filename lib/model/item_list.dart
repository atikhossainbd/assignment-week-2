class CategoryItem {
  String? categoryName, title, description, image;
  List<ImageItem>? imageItem;
  static CategoryItem? categoryItem;

  CategoryItem(
      {required this.categoryName,
      this.title,
      required this.description,
      required this.image,
      required this.imageItem});

  String getCategoryName() {
    return categoryName!;
  }

  String getTitle() {
    return title!;
  }

  String getDescription() {
    return description!;
  }

  String getImage() {
    return image!;
  }

  List<ImageItem> getImageItem() {
    return imageItem!;
  }
} // CategoryItem end here ==========

class ImageItem {
  String? imageUrl, title, description;

  ImageItem(
      {required this.imageUrl, required this.title, required this.description});

  String getImageUrl() {
    return imageUrl!;
  }

  String getTitle() {
    return title!;
  }

  String getDescription() {
    return description!;
  }
}
