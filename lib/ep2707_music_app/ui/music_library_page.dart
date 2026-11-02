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
          children: [
            Text(
              "Your",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: .bold,
              ),
            ),
            Text(
              " Library",
              style: TextStyle(
                fontSize: 32,
                color: .fromRGBO(209, 249, 88, 1),
                fontWeight: .bold,
              ),
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: Colors.white10,
              foregroundColor: Colors.white,
              child: Icon(Icons.search),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(
              height: 52,
              child: ListView(
                scrollDirection: .horizontal,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: .fromRGBO(209, 249, 88, 1),
                    ),
                    child: Row(
                      children: [Icon(Icons.music_note), Text("Playlists")],
                    ),
                  ),
                ],
              ),
            ),
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
