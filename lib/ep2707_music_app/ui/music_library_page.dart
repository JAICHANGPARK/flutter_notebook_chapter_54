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
        SizedBox(
          height: 48,
          child: ListView(
            scrollDirection: .horizontal,
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: .fromRGBO(209, 249, 88, 1),
                ),
                padding: .symmetric(horizontal: 16),
                child: Row(
                  spacing: 12,
                  children: [Icon(Icons.music_note), Text("Playlists")],
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: .start,
          spacing: 12,
          children: [
            Row(
              children: [
                Text(
                  "My Playlists",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: .bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(color: .fromRGBO(209, 249, 88, 1)),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: .fromRGBO(209, 249, 88, 1),
                ),
              ],
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: .horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: .only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: .fromRGBO(21, 37, 41, 1),
                    ),
                    width: 116,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: .circular(12),
                              color: Colors.green,
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 12,
                                  bottom: 12,
                                  child: CircleAvatar(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "Chill Vibes",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "24 songs",
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  Text(
                    "Recently Added",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: .bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(color: .fromRGBO(209, 249, 88, 1)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: .fromRGBO(209, 249, 88, 1),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(height: 70, child: Row(children: []));
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
