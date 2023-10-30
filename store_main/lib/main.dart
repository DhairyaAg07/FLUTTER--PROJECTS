import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:store_main/screens/home_page.dart'; // Adjust the import path
import 'package:store_main/screens/update_product_page.dart'; // Adjust the import path

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
    );
  }
}
