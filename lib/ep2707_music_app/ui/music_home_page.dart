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
      body: Column(
        children: [
          Container(height: 200, child: Placeholder()),
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_outlined),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
