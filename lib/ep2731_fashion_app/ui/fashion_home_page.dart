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
                  borderRadius: .circular(12)

                ),
                child: Icon(Icons.favorite_border_outlined),
              ),
              Container(
                padding: .all(16),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: .circular(12)
                ),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ],
          ),
          Gap(32),
          Container(
            height: 62,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: .circular(16)
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                Expanded(child: TextField()),
                Container(
                  padding: .all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Icon(Icons.tune),
                )
              ],
            )
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Gap(16),
                Container(
                  height: 62,
                  child: Placeholder(),
                ),
                Gap(16),
                Container(
                  height: 240,
                  child: Placeholder(),
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Category"),
                    TextButton(onPressed: (){}, child: Text("See all")),
                  ],
                ),
                Gap(8),
                Container(
                  height: 100,
                  child: Placeholder(),
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Trending Now"),
                    TextButton(onPressed: (){}, child: Text("See all")),
                  ],
                ),
                Container(
                  height: 320,
                  child: Placeholder(),
                )
              ],
            ),
          )),


        ],
      ),
    );
  }
}