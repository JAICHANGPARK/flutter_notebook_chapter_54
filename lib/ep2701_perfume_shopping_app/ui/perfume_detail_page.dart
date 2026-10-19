import 'package:gap/gap.dart';
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 12,
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
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Tom Electric Perfume",
                    style: TextStyle(fontWeight: .bold, fontSize: 26),
                  ),
                  Text("Eau De Parfum 50ML"),
                ],
              ),

              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor bibendum mauris, ut scelerisque ligula maximus quis. Aenean pulvinar hendrerit urna in ornare.",
                style: TextStyle(fontSize: 13),
              ),
              Row(
                spacing: 8,
                children: [
                  Text(
                    "\$115.00",
                    style: TextStyle(fontSize: 18, fontWeight: .bold),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(color: Colors.red[200]!),
                    child: Text("-15%", style: TextStyle(fontSize: 12)),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      border: .all(color: Colors.grey[400]!),
                    ),
                    child: Icon(Icons.remove),
                  ),
                  Text("1", style: TextStyle(fontWeight: .bold, fontSize: 18)),
                  Container(
                    decoration: BoxDecoration(
                      border: .all(color: Colors.grey[400]!),
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
              Container(
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .1),
                      blurRadius: 10,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Buy Now \$115",
                    style: TextStyle(fontWeight: .bold, color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  border: .all(color: Colors.grey[400]!),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: .center,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.check_circle_outline),
                        Gap(8),
                        Text("long Lasting", style: TextStyle(fontSize: 12)),
                        Text("(12+Hours)", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: .center,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.check_circle_outline),
                        Gap(8),
                        Text("long Lasting", style: TextStyle(fontSize: 12)),
                        Text("(12+Hours)", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
