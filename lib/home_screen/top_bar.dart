import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<StatefulWidget> createState() => _TopBar();
}

class _TopBar extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      // width: 360,
      height: 83,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // svg logo
                  // SvgPicture.asset(
                  //   'assets/logo/logo.svg',
                  //   width: 69,
                  //   height: 38,
                  // ),

                  // logo of Dalmia
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    width: 69,
                    height: 38,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logo_image/logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Name of the account's person
                  // Container(
                  //   margin: const EdgeInsets.only(left: 16),
                  //   child: const Text(
                  //     'Welcome Aswin !',
                  //     style: TextStyle(
                  //       color: Color(0xFF181818),
                  //       fontSize: 12,
                  //       fontFamily: 'Inter',
                  //       fontWeight: FontWeight.w500,
                  //       height: 0,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              const Spacer(),

              // logout icon

              Column(
                children: [
                  Container(
                    width: 41,
                    height: 47,
                    margin: const EdgeInsets.only(right: 16, top: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF0054A6),
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.logout),
                                  color: Colors.white,
                                  iconSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Opacity(
                          opacity: 0.70,
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: Color(0xFF181818),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Heading
          const Center(
            child: Text(
              'Update Budget',
              style: TextStyle(
                color: Color(0xFF181818),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
