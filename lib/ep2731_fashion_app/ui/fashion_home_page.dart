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
              padding: .all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: .circular(12)

              ),
              child: Icon(Icons.favorite_border_outlined),
            )
          ],
        )
      ],
    );
  }
}