import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

class PetCareHealthPage extends StatefulWidget {
  const new({super.key});

  @override
  State<PetCareHealthPage> createState() => _PetCareHealthPageState();
}

class _PetCareHealthPageState extends State<PetCareHealthPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: .start,
                    children: [
                      Text("Health & Vaccination"),
                      Text("Keep Dream healthy and happy"),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: HugeIcon(icon: HugeIcons.strokeRoundedNotification01),
                ),
              ],
            ),
            Container(
              height: 420,
              child: Column(
                spacing: 12,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("Vaccination history"),
                TextButton(onPressed: () {}, child: Text("View All")),
              ],
            ),
            Column(
              children: List.generate(
                5,
                (idx) => Container(height: 42, child: Placeholder()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
