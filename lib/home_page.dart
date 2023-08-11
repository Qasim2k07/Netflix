import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/show_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: Container(
                  height: 35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/N.png'),
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
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
                  onTap: () {
                    Get.to(const Showscreen());
                  },
                  child: Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 255, 0, 0)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          'Play',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 45,
                ),
                Container(
                  width: 160,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  listCard('assets/tvshow.jpg', 'TV Shows', 50),
                  listCard('assets/movies.jpg', 'Movies', 50),
                  listCard('assets/categories.jpg', 'All Categories', 30)
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  'Latest',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  listCard2(
                    'https://th.bing.com/th/id/R.b508aa0e6d5acb1b94f7ba657613cc3b?rik=KjeW%2fgY7qr24Lw&pid=ImgRaw&r=0',
                  ),
                  listCard2(
                    'https://th.bing.com/th/id/R.2bb443f9dee47e424a0755eb182b40e8?rik=Tzd%2bi4zJOCbZbA&pid=ImgRaw&r=0',
                  ),
                  listCard2(
                    'https://www.themoviedb.org/t/p/original/mJVUZpPR4BdZzLWyP51h8pOU1RO.jpg',
                  ),
                  
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Trending Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  listCard2(
                    'https://th.bing.com/th/id/OIP.RSPBlO0pQPptfUbYE9P0kwHaKe?pid=ImgDet&rs=1',
                  ),
                  listCard2(
                    'https://th.bing.com/th/id/R.c2cf3ef36ecff29c6fae9fb3f49cabfe?rik=mgEZZFLoCeQd%2fg&pid=ImgRaw&r=0',
                  ),
                  listCard2(
                    'https://th.bing.com/th/id/R.f5f20fdcceb7a15699d7434633969e5a?rik=6fzOItYGB5Y23A&pid=ImgRaw&r=0',
                  ),
                  
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Popular on Netflix',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  listCard2(
                    'https://deadentertainment.com/uploads/the-witcher-netflix-new-poster-key-art-01-i28y29t2m4.jpg',
                  ),
                  listCard2(
                    'https://image.kpopmap.com/2020/07/all-of-us-are-dead-poster-netflix.jpeg',
                  ),
                  listCard2(
                    'https://th.bing.com/th/id/OIP.vRRPkuSQabD8RTJnassBKAHaJQ?pid=ImgDet&rs=1',
                  ),
                  
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Familiar TV Favourites',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  listCard2(
                    'https://th.bing.com/th/id/R.371c106fe51167316430ab52347f3791?rik=zvc5SarkgxnH3A&riu=http%3a%2f%2fwww.impawards.com%2ftv%2fposters%2farcane_league_of_legends_ver9_xlg.jpg&ehk=R2m6R%2fIqVfWH7tr760Wee6brl0vg%2fs6mwHQo9redMpA%3d&risl=&pid=ImgRaw&r=0',
                  ),
                  listCard2(
                    'https://th.bing.com/th/id/R.ec00a5b4d08f8b11f61d864f67ae1c0f?rik=IEHvNFHjnS2wUg&pid=ImgRaw&r=0',
                  ),
                  listCard2(
                    'https://th.bing.com/th/id/R.f53f391bff963372e1401995aea69fa6?rik=btiDHKWsOV5tQw&pid=ImgRaw&r=0',
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listCard(String imagename, String txt, double padding) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imagename,
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black.withOpacity(0.5)),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(padding, 0, 0, 0),
                child: Text(
                  txt,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 20)
      ],
    );
  }

  Widget listCard2(
    String imagename,
  ) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 180,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imagename,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20)
      ],
    );
  }
}
