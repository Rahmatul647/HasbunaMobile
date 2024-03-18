import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static const routeName = "/Dashboard";
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Welcome ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width / 4,
                  // ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Nama yang masuk",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          GestureDetector(
                            onTap: () {},
                          );
                        },
                        icon: Image.asset(
                          "assets/images/cupcake.png",
                          width: 50,
                          height: 50,
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    IconButton(
                      onPressed: () {
                        GestureDetector(
                          onTap: () {},
                        );
                      },
                      icon: Image.asset(
                        'assets/images/drink.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    IconButton(
                        onPressed: () {
                          GestureDetector(onTap: () {});
                        },
                        icon: Image.asset(
                          'assets/images/menu.png',
                          width: 50,
                          height: 50,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          GestureDetector(
                            onTap: () {},
                          );
                        },
                        icon: Image.asset(
                          'assets/images/fast-food.png',
                          width: 50,
                          height: 50,
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    IconButton(
                      onPressed: () {
                        GestureDetector(
                          onTap: () {},
                        );
                      },
                      icon: Image.asset(
                        'assets/images/nachos.png',
                        width: 50,
                        height: 50,
                      ),
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
