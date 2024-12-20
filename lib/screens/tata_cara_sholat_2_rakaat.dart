import 'package:flutter/material.dart';
import 'package:myapp/screen/homeScreen.dart';
import 'package:myapp/screen/jadwal_sholat.dart';
import 'package:myapp/screen/murottalScreen.dart';

class TataCaraSholat2Rakaat extends StatelessWidget {
  const TataCaraSholat2Rakaat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tata Cara Sholat 2 Rakaat')),
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
          buildStep(context, 'assets/images/takbiratul_ihram.jpg', 
              '1. Takbiratul Ihram dan Membaca doa iftitah\nBerdiri tegak, angkat tangan sejajar telinga, ucapkan "Allahu Akbar", lalu membaca doa iftitah.'),
          buildStep(context, 'assets/images/berdiri.jpg', 
              '2. Membaca Al-Fatihah dan Surat Lain\nBerdiri sambil membaca Al-Fatihah, dilanjutkan dengan surat pendek dari Al-Qur\'an.'),
          buildStep(context, 'assets/images/rukuk.jpg', 
              '3. Rukuk\nMembungkukkan badan, tangan memegang lutut, dan membaca tasbih "Subhana Rabbiyal Adzhimi Wabihamdih" sebanyak tiga kali.'),
          buildStep(context, 'assets/images/itidal.jpg', 
              '4. I\'tidal\nKembali berdiri tegak dari rukuk, angkat tangan sejajar telinga, ucapkan "Sami\'allahu Liman Hamidah, Rabbana Lakal Hamd".'),
          buildStep(context, 'assets/images/sujud.jpg', 
              '5. Sujud\nSujud dengan membaca "Subhana Rabbiyal A\'la Wabihamdih" sebanyak tiga kali.'),
          buildStep(context, 'assets/images/duduk_diantara_dua_sujud.jpg', 
              '6. Duduk di Antara Dua Sujud\nDuduk dengan kaki kiri dilipat, kaki kanan tegak, dan membaca doa: "Rabbighfirli warhamni wajburni warfa’ni warzuqni wahdini wa’afini wa’fu ‘anni".'),
          buildStep(context, 'assets/images/sujud.jpg', 
              '7. Sujud Kedua\nSujud kembali dengan bacaan yang sama seperti sujud pertama.'),
          buildStep(context, 'assets/images/berdiri.jpg', 
              '8. Berdiri untuk Rakaat Kedua\nBerdiri kembali untuk melanjutkan rakaat kedua.'),
          buildStep(context, 'assets/images/repeat.png', 
              '9. Ulangi Point 2-4'),
          buildStep(context, 'assets/images/qunut.jpg', 
              '10. Membaca Qunut (Opsional)\nPada rakaat kedua sebelum rukuk, membaca doa qunut.'),
          buildStep(context, 'assets/images/repeat.png', 
              '11. Ulangi Point 5-7'),
          buildStep(context, 'assets/images/tahiyat_akhir.jpg', 
              '12. Tahiyat Akhir\nDuduk tawarruk sambil membaca tahiyat akhir, diakhiri dengan salam.'),
        ],
      ),
    );
  }

  Widget buildStep(BuildContext context, String imagePath, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Container(
            height: 150,
            color: Colors.grey[300],
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
