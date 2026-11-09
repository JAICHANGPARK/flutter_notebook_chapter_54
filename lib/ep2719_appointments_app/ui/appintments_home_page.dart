import 'package:material_ui/material_ui.dart';

class AppintmentsHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<AppintmentsHomePage> createState() => _AppintmentsHomePageState();
}

class _AppintmentsHomePageState extends State<AppintmentsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 16,
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              CircleAvatar(radius: 24),
              Container(
                width: 140,
                padding: .only(left: 12, right: 12, bottom: 6, top: 6),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: Row(
                  spacing: 4,
                  children: [Icon(Icons.search), Text("Search")],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: .circular(16),
              color: .fromRGBO(121, 60, 251, 1),
            ),
            padding: .all(16),
            child: Column(
              spacing: 25,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Upcoming appointment",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.white30, width: .5),
                        ),
                        gradient: LinearGradient(
                          begin: .topCenter,
                          end: .bottomCenter,
                          colors: [
                            .fromRGBO(153, 107, 254, 1),
                            .fromRGBO(138, 86, 249, 1),
                          ],
                        ),
                      ),
                      child: Text(
                        "In 2 days",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 12,
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: .circular(16),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 4,
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Dr. Dreamwalker",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: .bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Flutter | Dart Dash Medical",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 52,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(color: Colors.white30, width: .5),
                    ),
                    gradient: LinearGradient(
                      begin: .topCenter,
                      end: .bottomCenter,
                      colors: [
                        .fromRGBO(153, 107, 254, 1),
                        .fromRGBO(138, 86, 249, 1),
                      ],
                    ),
                  ),
                  padding: .symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: .center,
                          spacing: 12,
                          children: [
                            Icon(Icons.calendar_month, color: Colors.white),
                            Text(
                              "Thu, Oct 16",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: .center,
                          spacing: 12,
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "10:30 AM",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Text("Specialities"),
          Container(
            height: 200,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: .7,
              ),
              itemBuilder: (context, index) {
                return Column(
                  spacing: 7,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: .circular(6),
                        ),
                      ),
                    ),
                    Text(
                      "General",
                      style: TextStyle(fontWeight: .bold, color: Colors.grey),
                    ),
                  ],
                );
              },
            ),
          ),
          Text("Recommended Doctors"),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: .horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 280,
                  margin: .only(right: 16),
                  child: Placeholder(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
