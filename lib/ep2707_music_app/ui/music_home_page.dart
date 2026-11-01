import 'package:flutter_notebook_chapter_54/ep2707_music_app/ui/music_library_page.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

import '../widgets/music_home_widget.dart';
import 'music_player_page.dart';

class MusicHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            left: 16,
            right: 16,
            child: SafeArea(
              child: IndexedStack(
                index: pageNum,
                children: [MusicHomeWidget(), MusicLibraryPage()],
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 8,
            right: 8,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MusicPlayerPage()),
                );
              },
              child: Container(
                padding: .symmetric(horizontal: 20, vertical: 8),
                decoration: ShapeDecoration(
                  color: Color.fromRGBO(13, 25, 23, 1),
                  shape: StadiumBorder(side: BorderSide(color: Colors.white10)),
                ),
                child: Row(
                  spacing: 8,
                  children: [
                    Container(
                      height: 54,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: .circular(16),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 3,
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Better Days",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Dreamwalkers",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedWave,
                      color: .fromRGBO(209, 249, 88, 1),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.pause),
                      foregroundColor: Colors.black,
                      backgroundColor: .fromRGBO(209, 249, 88, 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: .fromRGBO(209, 249, 88, 1),
        unselectedItemColor: Colors.white,
        type: .fixed,

        onTap: (idx) {},
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
