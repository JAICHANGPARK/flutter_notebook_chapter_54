import 'package:material_ui/material_ui.dart';

class PerfumeShoppingStartPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 24,
          children: [
            Expanded(child: Placeholder()),
            Column(
              children: [
                Text(
                  "Craft Your Unique\nEnergy Vibe.",
                  style: TextStyle(fontWeight: .bold, fontSize: 32),
                ),
                Container(
                  height: 52,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Center(child: Text("I already have an account")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
