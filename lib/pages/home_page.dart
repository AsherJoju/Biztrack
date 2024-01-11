import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            snap: false,
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            title: const Text("Biztrack"),
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [],
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.deepPurple[50],
                foregroundColor: Colors.deepPurple[700],
                child: const Icon(
                  Icons.account_circle,
                  size: 70.0,
                ),
              ),
              accountName: const Text("User Name"),
              accountEmail: const Text("email@example.com"),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pop(),
              leading: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            ListTile(
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed("/customers"),
              leading: const Icon(Icons.person),
              title: const Text("Customers"),
            ),
            ListTile(
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed("/orders"),
              leading: const Icon(Icons.assignment),
              title: const Text("Orders"),
            ),
            ListTile(
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed("/products"),
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Products"),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ListTile(
                    onTap: () => Navigator.of(context).pop(),
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                  ),
                  ListTile(
                    onTap: () => Navigator.of(context).pop(),
                    leading: const Icon(Icons.info),
                    title: const Text("About"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
