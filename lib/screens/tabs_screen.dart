import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/favorite_screens.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      //initialIndex:0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categories',
              ),
              Tab(
                  icon: Icon(
                    Icons.star,
                  ),
                  text: 'Favourites'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[CategoriesScreen(), FavouritesScreen()],
        ),
      ),
    );
  }
}