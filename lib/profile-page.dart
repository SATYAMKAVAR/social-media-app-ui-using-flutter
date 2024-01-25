import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(114, 92, 193, .15),
                    blurRadius: 44,
                    // offset: Offset(0, -5),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, .02),
                    blurStyle: BlurStyle.solid,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                )),
                            const Row(
                              children: [
                                Text(
                                  'My Profile',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 30,
                                    // color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert,
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      // Expanded(
                      //   child:
                      ClipOval(
                        child: Image.asset(
                          'images/ProfileDp.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // ),
                      const SizedBox(height: 5),
                      const Text(
                        'Anna Alvarado',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Guildhall School of Music & Drama',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'London, UK',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 40),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Followers',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '456',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Followers',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '456',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Followers',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '456',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        // Adjust the radius as needed
                        child: Image.asset(
                          'images/Post-1.jpg',
                          fit: BoxFit
                              .cover, // You can adjust the fit based on your needs
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              // Adjust the radius as needed
                              child: Image.asset(
                                'images/Post-2.jpg',
                                fit: BoxFit
                                    .cover, // You can adjust the fit based on your needs
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              // Adjust the radius as needed
                              child: Image.asset(
                                'images/Post-3.jpg',
                                fit: BoxFit
                                    .cover,
                                // filterQuality: FilterQuality.high,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
