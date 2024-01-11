import 'package:biztrack/pages/customers_page.dart';
import 'package:biztrack/pages/home_page.dart';
import 'package:biztrack/pages/loading_page.dart';
import 'package:biztrack/pages/orders_page.dart';
import 'package:biztrack/pages/products_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const LoadingPage(),
        "/home": (context) => const HomePage(),
        "/orders": (context) => const OrdersPage(),
        "/customers": (context) => const CustomersPage(),
        "/products": (context) => const ProductsPage(),
      },
      initialRoute: "/",
    );
  }
}
