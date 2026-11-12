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
      children: [
        Row(
          spacing: 12,
          children: [
            Expanded(
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: TextField(),
              ),
            ),
            CircleAvatar(radius: 24, backgroundColor: Colors.white),
          ],
        ),
        SizedBox(height: 62, child: Placeholder()),
        SizedBox(height: 62, child: Placeholder()),
        Row(
          children: [
            Text("152 doctors found"),
            Spacer(),
            Text("Sort by"),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                decoration: ShapeDecoration(
                  shape: RoundedSuperellipseBorder(borderRadius: .circular(16)),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
