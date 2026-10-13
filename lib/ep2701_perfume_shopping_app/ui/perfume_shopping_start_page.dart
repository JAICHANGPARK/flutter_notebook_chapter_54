import 'package:material_ui/material_ui.dart';

class PerfumeShoppingStartPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Text("Craft Your Unique\nEnergy Vibe."),
          Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Center(
              child: Text("Get Started", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
