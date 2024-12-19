import 'package:flutter/material.dart';
import 'package:myapp/screen/homeScreen.dart';
import 'package:myapp/screen/jadwal_sholat.dart';
import 'package:myapp/screen/murottalScreen.dart';
import 'tata_cara_sholat_4_rakaat.dart';
import 'tata_cara_sholat_3_rakaat.dart';
import 'tata_cara_sholat_2_rakaat.dart';

class TatacaraScreen extends StatelessWidget {
  const TatacaraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MuslimWay",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
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
              color: Color.fromARGB(255, 90, 90, 90),
            ),
            label: 'e-Tasbih',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_bar_chart,
              color: Colors.blueAccent,
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
        currentIndex: 2,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          } else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MurottalScreen()),
            );
          } else if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const JadwalSholatPage()),
            );
          }
        },
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromARGB(255, 71, 71, 71),
        unselectedLabelStyle:
            const TextStyle(color: Color.fromARGB(255, 89, 89, 89)),
        selectedItemColor: const Color.fromARGB(255, 85, 85, 85),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Sholat Wajib 4 Rakaat (Isya, Ashar, Dzuhur)'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              
            },
          ),
          ListTile(
            title: const Text('Sholat Wajib 3 Rakaat (Maghrib)'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              
            },
          ),
          ListTile(
            title: const Text('Sholat Wajib 2 Rakaat (Subuh)'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTataCaraListItem({
    required BuildContext context,
    required String title,
    required String description,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: () {
          
        },
      ),
    );
  }
}
