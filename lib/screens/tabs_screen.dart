import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorite_screens.dart';

class TabsScreen extends StatefulWidget {
  // const TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {'page': FavouritesScreen(), 'title': 'Favourites'},
  ];
  int _selectedPageIndex = 0;

  // Fuction that gives automatic index of a Tab
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 2,
    //initialIndex:0,
    // child:
    return Scaffold(
      appBar: AppBar(
        // title: Text('Meals'),
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      // body: _pages[_selectedPageIndex],
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favourites'),
          )
        ],
      ),
      //   bottom: TabBar(
      //     indicatorColor: Colors.white,
      //     tabs: <Widget>[
      //       Tab(
      //         icon: Icon(
      //           Icons.category,
      //         ),
      //         text: 'Categories',
      //       ),
      //       Tab(
      //           icon: Icon(
      //             Icons.star,
      //           ),
      //           text: 'Favourites'),
      //     ],
      //   ),
      // ),
      // body: TabBarView(
      //   children: <Widget>[CategoriesScreen(), FavouritesScreen()],
      //),
      //),
    );
  }
}
