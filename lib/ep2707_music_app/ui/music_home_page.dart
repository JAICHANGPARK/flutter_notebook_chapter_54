import 'package:gap/gap.dart';
import 'package:material_ui/material_ui.dart';

class MusicHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
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
              child: Column(
                spacing: 16,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: .circular(24),
                    ),
                    padding: .all(12),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          spacing: 12,
                          children: [
                            CircleAvatar(),
                            Spacer(),
                            CircleAvatar(),
                            CircleAvatar(),
                          ],
                        ),
                        Gap(24),
                        Text(
                          "Discover",
                          style: TextStyle(fontSize: 24, fontWeight: .bold),
                        ),
                        Text(
                          "New Music",
                          style: TextStyle(fontSize: 24, fontWeight: .bold),
                        ),
                        Gap(8),
                        Text("Find your next favorite track"),
                        Gap(12),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: .fromRGBO(209, 249, 88, 1),
                          ),
                          padding: .symmetric(horizontal: 16, vertical: 12),
                          child: Row(
                            spacing: 12,
                            mainAxisSize: .min,
                            children: [
                              Icon(Icons.play_arrow),
                              Text("Explore Now"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 100, child: Placeholder()),
                  Row(
                    children: [
                      Text("Recently Played"),
                      Text("See All"),
                      Icon(Icons.keyboard_arrow_right, color: Colors.white),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Placeholder();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: .fromRGBO(209, 249, 88, 1),
        type: .fixed,
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
