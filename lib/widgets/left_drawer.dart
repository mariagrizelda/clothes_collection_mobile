// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:clothes_collection_mobile/screens/list_product.dart';
import 'package:flutter/material.dart';
import 'package:clothes_collection_mobile/screens/menu.dart';
import 'package:clothes_collection_mobile/screens/clothlist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFF8B3CA),
            ),
            child: Column(
              children: [
                Text(
                  'Shopping List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Write all your shopping needs here!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Homepage'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Add Product'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ClothFormPage()),
              );
            },
          ),
          ListTile(
    leading: const Icon(Icons.shopping_basket),
    title: const Text('Product List'),
    onTap: () {
        // Route menu to product page
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductPage()),
        );
    },
),
        ],
      ),
    );
  }
}