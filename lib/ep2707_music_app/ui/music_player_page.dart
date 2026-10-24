import 'package:material_ui/material_ui.dart';

class MusicPlayerPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MusicPlayerPage> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [CircleAvatar(), CircleAvatar()],
            ),
            Container(height: 240, child: Placeholder()),
            Text("Better Days"),
            Text("Dreamwalker"),
            Slider(value: 0, onChanged: (value) {}),
            Row(children: [Text("1:42"), Text("3:24")]),
            Row(
              children: [
                Icon(Icons.shuffle),
                Icon(Icons.skip_previous),
                CircleAvatar(),
                Icon(Icons.skip_next),
                Icon(Icons.loop),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
