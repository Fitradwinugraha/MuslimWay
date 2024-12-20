import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:myapp/screens/homeScreen.dart';
import 'package:myapp/screens/jadwal_sholat.dart';
import 'package:myapp/screens/murottalScreen.dart';

class MurottalScreen extends StatefulWidget {
  const MurottalScreen({super.key});

  @override
  State<MurottalScreen> createState() => _MurottalScreenState();
}

class _MurottalScreenState extends State<MurottalScreen> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  final List<Map<String, String>> videos = [
    {
      'image': 'assets/images/abbasa.png',
      'title': 'Surah Abasa',
      'url': 'assets/videos/Abasa.mp4',
    },
    {
      'image': 'assets/images/annaba.png',
      'title': 'Surah An-Naba',
      'url': 'assets/videos/AnNaba.mp4',
    },
    {
      'image': 'assets/images/annaziat.png',
      'title': 'Surah An-Naziat',
      'url': 'assets/videos/AnNazi.mp4',
    },
    {
      'image': 'assets/images/attakwir.png',
      'title': 'Surah At-Takwir',
      'url': 'assets/videos/AtTakwir.mp4',
    },
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/placeholder.mp4');
  }

  // Load and play the selected video
  void _initializePlayer(String videoPath) {
    if (_controller.value.isInitialized) {
      _controller.pause();
    }
    _controller = VideoPlayerController.asset(videoPath)
      ..initialize().then((_) {
        setState(() {
          _controller.setVolume(1.0);
          _controller.play();
          _isPlaying = true;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Murottal",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 10, 91, 197),
        ),
        body: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) {
            final video = videos[index];
            return Card(
              margin: const EdgeInsets.all(10),
              child: ExpansionTile(
                leading: Image.asset(
                  video['image']!, 
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  video['title']!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                children: [
                  _controller.value.isInitialized
                      ? Column(
                          children: [
                            AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    _isPlaying ? Icons.pause : Icons.play_arrow,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (_isPlaying) {
                                        _controller.pause();
                                      } else {
                                        _controller.play();
                                      }
                                      _isPlaying = !_isPlaying;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        )
                      : const Center(child: CircularProgressIndicator()),
                  ListTile(
                    title: ElevatedButton(
                      onPressed: () {
                        _initializePlayer(video['url']!);
                      },
                      child: const Text(
                        'Play Video',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
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
                color: Color.fromARGB(255, 90, 90, 90),
              ),
              label: 'Tata Cara Salat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_rounded,
                color: Colors.blueAccent,
              ),
              label: 'Murottal',
            ),
          ],
          currentIndex: 3,
          onTap: (index) {
            if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            } else if (index == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TatacaraScreen()),
              );
            } else if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const JadwalSholatPage()),
              );
            }
          },
          showUnselectedLabels: true,
          unselectedItemColor: const Color.fromARGB(255, 71, 71, 71),
          unselectedLabelStyle:
              const TextStyle(color: Color.fromARGB(255, 89, 89, 89)),
          selectedItemColor: const Color.fromARGB(255, 85, 85, 85),
        ));
  }
}
