import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

class PerfumeShoppingHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<PerfumeShoppingHomePage> createState() =>
      _PerfumeShoppingHomePageState();
}

class _PerfumeShoppingHomePageState extends State<PerfumeShoppingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 243, 237, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              bottom: false,
              child: Column(
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          "Parfume Shop",
                          style: TextStyle(fontWeight: .bold, fontSize: 24),
                        ),
                        Container(
                          padding: .all(12),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.grey[400]!),
                          ),
                          child: Badge(
                            child: HugeIcon(
                              icon: HugeIcons.strokeRoundedNotification01,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Scents Crafted For Your Mood.",
                      style: TextStyle(fontWeight: .bold, fontSize: 32),
                    ),
                  ),
                  Container(
                    margin: .only(left: 16),
                    height: 50,
                    child: ListView(
                      scrollDirection: .horizontal,
                      children: [
                        Container(
                          margin: .only(right: 12),
                          padding: .symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.black),
                          ),
                          child: Icon(Icons.search),
                        ),
                        Container(
                          margin: .only(right: 12),
                          padding: .symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: .all(color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: .only(right: 12),
                          padding: .symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.black),
                          ),
                          child: Center(child: Text("Chanel")),
                        ),
                        Container(
                          margin: .only(right: 12),
                          padding: .symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.black),
                          ),
                          child: Center(child: Text("Dior")),
                        ),
                        Container(
                          margin: .only(right: 12),
                          padding: .symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.black),
                          ),
                          child: Center(child: Text("Versace")),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: .7,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        itemBuilder: ((context, index) {
                          return Column(
                            spacing: 8,
                            children: [
                              Expanded(child: Placeholder()),
                              Row(
                                mainAxisAlignment: .spaceAround,
                                children: [Text("Product"), Text("\$115.00")],
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              margin: .only(bottom: 32),
              padding: .all(6),
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                spacing: 8,
                mainAxisSize: .min,
                children: [
                  Container(
                    padding: .symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      spacing: 12,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedHome02),
                        Text("Home"),
                      ],
                    ),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .2),
                    ),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(Icons.favorite_outline, color: Colors.white),
                        // Text("Home"),
                      ],
                    ),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .2),
                    ),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(Icons.shopping_cart, color: Colors.white),
                        // Text("Home"),
                      ],
                    ),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .2),
                    ),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.white,
                        ),
                        // Text("Home"),
                      ],
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
