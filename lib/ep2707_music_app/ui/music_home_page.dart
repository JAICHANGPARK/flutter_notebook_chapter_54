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
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: .circular(24),
                    ),
                    child: Column(
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
                        Text("Discover"),
                        Text("New Music"),
                        Text("Find your next favorite track"),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: .fromRGBO(209, 249, 88, 1),
                          ),
                          child: Row(children: []),
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
