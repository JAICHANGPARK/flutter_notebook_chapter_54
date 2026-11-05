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
            Align(
              alignment: .bottomCenter,
              child: Container(
                margin: .only(bottom: 32),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                child: Row(children: []),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
