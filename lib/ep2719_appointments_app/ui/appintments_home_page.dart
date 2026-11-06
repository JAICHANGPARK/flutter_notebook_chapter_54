import 'package:material_ui/material_ui.dart';

class AppintmentsHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<AppintmentsHomePage> createState() => _AppintmentsHomePageState();
}

class _AppintmentsHomePageState extends State<AppintmentsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(
          children: [
            CircleAvatar(),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
              child: Row(children: [Icon(Icons.search), Text("Search")]),
            ),
          ],
        ),
      ],
    );
  }
}
