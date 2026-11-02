import 'package:material_ui/material_ui.dart';

class MusicLibraryPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MusicLibraryPage> createState() => _MusicLibraryPageState();
}

class _MusicLibraryPageState extends State<MusicLibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        Row(
          children: [Text("Your"), Text("Library"), Spacer(), CircleAvatar()],
        ),
        Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 72, child: Placeholder()),
            Row(
              children: [
                Text("My Playlists"),
                Text("See All"),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ],
        ),

        SizedBox(height: 180, child: Placeholder()),
        Row(
          children: [
            Text("My Playlists"),
            Text("See All"),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
        Expanded(child: Placeholder()),
      ],
    );
  }
}
