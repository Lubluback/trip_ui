import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_ui/utils/constdata.dart';
import 'package:trip_ui/widgets/container.dart';

class Homeee extends StatefulWidget {
  const Homeee({super.key});

  @override
  State<Homeee> createState() => _HomeeeState();
}

class _HomeeeState extends State<Homeee> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "lib/assets/image.png",
                        height: 40,
                        width: 38,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Discover",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: "TitilliumWeb",
                      fontWeight: FontWeight.w900),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                      dividerHeight: 0,
                      // physics: BouncingScrollPhysics(),
                      labelPadding:
                          const EdgeInsets.only(left: 10, right: 10, top: 30),
                      controller: _tabController,
                      isScrollable: false,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: const [
                        Text(
                          "Places",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "TitilliumWeb",
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Inspiration",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "TitilliumWeb",
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Emotions",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "TitilliumWeb",
                              fontWeight: FontWeight.w600),
                        )
                      ]),
                ),
                SizedBox(
                  height: 340,
                  child: TabBarView(
                      // physics: BouncingScrollPhysics(),
                      controller: _tabController,
                      children: [
                        ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            CarouselSlider(
                              items: [
                                //1st Image of Slider
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/mountains/image1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 30,
                                      top: 300,
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(
                                            "Ladakh",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "TitilliumWeb",
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                                //2nd Image of Slider
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/mountains/image2.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 30,
                                      top: 300,
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(
                                            "Gulmarg",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "TitilliumWeb",
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                                //3rd Image of Slider
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/mountains/image3.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 30,
                                      top: 300,
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(
                                            "Mussoorie",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "TitilliumWeb",
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                                //4th Image of Slider
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/mountains/image4.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 30,
                                      top: 300,
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(
                                            "Shimla",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "TitilliumWeb",
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],

                              //Slider Container properties
                              options: CarouselOptions(
                                height: 340.0,
                                // enlargeCenterPage: true,
                                autoPlay: true,
                                // aspectRatio: 20 / 9,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),

                                viewportFraction: 0.8,
                              ),
                            ),
                          ],
                        ),
                        const Center(child: Text("Inspiration")),
                        const Center(child: Text("Emotions"))
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Explore More",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: "TitilliumWeb",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "TitilliumWeb",
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      physics: PageScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Containers2(
                            image: Constdata.image[index],
                            text: Constdata.text[index]);
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
