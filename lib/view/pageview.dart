import 'package:flutter/material.dart';
import 'package:trip_ui/view/navigation.dart';
import 'package:trip_ui/widgets/responsivebutton.dart';
import 'package:trip_ui/widgets/ritchtext.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  final PageController _pageController = PageController();

  int _activePage = 0;

  List quotes = [
    "\"\"The mountains are calling,\n and I must go.\"\"",
    "\"\"Each fresh peak ascended\nteaches something.\"\"",
    "\"\"The best view comes\nafter the hardest climb.\"\""
  ];
  final List<String> _pages = [
    "lib/assets/1.jpeg",
    "lib/assets/2.jpg",
    "lib/assets/3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          // physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          controller: _pageController,
          itemCount: _pages.length,
          onPageChanged: (int page) {
            setState(() {
              _activePage = page;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(_pages[index])),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts(
                            text1: quotes[index],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Navigation()));
                            },
                            child: ResponsiveButton(
                              width: 70,
                              icons: Icons.arrow_circle_right_outlined,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexdots) {
                          return Container(
                            height: index == indexdots ? 20 : 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: index == indexdots
                                    ? Color(0xff5d69b3)
                                    : Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8)),
                          );
                        }),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
