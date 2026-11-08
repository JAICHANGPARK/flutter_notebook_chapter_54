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
                padding: .only(left: 12, right: 12, bottom: 4, top: 4),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: Row(children: [Icon(Icons.search), Text("Search")]),
              ),
            ],
          ),
          Container(height: 200, child: Placeholder()),

          Text("Specialities"),
          Container(height: 200, child: Placeholder()),
          Text("Recommended Doctors"),
          Container(height: 200, child: Placeholder()),
        ],
      ),
    );
  }
}
