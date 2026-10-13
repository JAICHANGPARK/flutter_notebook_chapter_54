import 'package:flutter_notebook_chapter_54/ep2701_perfume_shopping_app/ui/perfume_shopping_start_page.dart';
import 'package:material_ui/material_ui.dart';

class PerfuemShoppingApp extends StatefulWidget {
  const new({super.key});

  @override
  State<PerfuemShoppingApp> createState() => _PerfuemShoppingAppState();
}

class _PerfuemShoppingAppState extends State<PerfuemShoppingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PerfumeShoppingStartPage());
  }
}
