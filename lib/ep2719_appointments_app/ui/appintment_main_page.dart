import 'package:material_ui/material_ui.dart';

class AppintmentMainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<AppintmentMainPage> createState() => _AppintmentMainPageState();
}

class _AppintmentMainPageState extends State<AppintmentMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: Placeholder()),
            Positioned(
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
