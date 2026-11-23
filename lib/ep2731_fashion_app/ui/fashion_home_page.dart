import 'package:material_ui/material_ui.dart';

class FashionHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<FashionHomePage> createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(
          children: [
            Text("DREAM"),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],

              ),
              child: Icon(Icons.favorite_border_outlined),
            )
          ],
        )
      ],
    );
  }
}