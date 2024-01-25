
import 'package:flutter/material.dart';
import 'package:social_media_app/conversation-page.dart';
import 'package:social_media_app/profile-page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        'image': 'images/Story-1.jpeg',
        'postTime': '30m ago',
        'userName': 'lalalalisa_m',
      },
      {
        'image': 'images/Story-2.png',
        'postTime': '5d ago',
        'userName': 'Beverly Jones',
      },
      {
        'image': 'images/Story-3.png',
        'postTime': '3y ago',
        'userName': 'Crystal Flores',
      },
      {
        'image': 'images/Story-4.png',
        'postTime': '2m ago',
        'userName': 'Brittany Hart',
      },
      {
        'image': 'images/Story-5.png',
        'postTime': '10m ago',
        'userName': 'Deborah Flores',
      },
      {
        'image': 'images/Story-6.png',
        'postTime': '1hour ago',
        'userName': 'Harley Quinn',
      },
    ];
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      // ),
      body: Column(
        children: [
          // heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 20),
                      ),
                      Text(
                        'Alvarado!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfilePage(),
                          ));
                    },
                    child: ClipOval(
                      // borderRadius: BorderRadius.circular(48.0),
                      child: Image.asset(
                        'images/ProfileDp.jpg',
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(114, 92, 193, .15),
                          blurRadius: 44,
                          offset: Offset(0, -5),
                        ),
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, .02),
                          blurStyle: BlurStyle.solid,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Search friend',
                          labelStyle: const TextStyle(color: Colors.pink),
                          prefixIcon: const Icon(Icons.search_rounded,
                              color: Colors.pink),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.pink),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.pink),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConversationPage(),
                            ));
                      },
                      icon: const Icon(
                        Icons.chat,
                        color: Colors.pinkAccent,
                        size: 30,
                      )),
                ),
              ],
            ),
          ),

          // story
          Expanded(
            child: ListView(

              itemExtent: 130.0,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
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
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  child: IconButton(
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => const ConversationPage(),));
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 50,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pinkAccent, // Choose your border color
                        width: 2.5, // Choose your border width
                      ),
                    ),
                    child: ClipOval(
                      // borderRadius: BorderRadius.circular(48.0),
                      child: Image.asset(
                        'images/Story-1.jpeg',
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pinkAccent, // Choose your border color
                        width: 2.5, // Choose your border width
                      ),
                    ),
                    child: ClipOval(
                      // borderRadius: BorderRadius.circular(48.0),
                      child: Image.asset(
                        'images/Story-2.png',
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pinkAccent, // Choose your border color
                        width: 2.5, // Choose your border width
                      ),
                    ),
                    child: ClipOval(
                      // borderRadius: BorderRadius.circular(48.0),
                      child: Image.asset(
                        'images/Story-3.png',
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pinkAccent, // Choose your border color
                        width: 2.5, // Choose your border width
                      ),
                    ),
                    child: ClipOval(
                      // borderRadius: BorderRadius.circular(48.0),
                      child: Image.asset(
                        'images/Story-4.png',
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pinkAccent, // Choose your border color
                        width: 2.5, // Choose your border width
                      ),
                    ),
                    child: ClipOval(
                      // borderRadius: BorderRadius.circular(48.0),
                      child: Image.asset(
                        'images/Story-5.png',
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pinkAccent, // Choose your border color
                        width: 2.5, // Choose your border width
                      ),
                    ),
                    child: ClipOval(
                      // borderRadius: BorderRadius.circular(48.0),
                      child: Image.asset(
                        'images/Story-6.png',
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // post
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 5, // Adjust the number of cards as needed
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Card(
                    elevation: 30.0, // Adjust the card elevation as needed
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15.0), // Set your border radius
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          // height: 150.0,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image.asset(
                              data[index]['image']!,
                              // Provide your image URL
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  data[index]['image']!,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data[index]['userName']!,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        data[index]['postTime']!,
                                        style: const TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.5),
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
