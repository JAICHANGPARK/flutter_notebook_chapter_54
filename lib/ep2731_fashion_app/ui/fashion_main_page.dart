import 'package:material_ui/material_ui.dart';

class FashionMainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<FashionMainPage> createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: IndexedStack()),

            Align(
              alignment: .bottomCenter,
              child: Container(
                padding: .all(6),
                margin: .only(bottom: 12),
                decoration: ShapeDecoration(
                  shape: RoundedSuperellipseBorder(borderRadius: .circular(20)),
                  color: Colors.grey,
                ),
                child: Container(
                  padding: .all(8),
                  decoration: ShapeDecoration(
                    shape: RoundedSuperellipseBorder(
                      borderRadius: .circular(16),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: .min,
                    spacing: 12,
                    children: [
                      Container(height: 52, width: 52, child: Placeholder()),
                      Container(height: 52, width: 52, child: Placeholder()),
                      Container(height: 52, width: 52, child: Placeholder()),
                      Container(height: 52, width: 52, child: Placeholder()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
