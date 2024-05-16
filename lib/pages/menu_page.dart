import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safeguard/pages/google_maps_page.dart';
import 'package:safeguard/pages/report_page.dart';
import 'package:safeguard/pages/emergency_page.dart';
import 'package:safeguard/pages/help_page.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('¿Que necesitas?',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Color.fromARGB(255, 0, 0, 0))),
                  subtitle: Text('Aqui estamos para ti',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: const Color.fromARGB(137, 8, 8, 8))),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/user.JPG'),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard(
                    'MAP',
                    CupertinoIcons.map_fill,
                    Color.fromARGB(255, 183, 6, 199),
                    () {
                      // Define what happens when item 1 is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GoogleMapsPage()),
                      );
                    },
                  ),
                  itemDashboard(
                    'REPORTE',
                    CupertinoIcons.phone_down_circle_fill,
                    Color.fromARGB(255, 241, 201, 21),
                    () {
                      // Define what happens when item 1 is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => reportPage()),
                      );
                    },
                  ),
                  itemDashboard(
                    'AYUDA',
                    CupertinoIcons.exclamationmark_triangle,
                    Color.fromARGB(255, 33, 63, 196),
                    () {
                      // Define what happens when item 1 is clicked
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => helpPage()),
                      );
                    },
                  ),
                  itemDashboard(
                    'EMERGENCIA',
                    CupertinoIcons.xmark_octagon,
                    Color.fromARGB(255, 248, 6, 6),
                    () {
                      // Define what happens when item 1 is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => emergencyPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background,
      VoidCallback onClicked) {
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(iconData, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

/*   itemDashboard(String title, IconData iconData, Color background) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: Colors.white)
        ),
        const SizedBox(height: 8),
        Text(title.toUpperCase(), style: Theme.of(context).textTheme.titleMedium)
      ],
    ),
  );*/
}
