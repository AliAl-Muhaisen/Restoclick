import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restoclick/widgets/cardItem.dart';
import 'package:restoclick/widgets/carouselImage.dart';
import '../models/restaurant.dart';
import '../themes/stander/text.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Restaurant> _restaurants = [
    Restaurant(
      name: "Starbucks",
      description: "Coffee House",
      image:
          "https://scontent.famm10-1.fna.fbcdn.net/v/t1.6435-9/105491772_101386758301418_668664552101674925_n.jpg?stp=dst-jpg_p640x640&_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=PIFHv4ws4bgAX9yJdkR&_nc_ht=scontent.famm10-1.fna&oh=00_AT_389uh-ZeKQ0cadctnutOJIaoznOwTYEOOmtJmVlLP_g&oe=62B04E0F",
    ),
    Restaurant(
        name: "Ward",
        description: "Restaurant",
        image:
            "https://scontent.famm10-1.fna.fbcdn.net/v/t1.6435-9/105491772_101386758301418_668664552101674925_n.jpg?stp=dst-jpg_p640x640&_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=PIFHv4ws4bgAX9yJdkR&_nc_ht=scontent.famm10-1.fna&oh=00_AT_389uh-ZeKQ0cadctnutOJIaoznOwTYEOOmtJmVlLP_g&oe=62B04E0F"),
    Restaurant(
      name: "Cedar",
      description: "Farm",
      image:
          "https://scontent.famm10-1.fna.fbcdn.net/v/t1.6435-9/105491772_101386758301418_668664552101674925_n.jpg?stp=dst-jpg_p640x640&_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=PIFHv4ws4bgAX9yJdkR&_nc_ht=scontent.famm10-1.fna&oh=00_AT_389uh-ZeKQ0cadctnutOJIaoznOwTYEOOmtJmVlLP_g&oe=62B04E0F",
    ),

    // Restaurant(),
  ];

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: Text('1'),
      color: CupertinoColors.darkBackgroundGray,
    ),
    Container(
      alignment: Alignment.center,
      child: Text('2'),
      color: CupertinoColors.activeOrange,
    ),
    Container(
      alignment: Alignment.center,
      child: Text('3'),
      color: CupertinoColors.activeBlue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Type',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CarouselImage(),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Text(
            'Theme',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(height: 300),
          items: _restaurants.map((res) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: CardItem(
                      description: res.description,
                      image: res.image,
                      title: res.name,
                    ));
              },
            );
          }).toList(),
        ),
      ],
    );

    //CarouselImage();
    // Column(
    //   children: _restaurants.map((index) {
    //     // ignore: avoid_print
    //     return (CarouselImage());
    //   }).toList(),
    // );
    // Material(
    // height: 300,
    // width: 300,
    //   child: ListView.builder(
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return Container(
    //         alignment: Alignment.topLeft,
    //         // fit: BoxFit.fitHeight,
    //         child: Card(
    //           // clipBehavior: Clip.antiAlias,
    //           elevation: 7,
    //           margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    //           child: Column(
    //             children: [
    //               Image.network(
    //                 _restaurants[index].image,
    //                 fit: BoxFit.fill,
    //                 width: 100,
    //                 height: 100,
    //               ),
    //               ListTile(
    //                 // leading: FittedBox(
    //                 //   child: Image.network(
    //                 //     _restaurants[index].image,
    //                 //     fit: BoxFit.cover,
    //                 //   ),
    //                 // ),
    //                 title: Text(_restaurants[index].name),
    //                 subtitle: Text(_restaurants[index].description),
    //                 trailing: Icon(Icons.heart_broken, color: Colors.red),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(16.0),
    //                 child: Text(
    //                   'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
    //                   style: TextStyle(color: Colors.black.withOpacity(0.6)),
    //                 ),
    //               ),
    //             ],
    //           ),

    //           // Card(
    //           //   elevation: 7,
    //           //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    //           //   // clipBehavior: Clip.antiAlias,
    //           //   child: ListTile(
    //           //     leading: FittedBox(
    //           //       child: Image.network(
    //           //         _restaurants[index].image,
    //           //         fit: BoxFit.cover,
    //           //       ),
    //           //     ),
    //           //     title: Text("${_restaurants[index].name}"),
    //           //     subtitle: Text("${_restaurants[index].description}"),
    //           //   ),
    //           // ),
    //         ),
    //       );
    //     },
    //     itemCount: _restaurants.length,
    //   ),
    // );
    //  ListView(
    //   children: [
    //     Card(
    //       clipBehavior: Clip.antiAlias,
    //       child: Column(
    //         children: [
    //           ListTile(
    //             leading: Icon(Icons.arrow_drop_down_circle),
    //             title: const Text('Card title 1'),
    //             subtitle: Text(
    //               'Secondary Text',
    //               style: TextStyle(color: Colors.black.withOpacity(0.6)),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(16.0),
    //             child: Text(
    //               'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
    //               style: TextStyle(color: Colors.black.withOpacity(0.6)),
    //             ),
    //           ),
    //           ButtonBar(
    //             alignment: MainAxisAlignment.start,
    //             children: [
    //               FlatButton(
    //                 onPressed: () {
    //                   // Perform some action
    //                 },
    //                 child: const Text('ACTION 1'),
    //               ),
    //               FlatButton(
    //                 onPressed: () {
    //                   // Perform some action
    //                 },
    //                 child: const Text('ACTION 2'),
    //               ),
    //             ],
    //           ),
    //           Image.asset('assets/card-sample-image.jpg'),
    //         ],
    //       ),
    //     ),
    //     Card(
    //       clipBehavior: Clip.antiAlias,
    //       child: Column(
    //         children: [
    //           ListTile(
    //             leading: Icon(Icons.arrow_drop_down_circle),
    //             title: const Text('Card title 1'),
    //             subtitle: Text(
    //               'Secondary Text',
    //               style: TextStyle(color: Colors.black.withOpacity(0.6)),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(16.0),
    //             child: Text(
    //               'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
    //               style: TextStyle(color: Colors.black.withOpacity(0.6)),
    //             ),
    //           ),
    //           ButtonBar(
    //             alignment: MainAxisAlignment.start,
    //             children: [
    //               FlatButton(
    //                 onPressed: () {
    //                   // Perform some action
    //                 },
    //                 child: const Text('ACTION 1'),
    //               ),
    //               FlatButton(
    //                 onPressed: () {
    //                   // Perform some action
    //                 },
    //                 child: const Text('ACTION 2'),
    //               ),
    //             ],
    //           ),
    //           Image.network(
    //               'https://media.vanityfair.com/photos/624db93288fcf914e1a594bc/master/w_1600%2Cc_limit/Steven%2520Joyce-JOS2021050D00077.jpg'),
    //         ],
    //       ),
    //     ),
    //   ],
    // );

    // CupertinoPageScaffold(
    //   child: Column(
    //     children: [
    //       Container(
    //         height: MediaQuery.of(context).size.height * 0.4,
    //         child: AppinioSwiper(
    //           controller: AppinioSwiperController(),
    //           onEnd: ()=> cards=cards,
    //           allowUnswipe: true,
    //           // unswipe: ()=>,
    //           direction: AppinioSwiperDirection.right,
    //           cards: cards,

    //         ),
    //       ),
    //       Container(child: Card(child: ),),
    //     ],
    //   ),
    // );
    //  Scaffold(

    //   body: Center(child: Text("Home Page",style: appNameTextStyle,)),
    // );
  }
}
