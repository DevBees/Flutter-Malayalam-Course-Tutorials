import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_home/components/roomspecappliance.dart';
import 'components/appliances.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHome = true;
  bool isSetting = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.list_dash,
              color: Colors.grey.shade500,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/devbees.png'),
                radius: 18,
              ),
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'My Smart Home',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 3,
                                    offset: Offset(2, 3)),
                              ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Appliance(
                          colour: Colors.yellow,
                          icon: Icons.lightbulb,
                          label: 'Light',
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Appliance(
                          colour: Colors.blueAccent,
                          icon: Icons.play_circle_fill_outlined,
                          label: 'Media',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Appliance(
                          colour: Colors.redAccent,
                          icon: Icons.videocam_rounded,
                          label: 'Camera',
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Appliance(
                          colour: Colors.greenAccent.shade700,
                          icon: Icons.wifi,
                          label: 'Wi-Fi',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Row(children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 20,
                      ),
                      child: Text(
                        'Living Room',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            shadows: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 3,
                                  offset: Offset(2, 3)),
                            ]),
                      ),
                    )
                  ]),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          top: 10.0,
                        ),
                        child: Text(
                          '2 devices',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Row(
                      children: [
                        RoomSpecAppliance(
                          imgPath: 'images/wifi-router.png',
                          label: 'Netgear Wifi',
                          imgWidth: 0.2,
                          imgHt: 0.2,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        RoomSpecAppliance(
                          imgPath: 'images/air-conditioner.png',
                          label: 'Living Room AC',
                          imgWidth: 0.24,
                          imgHt: 0.3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(0, -2),
                            blurRadius: 2)
                      ],
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: isHome ? Colors.blueAccent : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                isHome = true;
                                isSetting = false;
                              });
                            }),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.settings,
                              color:
                                  isSetting ? Colors.blueAccent : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                isHome = false;
                                isSetting = true;
                              });
                            }),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 5,
                          left: 5,
                          right: 5,
                        ),
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(0, 2),
                              blurRadius: 2,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent.shade700,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: Offset(0, 2),
                                    blurRadius: 2)
                              ]),
                          child: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
