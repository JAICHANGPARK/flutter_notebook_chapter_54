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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    foregroundColor: Colors.black,
                    child: Icon(Icons.chevron_left),
                  ),
                  CircleAvatar(),
                ],
              ),
              Container(
                height: 240,
                child: Row(
                  children: [
                    SizedBox(width: 64),
                    Expanded(child: Placeholder()),
                    SizedBox(
                      width: 64,
                      child: Column(
                        spacing: 6,
                        mainAxisAlignment: .center,
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.favorite),
                            foregroundColor: Colors.black,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            child: Icon(Icons.share),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Better Days",
                style: TextStyle(fontSize: 30, fontWeight: .bold),
              ),
              Text("Dreamwalker"),
              Slider(value: 0, onChanged: (value) {}),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("1:42", style: TextStyle(fontSize: 12)),
                  Text("3:24", style: TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Icon(Icons.shuffle),
                  Icon(Icons.skip_previous),
                  CircleAvatar(),
                  Icon(Icons.skip_next),
                  Icon(Icons.loop),
                ],
              ),
              Container(height: 64, child: Placeholder()),
              Row(
                children: [
                  Text("Up Next"),
                  Spacer(),
                  Text("See All"),
                  Icon(Icons.chevron_right),
                ],
              ),
              Column(
                children: List.generate(4, (idx) {
                  return Container(height: 72, child: Placeholder());
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
