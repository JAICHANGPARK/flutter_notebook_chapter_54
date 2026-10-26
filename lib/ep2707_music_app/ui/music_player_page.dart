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
            spacing: 16,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    foregroundColor: Colors.black,
                    child: Icon(Icons.chevron_left),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    foregroundColor: Colors.black,
                    child: Icon(Icons.more_horiz),
                  ),
                ],
              ),
              Container(
                height: 240,
                child: Row(
                  spacing: 8,
                  children: [
                    SizedBox(width: 64),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: .circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: .1),
                              blurRadius: 30,
                              spreadRadius: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 64,
                      child: Column(
                        spacing: 12,
                        mainAxisAlignment: .center,
                        children: [
                          Container(
                            padding: .all(10),
                            decoration: BoxDecoration(
                              shape: .circle,
                              color: Color.fromRGBO(230, 249, 197, 1),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: .1),
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                            child: Icon(Icons.favorite),
                          ),
                          Container(
                            padding: .all(10),
                            decoration: BoxDecoration(
                              shape: .circle,
                              color: Colors.white,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: .1),
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                            child: Icon(Icons.add),
                          ),
                          Container(
                            padding: .all(10),
                            decoration: BoxDecoration(
                              shape: .circle,
                              color: Colors.white,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: .1),
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                ),
                              ],
                            ),
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
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 245, 247, 1),
                  borderRadius: .circular(15),
                ),
                padding: .symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  spacing: 12,
                  children: [
                    CircleAvatar(radius: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            spacing: 4,
                            children: [
                              Text("Dreamwalker"),
                              Icon(
                                Icons.check_circle,
                                size: 16,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          Text("3.3M monthly listeners"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
