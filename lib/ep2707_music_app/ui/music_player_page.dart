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
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: .circular(12),
                        ),
                      ),
                    ),
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
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Better Days",
                    style: TextStyle(fontSize: 30, fontWeight: .bold),
                  ),
                  Text("Dreamwalker"),
                  Slider(
                    value: 0,
                    onChanged: (value) {},
                    padding: .symmetric(horizontal: 8, vertical: 12),
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text("1:42", style: TextStyle(fontSize: 12)),
                      Text("3:24", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.shuffle)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous)),
                  CircleAvatar(radius: 30, child: Icon(Icons.pause)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.skip_next)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.loop)),
                ],
              ),
              Container(height: 64, child: Placeholder()),
              Row(
                spacing: 4,
                children: [
                  Text(
                    "Up Next",
                    style: TextStyle(fontWeight: .bold, fontSize: 16),
                  ),
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
