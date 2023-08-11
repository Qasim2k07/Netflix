// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/tab_controller.dart';

class Showscreen extends StatelessWidget {
  const Showscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MyTabController _tabx = Get.put(MyTabController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                'assets/witcher.jpg',
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.25),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.75),
                        Colors.black,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0.0,
                right: 100,
                bottom: 0.0,
                child: Container(
                  height: 35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/123.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0.0,
                right: 340,
                bottom: 30.0,
                child: Container(
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/nseries.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 0.0,
                  right: 350,
                  top: 50.0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  )),
            ]),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Fantasy, Action',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 6,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  '2019',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 6,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  '1 Season',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 6,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  '88% Match',
                  style: TextStyle(
                      color: Color.fromARGB(255, 14, 171, 0), fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    width: 380,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 255, 0, 0)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Play',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Geralt of Rivia, a mutated monster-hunter for hire, journeys towards his destiny in a trubulent world where people often prove more wicked than beasts',
                style: TextStyle(color: Colors.grey.shade300, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.transparent),
              child: TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: const Color.fromARGB(255, 255, 17, 0),
                controller: _tabx.controller,
                tabs: const [
                  Tab(
                    text: 'Episodes',
                  ),
                  Tab(
                    text: 'Trailers & More',
                  ),
                  Tab(
                    text: 'More Like This',
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 600,
                width: double.maxFinite,
                child: TabBarView(controller: _tabx.controller, children: [
                  ListView(
                    children: [
                      listCard(
                        'assets/movies.jpg',
                      ),
                      listCard(
                        'assets/categories.jpg',
                      ),
                      listCard(
                        'assets/movies.jpg',
                      ),
                      listCard(
                        'assets/categories.jpg',
                      ),
                      listCard(
                        'assets/movies.jpg',
                      ),
                      listCard(
                        'assets/categories.jpg',
                      ),
                      listCard(
                        'assets/movies.jpg',
                      ),
                      listCard(
                        'assets/categories.jpg',
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      listCard(
                        'assets/movies.jpg',
                      ),
                      listCard(
                        'assets/movies.jpg',
                      ),
                      listCard(
                        'assets/categories.jpg',
                      ),
                    ],
                  ),
                  ListView(
                    children: const [],
                  ),
                ])),
          ],
        ),
      ),
    );
  }

  Widget listCard(
    String imagename,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 160,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(
                        imagename,
                      ),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text('Episode y',
                        style: TextStyle(color: Colors.white))),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'This is placeHolder text',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Icon(
                Icons.download_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
