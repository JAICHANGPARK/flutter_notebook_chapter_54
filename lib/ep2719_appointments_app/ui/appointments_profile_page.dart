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
                  child: TextField(decoration: InputDecoration(border: .none)),
                ),
              ),
              CircleAvatar(radius: 24, backgroundColor: Colors.white),
            ],
          ),
        ),
        SizedBox(height: 62, child: Placeholder()),
        SizedBox(height: 62, child: Placeholder()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
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
