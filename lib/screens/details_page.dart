import 'package:flutter/material.dart';
import 'package:image_gallery/model/item_list.dart';
import 'package:image_gallery/util/colors.dart';

class DetailsPage extends StatefulWidget {
  final String categoryName;
  final String categoryTitle;
  final String categoryImage;
  final String categoryDescription;
  final List<ImageItem> imageList;
  final List<CategoryItem> categoryList;

  const DetailsPage({
    super.key,
    required this.categoryName,
    required this.categoryTitle,
    required this.categoryImage,
    required this.categoryDescription,
    required this.imageList,
    required this.categoryList,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int gridCount = 2;
  late String categoryName = widget.categoryName,
      categoryTitle = widget.categoryTitle,
      categoryImage = widget.categoryImage,
      categoryDescription = widget.categoryDescription;

  late List<ImageItem> imageList = widget.imageList;

  final ScrollController _scrollController = ScrollController();

  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: _appBar(),
      body: screenWidth <= 600
          ? SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_mobileView()],
              ),
            )
          : _resPonsiveView(),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _resPonsiveView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: screenWidth / 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                categoryImage,
                width: screenWidth,
                height: screenHeight,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            width: screenWidth / 2,
            child: _imageDetails(),
          ),
        )
      ],
    );
  }

  Widget _mobileView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              categoryImage,
              height: 200,
              width: screenWidth,
              fit: BoxFit.cover,
            ),
          ),
        ),
        _imageDetails(),
      ],
    );
  }

  Widget _imageDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            categoryTitle,
            style: const TextStyle(
              fontFamily: 'Kalpurush',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            categoryDescription,
            style: const TextStyle(
              fontFamily: 'Kalpurush',
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: screenWidth,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: greenColor),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: screenHeight,
                        width: screenWidth,
                        child: _imageGrid(),
                      ),
                    );
                  },
                );
              },
              child: const Text(
                "See More",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Suggestions',
            style: TextStyle(
              fontFamily: 'Kalpurush',
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: greenColor,
            ),
          ),
        ),
        _gridView(),
      ],
    );
  }

  Widget _gridView() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: screenWidth >= 1200
            ? 6
            : screenWidth >= 1000
                ? 5
                : screenWidth >= 800
                    ? 3
                    : gridCount,
      ),
      itemCount: widget.categoryList.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              categoryImage = widget.categoryList[index].image!;
              categoryTitle = widget.categoryList[index].title!;
              categoryName = widget.categoryList[index].categoryName!;
              imageList = widget.categoryList[index].getImageItem();
              categoryDescription = widget.categoryList[index].description!;
              _scrollController.animateTo(
                0.0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridTile(
              footer: Container(
                padding:
                    const EdgeInsets.only(bottom: 1.0, left: 10.0, right: 5.0),
                child: Text(
                  widget.categoryList[index].getCategoryName(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'Kalpurush',
                      fontWeight: FontWeight.bold),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/loading_placeholder.png",
                  image: widget.categoryList[index].getImage(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _imageGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: screenWidth >= 1200
            ? 6
            : screenWidth >= 1000
                ? 5
                : screenWidth >= 800
                    ? 3
                    : gridCount,
      ),
      itemCount: imageList.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridTile(
              footer: Container(
                padding:
                    const EdgeInsets.only(bottom: 1.0, left: 10.0, right: 5.0),
                child: Text(
                  imageList[index].getTitle(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'Kalpurush',
                      fontWeight: FontWeight.bold),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/loading_placeholder.png",
                  image: imageList[index].getImageUrl(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: greenColor,
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        categoryName,
        style: const TextStyle(
            color: Colors.white, fontFamily: 'PoppinsBold', fontSize: 19),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
