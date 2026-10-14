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
          Positioned(
            bottom: 24,
            child: Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                mainAxisSize: .min,
                children: [
                  Container(
                    child: Row(
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedHome02),
                        Text("Home"),
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
