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
              spacing: 16,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Upcoming appointment"),
                    Container(
                      decoration: ShapeDecoration(shape: StadiumBorder()),
                      child: Text("In 2 days"),
                    ),
                  ],
                ),
                Row(
                  spacing: 12,
                  children: [
                    Container(width: 52, height: 52, child: Placeholder()),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("Dr. Dreamwalker"),
                          Text("Flutter | Dart Dash Medical"),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 42,
                  decoration: ShapeDecoration(shape: StadiumBorder()),
                  child: Row(
                    children: [
                      Expanded(child: Row()),
                      VerticalDivider(),
                      Expanded(child: Row()),
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
                  spacing: 5,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: .circular(6),
                        ),
                      ),
                    ),
                    Text("General"),
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
