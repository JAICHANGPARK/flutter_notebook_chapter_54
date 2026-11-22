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
                decoration: ShapeDecoration(shape: RoundedSuperellipseBorder()),
                child: Container(
                  child: Row(
                    mainAxisSize: .min,
                    children: [
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
