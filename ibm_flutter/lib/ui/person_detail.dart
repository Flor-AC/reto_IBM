import 'package:flutter/material.dart';

class PersonDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://i.pinimg.com/originals/2d/ab/af/2dabaf85c244dfac886209a2ba7b17d5.jpg',
              fit: BoxFit.cover,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.25,
            minChildSize: 0.25,
            maxChildSize: 0.5,
            builder: (ctx, controller) {
              return Container(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ListView(
                  controller: controller,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.network(
                            'https://i.pinimg.com/474x/8c/c7/a7/8cc7a7a402672ebb7e9f17c754b395e7.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Partido X',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Partido político',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Acerca del candidato:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "I will ruin the couch with my claws mrow and fall over dead (not really but gets sypathy) munch on tasty moths paw at beetle and eat it before it gets away. Making sure that fluff gets into the owner's eyes murf pratt ungow ungow so jump around on couch, meow constantly until given food, push your water glass on the floor. My slave human didn't give me any food so i pooped on the floor furrier and even more furrier hairball but russian blue but cats making all the muffins peer out window, chatter at birds, lure them to mouth.",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Propuestas:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '\$500,000',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Costo de campaña',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '\$18-22',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Tiempo de gobierno',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
