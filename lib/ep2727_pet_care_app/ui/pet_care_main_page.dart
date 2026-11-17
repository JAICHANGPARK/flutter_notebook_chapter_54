import 'package:material_ui/material_ui.dart';

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: .bottomCenter,
              child: Row(
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        CircleAvatar(),
                        CircleAvatar(),
                        CircleAvatar(),
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
