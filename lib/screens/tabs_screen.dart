import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';
import '../components/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
    {'title': 'Lista de categorias', 'screen': CategoriesScreen()},
    {'title': 'Meus Favoritos', 'screen': FavoriteScreen()},
  ];

  _selectScreen(int index){
    setState(() {
          _selectedScreenIndex = index;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title']),
        ),
        drawer: MainDrawer(),
      body: _screens[_selectedScreenIndex]['screen'],

      bottomNavigationBar: BottomNavigationBar(

        onTap: _selectScreen,
        backgroundColor:Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex ,
        type: 
        BottomNavigationBarType.shifting,
        items: [

          BottomNavigationBarItem(
            backgroundColor:Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            // ignore: deprecated_member_use
            title:Text('Categorias')
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            // ignore: deprecated_member_use
            title:Text('Favoritos')
          ),

        ],
      ),
    );
  }
}