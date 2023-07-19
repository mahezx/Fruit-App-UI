import 'dart:ui';
import 'package:flutter/material.dart';
import 'page/detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    home: MainApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: latar1,
        body: Container(
          color: latar1,
          padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // SIDEBAR ATAS

              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/menu-2-lineco.svg',
                    color: const Color(0xffa3a3a3),
                    height: 30,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: Stack(
                            children: [
                              const Icon(
                                Icons.shopping_bag_outlined,
                                size: 30,
                                color: Color(0xff9c9c9c),
                              ),
                              Positioned(
                                top: 20,
                                left: 20,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFF846D),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/img/kecil.jpg',
                                ),
                                fit: BoxFit.cover)),
                      )
                    ],
                  )
                ],
              ),

              // HERO CARD

              Container(
                height: 225,
                margin: const EdgeInsets.only(
                  top: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: cardHero,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -25,
                      right: -20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/img/buahbanyak4.png',
                            // width: 200,
                            height: 200,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 13,
                          right: 13,
                          top: 25,
                          bottom: 8,
                        ),
                        color: Colors.transparent,
                        padding: const EdgeInsets.only(
                          top: 3,
                          left: 3,
                          right: 3,
                          bottom: 15,
                        ),
                        child: Glassmorphism(
                          blur: 3,
                          opacity: 0.1,
                          radius: 10.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'OFFER',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        letterSpacing: 8,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xffCAA681),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                child: Text(
                                  'Discount up to 40% Off',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 22.9,
                                    fontWeight: FontWeight.w600,
                                    color: putih,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'In honor of World Health Day',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: const Color(0xffC3C3CB),
                                      ),
                                    ),
                                    Text(
                                      "We'd like to give you this amazing",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: const Color(0xffC3C3CB),
                                      ),
                                    ),
                                    Text(
                                      'offers.',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: const Color(0xffC3C3CB),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9))),
                                      alignment: Alignment.center,
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Color(0xffF1AB68)),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.only(
                                        top: 18,
                                        left: 25,
                                        bottom: 18,
                                        right: 25,
                                      ))),
                                  onPressed: () {},
                                  child: Text(
                                    'View Offers',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff0D0906),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Recommend

              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Text(
                      'Recommmended Fruits',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: const Color(0xffC8C8D0),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffAE8974),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 19,
                          color: Color(0xffAE8974),
                        )
                      ],
                    )
                  ],
                ),
              ),

              // CARD BUAH

              Container(
                margin: const EdgeInsets.only(
                  top: 60,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailPage()),
                        );
                      },
                      child: Container(
                          child: Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 110,
                                width: 152,
                                decoration: BoxDecoration(
                                    color: buah1,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(80),
                                      topRight: Radius.circular(80),
                                    )),
                              ),
                              Positioned(
                                top: -57,
                                child: Image.asset(
                                  'assets/img/nanas2.png',
                                  width: 160,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            // height: MediaQuery.of(context).size.height,
                            // width: MediaQuery.of(context).size.width,
                            width: 152,
                            decoration: BoxDecoration(
                                color: hitam,
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                )),
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 20,
                              bottom: 20,
                            ),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Text(
                                          'FRUIT',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12,
                                            letterSpacing: 6,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xffCAA681),
                                          ),
                                        ),
                                        Positioned(
                                          top: -10,
                                          right: -56,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star_rounded,
                                                color: bintang,
                                                size: 17,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '5.0',
                                                style: GoogleFonts.montserrat(
                                                    color: putih,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pinneaple',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: putih,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'Rp. 80.000',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: teksOren,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: -5,
                                        right: -46,
                                        child: Row(
                                          children: [
                                            Text(
                                              'per kg',
                                              style: GoogleFonts.montserrat(
                                                color: const Color(0xff9C9C9C),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                    const SizedBox(
                      width: 36,
                    ),
                    Container(
                        child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 110,
                              width: 152,
                              decoration: BoxDecoration(
                                  color: buah2,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(80),
                                    topRight: Radius.circular(80),
                                  )),
                            ),
                            Positioned(
                              top: -45,
                              left: -10,
                              child: Image.asset(
                                'assets/img/apel.png',
                                width: 170,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // height: MediaQuery.of(context).size.height,
                          // width: MediaQuery.of(context).size.width,
                          width: 152,
                          decoration: BoxDecoration(
                              color: hitam,
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 20,
                            bottom: 20,
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Text(
                                        'FRUIT',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          letterSpacing: 6,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xffCAA681),
                                        ),
                                      ),
                                      Positioned(
                                        top: -10,
                                        right: -56,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              color: bintang,
                                              size: 17,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '4.7',
                                              style: GoogleFonts.montserrat(
                                                  color: putih,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  textStyle: subscriptStyle),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Apple',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: putih,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Rp. 25.000',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: teksOren,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: -5,
                                      right: -46,
                                      child: Row(
                                        children: [
                                          Text(
                                            'per kg',
                                            style: GoogleFonts.montserrat(
                                              color: const Color(0xff9C9C9C),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(top: 10),
          // currentIndex: myIndex,
          child: Material(
            elevation: 4,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color(0xff2c2c2c),
            child: Container(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                itemCount: data.length,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (ctx, i) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = i;
                      });
                    },
                    child: AnimatedContainer(
                     
                      duration: Duration(milliseconds: 250),
                      width: 60,
                      decoration: BoxDecoration(
                        border: i == selectedIndex
                            ? Border(
                              
                                top: BorderSide(
                                    width: 3.0, color: Color(0xffF1AB68)
                                    )
                              )

                              
                            : null,
                      ),
                      child: Icon(data[i],
                          size: 35,
                          color: i == selectedIndex
                              ? Color(0xffF1AB68)
                              : Color(0xffA8A8A8)),
                    ),
                  ),
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // DATA

  
  //WARNA
  Color latar1 = const Color(0xff1E1E1E);
  Color abuAbu = const Color(0xffA8A8A8);
  Color cardHero = const Color(0xff2C2C2C);
  Color teksOren = const Color(0xffC69B83);
  Color hitam = const Color(0xff000000);
  Color buah1 = const Color(0xff44311E);
  Color buah2 = const Color(0xff44251D);


  Color latar2 = const Color(0xff2C2C2C);
  Color cardGelap = const Color(0xff1E1E1E);
  Color iconS = const Color(0xffD3AC86);
  Color iconpink = const Color(0xffFD836C);
  Color btnAbu = const Color(0xff2C2C2C);
  Color bintang = const Color(0xffEEA966);
  Color putih = const Color(0xffffffff);

  // text
  // Untuk SubScript Text 
  final TextStyle subscriptStyle = TextStyle(
      fontSize: 10,
      textBaseline: TextBaseline.alphabetic,
      fontWeight: FontWeight.normal,
    );

  // Untuk Bottom Navigation Bar
  //  int myIndex = 0;
   int selectedIndex = 0;
    List<IconData> data = [
      Icons.home_filled,
      Icons.search,
      Icons.favorite_rounded,
      Icons.event_note_outlined,
    ];
}

  // UNTUK BLUR

class Glassmorphism extends StatelessWidget {
    final double blur;
    final double opacity;
    final double radius;
    final Widget child;

    const Glassmorphism({
      Key? key,
      required this.blur,
      required this.opacity,
      required this.radius,
      required this.child,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 5,
              right: 5,
              bottom: 5,
            ),
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ),
            child: child,
          ),
        ),
      );
    }
  }
