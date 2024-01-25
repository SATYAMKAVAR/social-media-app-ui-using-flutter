import 'package:flutter/material.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> data = [
      {
        'image':   'images/Story-1.jpeg',
        'lastMsg': 'You know you\'re in love when',
        'userName': 'lalalalisa_m',
      },
      {
        'image': 'images/Story-2.png',
        'lastMsg': 'Hey you! What\'s up!',
        'userName': 'Beverly Jones',
      },
      {
        'image': 'images/Story-3.png',
        'lastMsg': 'When i\'m good, I\'m very good',
        'userName': 'Crystal Flores',
      },
      {
        'image': 'images/Story-4.png',
        'lastMsg': 'Hey you! What\'s up',
        'userName': 'Brittany Hart',
      },
      {
        'image': 'images/Story-5.png',
        'lastMsg': 'I am a dancer.I Know you\'re',
        'userName': 'Deborah Flores',
      },
      {
        'image': 'images/Story-6.png',
        'lastMsg': 'You know you\'re in love when',
        'userName': 'Harley Quinn',
      },
    ];
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
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
                      'Conversation',
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
          Padding(
            padding: const EdgeInsets.all(30.0),
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
                    prefixIcon:
                        const Icon(Icons.search_rounded, color: Colors.pink),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemCount: 6, // Adjust the number of cards as needed
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Card(
                      elevation: 15.0, // Adjust the card elevation as needed
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Set your border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                data[index]['image'],
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                             Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data[index]['userName'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      data[index]['lastMsg'],
                                      style: const TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 0.5),
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
