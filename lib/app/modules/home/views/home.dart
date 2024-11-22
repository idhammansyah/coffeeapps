import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'COFFEE SHOP',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer(); // Membuka Drawer
                },
              ),
            ),
            backgroundColor: Colors.brown.shade700,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.brown.shade700,
                  ),
                  child: const Column(children: [
                    Icon(
                      Icons.person,
                    ),
                    Text(
                      'Users',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    Get.toNamed('/home');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () {
                    Get.toNamed('/login');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    Get.toNamed('/settings');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    // Tambahkan logika logout
                    Get.toNamed('/logout');
                  },
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Food & Beverage',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    InkWell(
                      onTap: () {
                        // do something here
                      },
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/assets/pictures/pizzas.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Foods',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // do something here
                      },
                      child: const Card(
                        child: Center(
                          child: Text(
                            'Menu 2',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // do something here
                      },
                      child: const Card(
                        child: Center(
                          child: Text(
                            'Menu 3',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // do something here
                      },
                      child: const Card(
                        child: Center(
                          child: Text(
                            'Menu 4',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    // Tambahkan item lainnya secara manual di sini
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue.shade400,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.yellow.shade900,
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                // Item baru
                icon: Icon(Icons.settings,
                    color: Colors.red.shade900), // Ikon untuk item baru
                label: 'Settings', // Label untuk item baru
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                Get.toNamed('/home');
              } else if (index == 1) {
                Get.toNamed('/login');
              } else if (index == 2) {
                Get.toNamed("/settings");
              }
            },
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.brown.shade700,
            child: const Icon(
              Icons.add_shopping_cart_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              Get.toNamed('/carts');
            },
          )),
    );
  }
}
