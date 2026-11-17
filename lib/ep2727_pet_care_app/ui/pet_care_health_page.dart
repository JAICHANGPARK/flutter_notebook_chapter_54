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
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("Health & Vaccination"),
                    Text("Keep Dream healthy and happy"),
                  ],
                ),
              ),
              CircleAvatar(),
            ],
          ),
          Container(height: 420, child: Placeholder()),
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
    );
  }
}
