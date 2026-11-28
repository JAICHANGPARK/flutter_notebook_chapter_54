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
              Text("DREAM", style: TextStyle(fontSize: 28, fontWeight: .bold)),
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
                            child: Center(
                              child: Text(
                                "Women",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: .bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: .circular(24),
                            ),
                            child: Center(
                              child: Text(
                                "Men",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: .bold,
                                ),
                              ),
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
                    height: 98,
                    child: Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: Column(
                            spacing: 6,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: .all(2),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(24),
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      shape: RoundedSuperellipseBorder(
                                        borderRadius: .circular(24),
                                      ),
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                              ),
                              Text("Dresses"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            spacing: 6,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: .all(2),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(24),
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      shape: RoundedSuperellipseBorder(
                                        borderRadius: .circular(24),
                                      ),
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                              ),
                              Text("Tops"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            spacing: 6,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: .all(2),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(24),
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      shape: RoundedSuperellipseBorder(
                                        borderRadius: .circular(24),
                                      ),
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                              ),
                              Text("Shoes"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            spacing: 6,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: .all(2),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(24),
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      shape: RoundedSuperellipseBorder(
                                        borderRadius: .circular(24),
                                      ),
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                              ),
                              Text("Beauty"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            spacing: 6,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: .all(2),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(24),
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      shape: RoundedSuperellipseBorder(
                                        borderRadius: .circular(24),
                                      ),
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                              ),
                              Text("Accessories"),
                            ],
                          ),
                        ),
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
                  Container(
                    height: 720,
                    child: GridView.builder(
physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: .7,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: .circular(20),
                            ),
                            color: Colors.grey,
                          ),
                        );
                      },
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
