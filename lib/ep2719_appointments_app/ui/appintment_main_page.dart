import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

class AppintmentMainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<AppintmentMainPage> createState() => _AppintmentMainPageState();
}

class _AppintmentMainPageState extends State<AppintmentMainPage> {
  int pageNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: IndexedStack(children: [
                
              ],
            )),
            Align(
              alignment: .bottomCenter,
              child: Container(
                margin: .only(bottom: 32),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                padding: .all(6),
                child: Row(
                  mainAxisSize: .min,
                  spacing: 12,
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                    ),
                    CircleAvatar(radius: 26),
                    CircleAvatar(radius: 26),
                    CircleAvatar(radius: 26),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
