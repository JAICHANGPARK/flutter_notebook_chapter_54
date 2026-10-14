import 'package:material_ui/material_ui.dart';

class PerfumeShoppingStartPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 243, 237, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 24,
          children: [
            Expanded(child: Placeholder()),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: .start,
                spacing: 24,
                children: [
                  Text(
                    "Craft Your Unique\nEnergy Vibe.",
                    style: TextStyle(fontWeight: .bold, fontSize: 32),
                  ),
                  Container(
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: .05),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Center(child: Text("I already have an account")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
