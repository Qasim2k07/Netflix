import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          children: [Text('1234567'), Icon(CupertinoIcons.pencil)],
        ),
        actions: const [
          Icon(
            Icons.search_outlined,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
              height: 450,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://th.bing.com/th/id/R.182e64c9d1fc40829208dec9274f71e0?rik=q%2fqhxFkCtZ5TPQ&pid=ImgRaw&r=0',
                  ),
                ),
              ),
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
              left: 100,
              right: 100,
              bottom: 80.0,
              child: Container(
                height: 160,
                width: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 0.2,
                      blurRadius: 30,
                      offset: const Offset(1, 1), // changes position of shadow
                    ),
                  ],
                  image: const DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                      'https://th.bing.com/th/id/R.5b8b60aae695178db9fc6c16ae6947d6?rik=%2bUp1Y84xtMoZ%2fA&pid=ImgRaw&r=0',
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 60,
              right: 60,
              bottom: 0.0,
              child: Text(
                'Townsmen - A Kingdom  Rebuilt',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sandbox',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 6,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Medevial',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 6,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Simulation',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 6,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Builder',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 6,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Fantasy',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 6,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Strategy',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Continue Playing',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade900),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.84a1ec33d41b5ffc991b88cb0bf25a8a?rik=vDBoUAeEhNT06Q&riu=http%3a%2f%2fapkdiary.com%2fwp-content%2fuploads%2f2019%2f11%2fBloons-TD-6-for-PC-Windows-7-8-10-Mac-Free-Download.png&ehk=S1Q%2bwCImlOnMqTk89rYodrXi5rSSzO3jigWrkkRpAj0%3d&risl=&pid=ImgRaw&r=0'))),
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Bloons TD 6',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Download On This Device',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'For You',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              )),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listCard(
                    'https://th.bing.com/th/id/OIP.T4bzlO_s95T-kvdc3yeUOwHaHa?pid=ImgDet&rs=1'),
                listCard(
                    'https://th.bing.com/th/id/R.c4cd836f4442525c882f7dc2d8f0ee2e?rik=nxb3oucZP3PJsw&pid=ImgRaw&r=0'),
                listCard(
                    'https://th.bing.com/th/id/OIP.db3-effHRH2k_q6ML5FWdAHaHa?pid=ImgDet&rs=1')
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Popular',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              )),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listCard(
                    'https://pm1.narvii.com/5716/86433342e62c05a422b1d2b07d90162efcf3c336_hq.jpg'),
                listCard(
                    'https://th.bing.com/th/id/R.f7afadf49e069466d3821f5f8091206e?rik=GRBrQbmY48ajWQ&pid=ImgRaw&r=0'),
                listCard(
                    'https://th.bing.com/th/id/OIP.e0lkj3dn15lIFeL2r6jm5wHaHa?pid=ImgDet&rs=1')
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }

  Widget listCard(
    String imagename,
  ) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
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
