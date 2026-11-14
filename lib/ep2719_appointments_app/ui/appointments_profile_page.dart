import 'package:gap/gap.dart';
import 'package:material_ui/material_ui.dart';

class AppointmentsProfilePage extends StatefulWidget {
  const new({super.key});

  @override
  State<AppointmentsProfilePage> createState() =>
      _AppointmentsProfilePageState();
}

class _AppointmentsProfilePageState extends State<AppointmentsProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 12,
            children: [
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white,
                  ),
                  padding: .only(left: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: .none,
                      hintText: "Search...",
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey,
                child: Icon(Icons.filter_alt_outlined),
              ),
            ],
          ),
        ),
        Container(
          height: 52,
          margin: .only(left: 16),
          child: ListView(
            scrollDirection: .horizontal,
            children: [
              Container(
                margin: .only(right: 16),
                padding: .symmetric(horizontal: 26),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: .fromRGBO(115, 56, 239, 1),
                ),
                child: Center(
                  child: Text("All", style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: .only(right: 16),
                padding: .symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: Row(
                  spacing: 16,
                  children: [Icon(Icons.face), Text("Flutter")],
                ),
              ),
              Container(
                margin: .only(right: 16),
                padding: .symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: Row(
                  spacing: 16,
                  children: [Icon(Icons.face), Text("Android/iOS")],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 52,
          margin: .only(left: 16),
          child: ListView(
            scrollDirection: .horizontal,
            children: [
              Container(
                margin: .only(right: 12),
                padding: .symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Text("Availability"),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              Container(
                margin: .only(right: 12),
                padding: .symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: Row(
                  spacing: 12,
                  children: [Text("Rating"), Icon(Icons.keyboard_arrow_down)],
                ),
              ),
              Container(
                margin: .only(right: 12),
                padding: .symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Text("Online con"),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ],
          ),
        ),
        Gap(6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 4,
            children: [
              Text("152 doctors found"),
              Spacer(),
              Text("Sort by"),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: .symmetric(horizontal: 16),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  margin: .only(bottom: 16),
                  decoration: ShapeDecoration(
                    shape: RoundedSuperellipseBorder(
                      borderRadius: .circular(16),
                    ),
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
