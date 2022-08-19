import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyebeauty/Components/ourServises.dart';
import 'package:oyebeauty/Components/servisesTitle.dart';
import 'package:oyebeauty/Components/textFormField_widget.dart';
import 'package:oyebeauty/Components/top_reated_courses.dart';
import 'package:oyebeauty/Data/homePage_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              upperSection(context),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/Group 8131.jpg",
                    scale: 0.95,
                  ),
                  Positioned(
                    bottom: 8,
                    left: 130,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: CupertinoSearchTextField(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        itemSize: 10,
                        prefixIcon: const Icon(
                          CupertinoIcons.search,
                          size: 15,
                        ),
                        padding:
                            const EdgeInsets.only(bottom: 0, left: 5, top: 3),
                        placeholder: "Search your courses",
                        placeholderStyle: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const OurServises(),
              const ServisesTitle(
                title: 'Top reated salon courses at Home',
                description: 'best courses and best experience mentor',
                isHomeSalon: false,
                isTopRated: true,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopReatedCourses(
                          count: 4,
                          img: salonCourses[0].image,
                          exp: salonCourses[0].experience,
                          title: salonCourses[0].title,
                        ),
                        TopReatedCourses(
                          count: 4,
                          img: salonCourses[1].image,
                          exp: salonCourses[1].experience,
                          title: salonCourses[1].title,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopReatedCourses(
                          count: 4,
                          img: salonCourses[2].image,
                          exp: salonCourses[2].experience,
                          title: salonCourses[2].title,
                        ),
                        TopReatedCourses(
                          count: 4,
                          img: salonCourses[3].image,
                          exp: salonCourses[3].experience,
                          title: salonCourses[3].title,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const ServisesTitle(
                title: 'HOME SALON PAKAGE',
                description: 'best beautition at your home',
                isHomeSalon: true,
                isTopRated: false,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 20,
                  right: 20,
                  bottom: 50,
                ),
                child: Card(
                    child: Column(
                  children: const [
                    Text(
                      "Contact Us",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Enter Your Name',
                      isEmail: false,
                      isNumber: false,
                      isZipCode: false,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Enter Your Email Id',
                      isEmail: true,
                      isNumber: false,
                      isZipCode: false,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Enter Your Contact No',
                      isEmail: false,
                      isNumber: true,
                      isZipCode: false,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Enter Zip Code',
                      isEmail: false,
                      isNumber: false,
                      isZipCode: true,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container upperSection(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, 1),
          color: Color.fromARGB(255, 201, 200, 200),
          blurRadius: 5,
        )
      ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // const SizedBox(height: 10,),
                Row(
                  children: const [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sector-44, Real Estate, Sector- 62, Gurugram",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(220, 65, 88, 89)),
                    ),
                  ],
                ),
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: CupertinoSearchTextField(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    itemSize: 35,
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      size: 25,
                    ),
                    suffixIcon: const Icon(
                      CupertinoIcons.xmark_circle_fill,
                      size: 25,
                    ),
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 5, top: 10),
                    placeholder: "Search for a serive",
                  ),
                ),
                const Icon(
                  Icons.whatsapp,
                  size: 35,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
