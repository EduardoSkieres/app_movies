import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Meus favoritos')),
        automaticallyImplyLeading: false,
      ),
      body: const Text('Favorites'),
    );
  }
}
