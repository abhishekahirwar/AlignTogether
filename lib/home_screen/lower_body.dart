import 'package:dalmia_homescreen/home_screen/top_bar.dart';
import 'package:dalmia_homescreen/widget/drop_down.dart';
import 'package:flutter/material.dart';

class LowerBody extends StatefulWidget {
  const LowerBody({super.key});

  @override
  State<LowerBody> createState() => _LowerBody();
}

class _LowerBody extends State<LowerBody> {
  String selectedOption = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Bar
          const TopBar(),

          const SizedBox(height: 27),
          // first row
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 15,
              ),
              const Text(
                'Main Menu',
                style: TextStyle(
                  color: Color(0xFF181818),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 16),
                width: 169,
                height: 40,
                decoration: ShapeDecoration(
                  color: const Color(0xFF008CD3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    print("Update Expenditure");
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 55,
                        height: 35,
                        padding: const EdgeInsets.all(10),
                        child: const Image(
                          image: AssetImage(
                              'assets/logo_image/updateExpenditure.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'Update Expenditure',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          // drop down for Select a Region
          DropDownMenu(text: 'Region'),
          // const SizedBox(height: 5),
          // drop down for Select a Location
          DropDownMenu(text: 'Location'),

          //
          const SizedBox(height: 30),

          const Text(
            'Ariyalur',
            style: TextStyle(
              color: Color(0xFF181818),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),

          const SizedBox(height: 4),

          // Table
        ],
      ),
    );
  }
}
