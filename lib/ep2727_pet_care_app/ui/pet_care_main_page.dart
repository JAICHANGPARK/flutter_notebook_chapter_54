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
          Row(
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(side: BorderSide(color: Colors.white)),
                ),
                child: Row(children: [
                  
                ],),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
