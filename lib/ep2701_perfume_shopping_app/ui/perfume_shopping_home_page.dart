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
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                mainAxisSize: .min,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
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
