import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pas_ganjil_mahesa/main.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: latar2,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * .4,
                decoration: BoxDecoration(
                  color: latar2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 150,
                ),
                height: height * .6,
                decoration: BoxDecoration(
                    color: cardGelap,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(999.5),
                      topRight: Radius.circular(999.5),
                    )),
                child: Column(
                  children: [
                    // RATING DAN HARGA

                    Container(
                      margin: const EdgeInsets.only(
                        top: 20
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: 'Rp 80.000',
                                                style: TextStyle(
                                                  fontSize: 42,
                                                  fontWeight: FontWeight.bold,
                                                  color: teksOren,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 35,
                                              left: 195,
                                              child: Text(
                                                'Per  Kg',
                                                style: GoogleFonts.montserrat(
                                                    color:
                                                        const Color(0xff9C9C9C),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    textStyle: subscriptStyle),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              color: bintang,
                                              size: 17,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              Icons.star_rounded,
                                              color: bintang,
                                              size: 17,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              Icons.star_rounded,
                                              color: bintang,
                                              size: 17,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              Icons.star_rounded,
                                              color: bintang,
                                              size: 17,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              Icons.star_rounded,
                                              color: bintang,
                                              size: 17,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '5.0',
                                              style: GoogleFonts.montserrat(
                                                  color: putih,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  textStyle: subscriptStyle),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    color: btnAbu,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  size: 50,
                                  color: iconpink,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    // BUTTON GROUP

                    Container(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      margin: const EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 10)),
                          Column(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(17.0),
                                  decoration: BoxDecoration(
                                      color: btnAbu,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: SvgPicture.asset(
                                    'assets/svg/thumb-up-line.svg',
                                    color: iconS,
                                    height: 30.5,
                                  )),
                              const SizedBox(
                                height: 4,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Quality',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffBEBEBE),
                                    ),
                                  ),
                                  Text(
                                    'Assurance',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffBEBEBE),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(17.0),
                                  decoration: BoxDecoration(
                                      color: btnAbu,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: SvgPicture.asset(
                                    'assets/svg/delivery (1).svg',
                                    height: 32,
                                    color: iconS,
                                  )),
                              const SizedBox(
                                height: 4,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Fast',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffBEBEBE),
                                    ),
                                  ),
                                  Text(
                                    'Delivery',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffBEBEBE),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(21.0),
                                  decoration: BoxDecoration(
                                      color: btnAbu,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: SvgPicture.asset(
                                    'assets/svg/forkknife.svg',
                                    color: iconS,
                                    height: 26,
                                  )),
                              const SizedBox(
                                height: 4,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Best-in',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffBEBEBE),
                                    ),
                                  ),
                                  Text(
                                    'Taste',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffBEBEBE),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(right: 10)),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // BUTTON

                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            width: 140,
                            height: 50,
                            decoration: BoxDecoration(
                                color: btnAbu,
                                borderRadius: BorderRadius.circular(18)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                GestureDetector(
                                  onTap: decrementNumber,
                                  child: SvgPicture.asset(
                                    'assets/svg/remove-minus-svgrepo-com.svg',
                                    color: const Color(0xffF7F7F9),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '$number',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffF7F7F9),
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: incrementNumber,
                                  child: SvgPicture.asset(
                                    'assets/svg/plusbold.svg',
                                    color: const Color(0xffF7F7F9),
                                  ),
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffF1AB68),
                            ),
                            width: 150,
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 17,
                                ),
                                Text(
                                  'Go to Cart',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff080503),
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // NAVIGATOR ATAS DAN CART

          Positioned(
            child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 30,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_rounded),
                  // size: 40,
                  iconSize: 40,
                  padding: EdgeInsets.all(0),
                  color: Color(0xffA7A7A7),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainApp()),
                    );
                  },
                ),
                const Spacer(),
                Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: const Color(0xff494949),
                        borderRadius: BorderRadius.circular(50)),
                    child: Stack(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 30,
                          color: putih,
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
                    ))
                
              ],
            ),
          )),
          Center(
              child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 130),
                child: (Column(
                  children: [
                    Text(
                      'FRUIT',
                      style: GoogleFonts.montserrat(
                        fontSize: 17,
                        letterSpacing: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffCAA681),
                      ),
                    ),
                    Text(
                      'Pinneaple',
                      style: GoogleFonts.montserrat(
                        fontSize: 38,
                        fontWeight: FontWeight.normal,
                        color: putih,
                      ),
                    ),
                  ],
                )),
              ),
            ],
          )),
          Positioned(
              child: Container(
            alignment: AlignmentDirectional.center,
            margin: const EdgeInsets.only(
              top: 190,
            ),
            height: 300,
            child: const Image(image: AssetImage('assets/img/nanas2.png')),
          )),
        ],
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

  int selectedIndex = 0;
   List<IconData> data = [
     Icons.home_filled,
     Icons.search,
     Icons.favorite_rounded,
     Icons.event_note_outlined,
   ];

    var height, width;

  int number = 7;

  void incrementNumber() {
    setState(() {
      number++;
    });
  }

  void decrementNumber() {
    setState(() {
      number--;
    });
  }
}
