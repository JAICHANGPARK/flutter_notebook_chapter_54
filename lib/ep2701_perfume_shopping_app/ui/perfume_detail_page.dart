import 'package:material_ui/material_ui.dart';

class PerfumeDetailPage extends StatefulWidget {
  const new({super.key});

  @override
  State<PerfumeDetailPage> createState() => _PerfumeDetailPageState();
}

class _PerfumeDetailPageState extends State<PerfumeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 243, 237, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        border: .all(color: Colors.grey[300]!),
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Details",
                        style: TextStyle(fontWeight: .bold, fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        border: .all(color: Colors.grey[300]!),
                      ),
                      child: Icon(Icons.favorite_border),
                    ),
                  ),
                ],
              ),
              Expanded(child: Placeholder()),
              Text("Tom Electric Perfume"),
              Text("Eau De Parfum 50ML"),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor bibendum mauris, ut scelerisque ligula maximus quis. Aenean pulvinar hendrerit urna in ornare. Morbi viverra tellus sed libero maximus, non ornare tortor vehicula. ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
