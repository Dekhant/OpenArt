import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  static const routeName = '/';
  final List<String> items = ["About OpenArt", "Blog", "Help", "Contact"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 60,
                child: DrawerHeader(
                  child: Row(
                    children: [
                      SizedBox(
                        child: Image.asset(
                          "assets/images/Logo.png",
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 24,
                        width: 24,
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.search),
                        ),
                      ),
                      const SizedBox(
                        width: 29,
                      ),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: IconButton(
                            onPressed: () {
                              return Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.close)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 105,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 24),
                      alignment: Alignment.center,
                      child: Text(
                        items[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 32),
                      ),
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: null,
                child: Container(
                  width: 308,
                  height: 56,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                      colors: [Color(0xff0038F5), Color(0xff9F03FF)],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Connect wallet",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            title: Image.asset(
              "assets/images/Logo.png",
              width: 140,
              height: 37,
            ),
          ),
        ],
      ),
    );
  }
}
