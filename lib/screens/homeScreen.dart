import 'package:flutter/material.dart';
import 'package:myapp/screen/jadwal_sholat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tasbihCount = 0;
  int tasbihCycle = 0;

  //increase tasbih
  void _incrementTasbih() {
    setState(() {
      tasbihCount++;
      if (tasbihCount == 34) {
        tasbihCount = 0;
        tasbihCycle++;
      }
    });
  }

  //reset
  void _resetTasbih() {
    setState(() {
      tasbihCount = 0;
      tasbihCycle = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MuslimWay",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 10, 91, 197),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Color.fromARGB(255, 90, 90, 90),
            ),
            label: 'Jadwal Salat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.countertops,
              color: Colors.blueAccent,
            ),
            label: 'e-Tasbih',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_bar_chart,
              color: Color.fromARGB(255, 90, 90, 90),
            ),
            label: 'Tata Cara Salat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_rounded,
              color: Color.fromARGB(255, 90, 90, 90),
            ),
            label: 'Murottal',
          ),
        ],
        onTap: () {
        },
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromARGB(255, 71, 71, 71),
        unselectedLabelStyle:
            const TextStyle(color: Color.fromARGB(255, 89, 89, 89)),
        selectedItemColor: const Color.fromARGB(255, 85, 85, 85),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$tasbihCount',
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Siklus Tasbih : $tasbihCycle',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 30),
              //buttton tasbih
              ElevatedButton(
                onPressed: _incrementTasbih,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 10, 91, 197),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: const Text(
                  'Tasbih',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //button reset
              ElevatedButton(
                onPressed: _resetTasbih,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Warna merah untuk tombol reset
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Jadwal Salat'),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
