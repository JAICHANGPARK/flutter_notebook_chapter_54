import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

import 'appintments_home_page.dart';

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
            Positioned.fill(
              child: IndexedStack(
                index: pageNum,
                children: [AppintmentsHomePage()],
              ),
            ),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          pageNum = 0;
                        });
                      },
                      child: CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        child: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          pageNum = 1;
                        });
                      },
                      child: CircleAvatar(
                        radius: 26,
                        backgroundColor: pageNum == 1
                            ? Colors.white
                            : Colors.transparent,
                        foregroundColor: pageNum == 1
                            ? Colors.purple
                            : Colors.grey,
                        child: HugeIcon(icon: HugeIcons.strokeRoundedUserGroup),
                      ),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.local_activity),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.settings),
                    ),
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
