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
                            padding: .all(12),
                            child: Column(
                              spacing: 3,
                              crossAxisAlignment: .start,
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.white24,
                                ),
                                Text(
                                  "Weight",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Align(
                                  alignment: .centerRight,
                                  child: Text(
                                    "24.5 kg",
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
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
                            padding: .all(12),
                            child: Column(
                              spacing: 3,
                              crossAxisAlignment: .start,
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.white24,
                                ),
                                Text(
                                  "Core Score",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Align(
                                  alignment: .centerRight,
                                  child: Text(
                                    "92",
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
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
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: .circular(24),
                              ),
                              color: .fromRGBO(181, 179, 219, 1),
                            ),
                            padding: .all(12),
                            child: Column(
                              spacing: 3,
                              crossAxisAlignment: .start,
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.white24,
                                ),
                                Text(
                                  "Steps Today",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Align(
                                  alignment: .centerRight,
                                  child: Text(
                                    "8,420",
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: .circular(24),
                              ),
                              color: .fromRGBO(230, 230, 230, 1),
                            ),
                            padding: .all(12),
                            child: Column(
                              spacing: 3,
                              crossAxisAlignment: .start,
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.grey[400],
                                ),
                                Text(
                                  "Next",
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Vaccination",
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: .centerRight,
                                  child: Text(
                                    "7 Days",
                                    style: TextStyle(
                                      fontWeight: .bold,

                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: .start,
              spacing: 2,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Vaccination history", style: TextStyle(fontSize: 16)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(decoration: .underline),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: List.generate(
                    5,
                    (idx) => Container(
                      height: 62,
                      child: Placeholder(),
                      margin: .only(bottom: 8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
