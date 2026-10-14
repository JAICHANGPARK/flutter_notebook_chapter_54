import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

class PerfumeShoppingHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<PerfumeShoppingHomePage> createState() =>
      _PerfumeShoppingHomePageState();
}

class _PerfumeShoppingHomePageState extends State<PerfumeShoppingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 243, 237, 1),
      body: Stack(
        children: [
          Align(
            alignment: .bottomCenter,
            child: Container(
              margin: .only(bottom: 32),
              padding: .all(6),
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                mainAxisSize: .min,
                children: [
                  Container(
                    padding: .symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      spacing: 12,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedHome02),
                        Text("Home"),
                      ],
                    ),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(color: Colors.black12),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(Icons.favorite_outline, color: Colors.white),
                        // Text("Home"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
