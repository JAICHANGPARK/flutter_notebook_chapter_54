import 'package:gap/gap.dart';
import 'package:material_ui/material_ui.dart';

class FashionHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<FashionHomePage> createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            spacing: 8,
            children: [
              Text("DREAM"),
              Spacer(),
              Container(
                padding: .all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: .circular(12),
                ),
                child: Icon(Icons.favorite_border_outlined),
              ),
              Container(
                padding: .all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: .circular(12),
                ),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ],
          ),
          Gap(28),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: .circular(16),
            ),
            padding: .symmetric(horizontal: 8, vertical: 4),
            child: Row(
              spacing: 12,
              children: [
                Icon(Icons.search),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: .none,
                      hintText: "Search for brands, styles...",
                    ),
                  ),
                ),
                Container(
                  padding: .all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: .circular(16),
                  ),
                  child: Icon(Icons.tune),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Gap(16),
                  Container(
                    height: 62,
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: .circular(24),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: .circular(24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(16),
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: .circular(16),
                      color: Colors.orange,
                    ),
                  ),
                  Gap(12),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(fontSize: 24, fontWeight: .bold),
                      ),
                      TextButton(onPressed: () {}, child: Text("See all")),
                    ],
                  ),
                  Gap(8),
                  Container(
                    height: 100,
                    child: Row(
                      spacing: 8,
                      children: [
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                      ],
                    ),
                  ),
                  Gap(16),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        "Trending Now",
                        style: TextStyle(fontSize: 24, fontWeight: .bold),
                      ),

                      TextButton(onPressed: () {}, child: Text("See all")),
                    ],
                  ),
                  Gap(4),
                  Container(height: 320, child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
