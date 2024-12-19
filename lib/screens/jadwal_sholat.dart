import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class JadwalSholatPage extends StatefulWidget {
  const JadwalSholatPage({super.key});

  @override
  _JadwalSholatPageState createState() => _JadwalSholatPageState();
}

class _JadwalSholatPageState extends State<JadwalSholatPage> {
  @override
  Widget build(BuildContext context) {
    String tanggalSekarang = DateFormat('dd MMMM yyyy').format(DateTime.now());

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
        backgroundColor:
            const Color.fromARGB(255, 14, 127, 220), 
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Center(
              child: Container(
                width: 375, 
                height: 108, 
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 14, 127, 220),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                          0.2), 
                      offset: const Offset(
                          0, 4), 
                      blurRadius:
                          8,
                      spreadRadius:
                          2,  
                    ),
                  ], 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Assalamualaikum....',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          tanggalSekarang,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                        Image.asset(
                          'assets/images/time.png',
                          height: 55,
                          width: 54,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, 
                children: [
                
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
              
                    },
                    child: Container(
                      width: 100, 
                      height: 120, 
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(12)), 
                        border: Border.all(
                            color: const Color.fromARGB(255, 205, 205, 205),
                            width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/tasbih.png',
                              height: 40, width: 40),
                          const SizedBox(height: 8),
                          const Text('Tasbih',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
           
                    },
                    child: Container(
                      width: 100, 
                      height: 120, 
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(12)), 
                        border: Border.all(
                            color: const Color.fromARGB(255, 205, 205, 205),
                            width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/shalat.png',
                              height: 40, width: 40),
                          const SizedBox(height: 8),
                          const Text('Tata Cara \nSholat',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
         
                    },
                    child: Container(
                      width: 100, 
                      height: 120, 
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(12)), 
                        border: Border.all(
                            color: const Color.fromARGB(255, 205, 205, 205),
                            width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/multimedia.png',
                              height: 40, width: 40),
                          const SizedBox(height: 8),
                          const Text('Murottal \nJuz 30',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Jadwal Sholat 
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.location_on, size: 20),
                      SizedBox(width: 4),
                      Text('Bandar Lampung', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 16),
                 
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.asset('assets/images/dzuhur.png',
                            height: 24, width: 24),
                        const SizedBox(width: 16),
                        const Expanded(
                            child:
                                Text('Dzuhur', style: TextStyle(fontSize: 16))),
                        const Text('11:52 AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.asset('assets/images/cloudy.png',
                            height: 24, width: 24),
                        const SizedBox(width: 16),
                        const Expanded(
                            child:
                                Text('Ashar', style: TextStyle(fontSize: 16))),
                        const Text('3:19 PM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.asset('assets/images/sunset-.png',
                            height: 24, width: 24),
                        const SizedBox(width: 16),
                        const Expanded(
                            child: Text('Maghrib',
                                style: TextStyle(fontSize: 16))),
                        const Text('6:05 PM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.asset('assets/images/half-moon.png',
                            height: 24, width: 24),
                        const SizedBox(width: 16),
                        const Expanded(
                            child:
                                Text('Isya', style: TextStyle(fontSize: 16))),
                        const Text('7:21 PM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.asset('assets/images/ramadan.png',
                            height: 24, width: 24),
                        const SizedBox(width: 16),
                        const Expanded(
                            child:
                                Text('Shubuh', style: TextStyle(fontSize: 16))),
                        const Text('4:14 AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), 
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.blueAccent,
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
        currentIndex: 0,
        onTap: (index) {

        },
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromARGB(255, 71, 71, 71),
        unselectedLabelStyle:
            const TextStyle(color: Color.fromARGB(255, 89, 89, 89)),
        selectedItemColor: const Color.fromARGB(255, 85, 85, 85),
      ),
    );
  }
}
