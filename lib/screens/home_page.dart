import 'package:flutter/material.dart';
import 'package:image_gallery/model/all_data.dart';
import 'package:image_gallery/model/item_list.dart';
import 'package:image_gallery/screens/details_page.dart';
import 'package:image_gallery/util/colors.dart';
import 'package:quickalert/quickalert.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int gridCount = 2;
  List<CategoryItem> categoryList = Database.categoryList;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _appBar(),
      body: GridView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    categoryName: categoryList[index].getCategoryName(),
                    categoryTitle: categoryList[index].getTitle(),
                    categoryImage: categoryList[index].getImage(),
                    categoryDescription: categoryList[index].getDescription(),
                    imageList: categoryList[index].getImageItem(),

                    categoryList: categoryList,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridTile(
                footer: Container(
                  padding: const EdgeInsets.only(
                      bottom: 1.0, left: 10.0, right: 5.0),
                  child: Text(
                    categoryList[index].getCategoryName(),
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
                    image: categoryList[index].getImage(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: screenWidth >= 1200
              ? 6
              : screenWidth >= 1000
                  ? 5
                  : screenWidth >= 800
                      ? 4
                      : screenWidth >= 600
                          ? 3
                          : gridCount,
        ),
      ),
    );
  }

  // App Bar here ===========
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
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      title: const Text(
        "PHOTO GALLERY",
        style: TextStyle(
            color: Colors.white, fontFamily: 'PoppinsBold', fontSize: 19),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            QuickAlert.show(
              context: context,
              type: QuickAlertType.success,
              title: "Do you want to change grid column ?",
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: gridCount == 2 ? greenColor : Colors.orange,
                            width: 2)),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          gridCount = 2;
                          Navigator.pop(context);
                        });
                      },
                      child: const Text(
                        '2',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: gridCount == 3 ? greenColor : Colors.orange,
                            width: 2)),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          gridCount = 3;
                          Navigator.pop(context);
                        });
                      },
                      child: const Text(
                        '3',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: gridCount == 4 ? greenColor : Colors.orange,
                          width: 2),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          gridCount = 4;
                          Navigator.pop(context);
                        });
                      },
                      child: const Text(
                        '4',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          icon: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
