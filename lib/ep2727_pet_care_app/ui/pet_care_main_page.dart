import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

import 'pet_care_health_page.dart';

class PetCareMainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<PetCareMainPage> createState() => _PetCareMainPageState();
}

class _PetCareMainPageState extends State<PetCareMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: .fromRGBO(214, 216, 215, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: IndexedStack(children: [PetCareHealthPage()]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: .bottomCenter,
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                        ),
                        CircleAvatar(
                          child: HugeIcon(icon: HugeIcons.strokeRoundedHeart),
                        ),
                        CircleAvatar(
                          child: HugeIcon(icon: HugeIcons.strokeRoundedStore01),
                        ),
                        CircleAvatar(
                          child: HugeIcon(icon: HugeIcons.strokeRoundedUser02),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(shape: .circle),
                    child: CircleAvatar(
                      backgroundColor: .fromRGBO(252, 246, 100, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
