import 'package:flutter/material.dart';

import '../models/restaurant.dart';

final List<Restaurant> _restaurants = [
  Restaurant(
    name: "Friends",
    description: "32 Places",
    image:
        "https://image.shutterstock.com/shutterstock/photos/1046607349/display_1500/stock-photo-three-male-friends-on-a-road-trip-using-a-tablet-computer-1046607349.jpg",
  ),
  Restaurant(
      name: "Family",
      description: "14 Places",
      image:
          "https://image.shutterstock.com/image-photo/happy-family-mother-father-children-600w-1438256546.jpg"),
  Restaurant(
    name: "Cedar",
    description: "Farm",
    image:
        "https://scontent.famm10-1.fna.fbcdn.net/v/t1.6435-9/105491772_101386758301418_668664552101674925_n.jpg?stp=dst-jpg_p640x640&_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=PIFHv4ws4bgAX9yJdkR&_nc_ht=scontent.famm10-1.fna&oh=00_AT_389uh-ZeKQ0cadctnutOJIaoznOwTYEOOmtJmVlLP_g&oe=62B04E0F",
  ),

  // Restaurant(),
];

class CarouselImage extends StatelessWidget {
  const CarouselImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<Widget> banners = [];
    // for (final res in _restaurants) {
    //   var bannerView = BannerView(res: res);
    //   banners.add(bannerView);
    // }
    return Container(
      // width: 300,
      height: 200,
      child: PageView.builder(
        itemCount: _restaurants.length,
        itemBuilder: (context, index) {
          return BannerView(res: _restaurants[index % _restaurants.length]);
        },
        scrollDirection: Axis.horizontal,
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.9,
        ),
        // children: banners,
      ),
    );
  }
}

class BannerView extends StatelessWidget {
  const BannerView({
    Key? key,
    required this.res,
  }) : super(key: key);

  final Restaurant res;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(69, 54, 51, 51),
                    offset: Offset(4, 4),
                  )
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                res.image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    res.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    res.description,
                    style: TextStyle(
                      color: Color.fromARGB(255, 228, 221, 221),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
          fit: StackFit.expand,
        ),
      ),
    );
  }
}
