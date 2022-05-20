import 'package:flutter/material.dart';
// import 'package:flutter_search_bar/flutter_search_bar.dart';
import '../themes/stander/text.dart';
class FavoritePage extends StatefulWidget {
  const FavoritePage({ Key? key }) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Favorite Page",style: appNameTextStyle,),
    );
  }

  //   late SearchBar searchBar;
  
  // AppBar buildAppBar(BuildContext context) {
  //   return new AppBar(
  //     title: new Text('My Home Page'),
  //     actions: [searchBar.getSearchAction(context)]
  //   );
  // }  
  
  // _SearchPageState() {
  //   searchBar = new SearchBar(
  //     inBar: false,
  //     setState: setState,
  //     onSubmitted: print,
  //     buildDefaultAppBar: buildAppBar
  //   );
  //}
  
  // @override
  // Widget build(BuildContext context) {
  //   return new Scaffold(
  //     appBar: searchBar.build(context)
  //   );
  // }
}