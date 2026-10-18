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
      body: SafeArea(
        child: Column(
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
                      border: .all(color: Colors.grey[200]!),
                    ),
                    child: Icon(Icons.arrow_back),
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
