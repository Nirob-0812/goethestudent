import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goethestudent/views/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});
  //this line for checked pull request
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dashboard"),
            ElevatedButton(
              onPressed: () async{
                await GoogleSignIn().signOut();
                FirebaseAuth.instance.signOut().then((value){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LogInPage();
                  }));
                });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent)
              ),
              child: Text("Sign Out"),
            ),
          ],
        ),

      ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 310,
              decoration: BoxDecoration(
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.grey[400]!,
                      blurRadius: 25.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: const Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0)),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.purple, Colors.blue])),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: IconButton(
                          icon: const Icon(Icons.list_alt_rounded,
                              color: Colors.white, size: 26),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8, left: 0.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    const Icon(Icons.home, size: 18),
                                    const SizedBox(width: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        "Teachers".toUpperCase(),
                                        style: GoogleFonts.cinzel(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8, left: 10.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    const Icon(Icons.flight, size: 18),
                                    const SizedBox(width: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        "Students".toUpperCase(),
                                        style: GoogleFonts.cinzel(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding:
                            //       const EdgeInsets.only(top: 8, left: 10.0),
                            //   child: ElevatedButton(
                            //     onPressed: () {},
                            //     child: Row(
                            //       children: [
                            //         const Icon(Icons.train, size: 18),
                            //         const SizedBox(width: 5),
                            //         Padding(
                            //           padding: const EdgeInsets.only(top: 1.0),
                            //           child: Text(
                            //             "Officials".toUpperCase(),
                            //             style: GoogleFonts.cinzel(
                            //                 color: Colors.white,
                            //                 fontSize: 14,
                            //                 fontWeight: FontWeight.normal),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 22.0),
                        child: Text(
                          'Plan A Study',
                          style: GoogleFonts.cinzel(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, top: 2.0, bottom: 5),
                        child: Text(
                          'Where Do You Want To Start?',
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              letterSpacing: 0,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                  //   child: TextField(
                  //     textAlign: TextAlign.center,
                  //     minLines: 1,
                  //     maxLines: 1,
                  //     autocorrect: false,
                  //     decoration: InputDecoration(
                  //       prefixIcon: const Icon(Icons.location_on),
                  //       hintText: 'Search Your Destination',
                  //       hintStyle: GoogleFonts.lato(
                  //           color: Colors.grey[600],
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.normal),
                  //       filled: true,
                  //       fillColor: Colors.grey[200],
                  //       enabledBorder: const OutlineInputBorder(
                  //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //         borderSide: BorderSide(color: Colors.transparent),
                  //       ),
                  //       focusedBorder: const OutlineInputBorder(
                  //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //         borderSide: BorderSide(color: Colors.transparent),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 28),
                    child: Text(
                      'Near Me',
                      style: GoogleFonts.cinzel(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Text(
                      '3 Teacher Found',
                      style: GoogleFonts.lato(
                          color: Colors.grey[600],
                          letterSpacing: 0,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Text(
                  'MORE',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      letterSpacing: 0,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: const Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300]!,
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: const Offset(
                            0, // Move to right 10  horizontally
                            4, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://i.pinimg.com/564x/61/df/13/61df13452dab063e11d79abab00b083f.jpg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(
                        'Nilufar Yesmin',
                        style: GoogleFonts.cinzel(
                            color: Colors.black,
                            letterSpacing: 0,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Twitter_Verified_Badge.svg/1200px-Twitter_Verified_Badge.svg.png',
                          height: 16)
                    ],
                  ),
                  subtitle: const Text('Rating : 4.5/5'),
                  trailing: const Icon(Icons.phone_forwarded_outlined),
                  isThreeLine: false,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 2.0, //extend the shadow
                      offset: const Offset(
                        0, // Move to right 10  horizontally
                        4, // Move to bottom 10 Vertically
                      ),
                    )
                  ]),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: const Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/564x/d1/fb/00/d1fb00cb580f5dce393b8a95535235eb.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      'Subrina Sohana',
                      style: GoogleFonts.cinzel(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Twitter_Verified_Badge.svg/1200px-Twitter_Verified_Badge.svg.png',
                        height: 16)
                  ],
                ),
                subtitle: const Text('Rating : 4.3/5'),
                trailing: const Icon(Icons.phone_forwarded_outlined),
                isThreeLine: false,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 2.0, //extend the shadow
                      offset: const Offset(
                        0, // Move to right 10  horizontally
                        4, // Move to bottom 10 Vertically
                      ),
                    )
                  ]),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: const Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/564x/b3/28/19/b32819061f84d2d3cb44c93da54eff26.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      'Mr Chang Mao',
                      style: GoogleFonts.cinzel(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Twitter_Verified_Badge.svg/1200px-Twitter_Verified_Badge.svg.png',
                        height: 16)
                  ],
                ),
                subtitle: const Text('Rating : 4.1/5'),
                trailing: const Icon(Icons.phone_forwarded_outlined),
                isThreeLine: false,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 28),
                    child: Text(
                      'Trending',
                      style: GoogleFonts.cinzel(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      '3 Subject',
                      style: GoogleFonts.lato(
                          color: Colors.grey[600],
                          letterSpacing: 0,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Text(
                  'MORE',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      letterSpacing: 0,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(
              height: 180,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 28.0, top: 20, bottom: 10),
                        child: Container(
                          height: 110,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[500]!,
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: const Offset(
                                  0, // Move to right 10  horizontally
                                  4, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/53/81/93/538193c83d2912c4f06f6ae07f8f4549.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          'A1 Exam',
                          style: GoogleFonts.cinzel(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 28.0, top: 20, bottom: 10),
                        child: Container(
                          height: 110,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[500]!,
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: const Offset(
                                  0, // Move to right 10  horizontally
                                  4, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/73/5e/a0/735ea0a91c3933bffbcda700c510915e.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          'Ausbilding',
                          style: GoogleFonts.cinzel(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 28.0, top: 20, bottom: 10),
                        child: Container(
                          height: 110,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[500]!,
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: const Offset(
                                  0, // Move to right 10  horizontally
                                  4, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/53/a9/05/53a9056f01bb1baeb168a3a0627337ea.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          'Exam Preparation',
                          style: GoogleFonts.cinzel(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
