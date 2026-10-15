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
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Parfume Shop", style: TextStyle(fontWeight: .bold)),
                      Container(
                        decoration: BoxDecoration(
                          border: .all(color: Colors.grey[200]!),
                        ),
                        child: Badge(
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedNotification01,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              margin: .only(bottom: 32),
              padding: .all(6),
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                spacing: 8,
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
                    padding: .symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .2),
                    ),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(Icons.favorite_outline, color: Colors.white),
                        // Text("Home"),
                      ],
                    ),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .2),
                    ),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(Icons.shopping_cart, color: Colors.white),
                        // Text("Home"),
                      ],
                    ),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .2),
                    ),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.white,
                        ),
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
