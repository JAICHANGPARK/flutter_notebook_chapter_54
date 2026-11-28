import 'package:flutter_notebook_chapter_54/ep2731_fashion_app/fashion_app.dart';
import 'package:flutter_notebook_chapter_54/ep2731_fashion_app/ui/fashion_home_page.dart';
import 'package:material_ui/material_ui.dart';

class FashionMainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<FashionMainPage> createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: IndexedStack(
                index: pageNum,
                children: [FashionHomePage()],
              ),
            ),
            Align(
              alignment: .bottomCenter,
              child: Container(
                padding: .all(6),
                margin: .only(bottom: 32),
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
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          borderRadius: .circular(16),
                          color: .fromRGBO(38, 39, 36, 1),
                        ),
                        child: Icon(
                          Icons.home_outlined,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                      Container(height: 52, width: 52,
                          decoration: BoxDecoration(
                            borderRadius: .circular(16),
                           border: .all(color: Colors.grey[300]!,)
                          ),
                          child: Placeholder()),
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
