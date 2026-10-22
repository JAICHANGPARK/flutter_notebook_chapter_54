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
                      // color: Colors.white,
                      borderRadius: .circular(24),
                    ),
                    padding: .all(12),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          spacing: 12,
                          children: [
                            CircleAvatar(child: Icon(Icons.menu)),
                            Spacer(),
                            CircleAvatar(child: Icon(Icons.search)),
                            CircleAvatar(),
                          ],
                        ),
                        Gap(24),
                        Text(
                          "Discover",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: .bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "New Music",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: .bold,
                            color: .fromRGBO(209, 249, 88, 1),
                          ),
                        ),

                        Text(
                          "Find your next favorite track",
                          style: TextStyle(color: Colors.white),
                        ),
                        Gap(20),
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
                  Container(
                    height: 80,
                    child: Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: Column(
                            spacing: 4,

                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: .circular(24),
                                    border: .all(color: Colors.white30),
                                  ),
                                  child: Icon(
                                    Icons.bar_chart,
                                    color: .fromRGBO(209, 249, 88, 1),
                                    size: 28,
                                  ),
                                ),
                              ),
                              Text(
                                "Top Charts",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Recently Played",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(color: .fromRGBO(209, 249, 88, 1)),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: .fromRGBO(209, 249, 88, 1),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(height: 80, child: Placeholder());
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
