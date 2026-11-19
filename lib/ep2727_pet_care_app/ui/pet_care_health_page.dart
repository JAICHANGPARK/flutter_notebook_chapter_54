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
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    spacing: 2,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Health & Vaccination",
                        style: TextStyle(fontWeight: .bold, fontSize: 20),
                      ),
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
              decoration: ShapeDecoration(
                shape: RoundedSuperellipseBorder(borderRadius: .circular(24)),
                color: .fromRGBO(201, 203, 203, 1),
              ),
              padding: .all(16),
              child: Column(
                spacing: 12,
                children: [
                  Expanded(
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: .circular(24),
                              ),
                              color: .fromRGBO(174, 162, 141, 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: .circular(24),
                              ),
                              color: .fromRGBO(122, 153, 140, 1),
                            ),
                          ),
                        ),
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
