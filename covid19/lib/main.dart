import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          titleSpacing: 0.5,
          title: Text(
            'Coronavirus Report',
            style: TextStyle(
                color: Colors.black, fontFamily: 'CreteRound', fontSize: 20),
          ),
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
                icon: SvgPicture.asset('images/menu.svg'),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }),
          ),
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                child: Wrap(
                  children: [
                    // First Box
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(4, 5),
                              )
                            ],
                            gradient: LinearGradient(colors: [
                              Colors.amber[900],
                              Colors.amber[300],
                            ]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 30,
                              right: 30,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amber[900].withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset('images/pandemic.svg'),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Confirmed Case",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'CreteRound',
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '0',
                                              style: TextStyle(
                                                  color: Colors.amber[200],
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Second Box
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(4, 5),
                              )
                            ],
                            gradient: LinearGradient(colors: [
                              Colors.pink[800],
                              Colors.pink[300],
                            ]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 30,
                              right: 30,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.pink[900].withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset('images/death.svg'),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Death Case",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'CreteRound',
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '0',
                                              style: TextStyle(
                                                  color: Colors.pink[200],
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    //third box
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(4, 5),
                              )
                            ],
                            gradient: LinearGradient(colors: [
                              Colors.green[800],
                              Colors.green[300],
                            ]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 30,
                              right: 30,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.green[900].withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset('images/virus.svg'),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Active Case",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'CreteRound',
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '0',
                                              style: TextStyle(
                                                  color: Colors.green[200],
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Preventions
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Preventions',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 6.0,
                          ),
                          SvgPicture.asset('images/handwash.svg'),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('Wash Hands',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: 'CreteRound')),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'images/protection.svg',
                            height: 70.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('Wear Mask',
                              style: TextStyle(
                                  color: Colors.blue, fontFamily: 'CreteRound'))
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'images/social-distancing.svg',
                            height: 70.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('Social-distancing',
                              style: TextStyle(
                                  color: Colors.blue, fontFamily: 'CreteRound'))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(4, 5),
                              )
                            ],
                            gradient: LinearGradient(colors: [
                              Colors.green,
                              Colors.green[900],
                            ]),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(150.0, 20, 0, 0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Stay Protected",
                                  style: TextStyle(
                                      fontFamily: 'Righteous',
                                      fontSize: 28,
                                      color: Colors.white)),
                              TextSpan(
                                  text: '\nCall 119 for ambulance',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(color: Colors.white))
                            ]),
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "images/Doctor.svg",
                        height: 300,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
