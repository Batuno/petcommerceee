import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petshop_ecommerce/app_style.dart';
import 'package:petshop_ecommerce/size_config.dart';

import 'detail_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> dogs = [
    "dog_marly.png",
    "dog_cocoa.png",
    "dog_walt.png",
  ];
  List<String> dogN = [
    "Marly",
    "Cocoa",
    "Walt",
  ];
  List<String> dogO = [
    "John",
    "Rose",
    "Batuno",
  ];
  List<String> cats = [
    "cat_alyx.png",
    "cat_brook.png",
    "cat_marly.png",
  ];
  List<String> catN = [
    "Alyx",
    "Brook",
    "Marly",
  ];
  List<String> catO = [
    "Jhon",
    "Rose",
    "Rose",
  ];

  int _selectedIndex = 0;

  void _onBoxTap(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DetailPage()));
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kWhite,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset("assets/home_selected.svg")
                : SvgPicture.asset("assets/home_unselected.svg"),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset("assets/cart_selected.svg")
                : SvgPicture.asset("assets/cart_unselected.svg"),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset("assets/profile_selected.svg")
                : SvgPicture.asset("assets/profile_unselected.svg"),
            label: "profile",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/nav_icon.svg',
                    width: 18,
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: kRed,
                    backgroundImage: NetworkImage(
                        'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 19),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/welcome_message.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: SizeConfig.blockSizeHorizontal! * 38,
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Hello",
                              style: kSourceSansProLight.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                                color: const Color(0xff3E3D50),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Batuno",
                              style: kSourceSansProMedium.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                                color: const Color(0xff3E3D50),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "👋",
                              style: kSourceSansProMedium.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Ready for amazing and lucky\nexperience 🐱",
                          style: kSourceSansProregular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: const Color(0xff3E3D50),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              height: 30,
              child: Row(
                children: [
                  Text(
                    "Dogs",
                    style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "🐕",
                    style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 169,
              child: ListView.builder(
                itemCount: dogs.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    height: 169,
                    width: 150,
                    margin: EdgeInsets.only(
                      left: index == 0
                          ? 30
                          : 15, // ehnii index margin 30 harin dragihas 15
                      right: index == dogs.length - 1
                          ? 30
                          : 0, // suulin index 30 margintai hrve taarku bol 0
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                          color: kBoxShadowColor.withOpacity(0.18),
                          offset: const Offset(0, 3),
                          blurRadius: 14,
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        _onBoxTap(context);
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 80,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Image.asset(
                                "assets/images/${dogs[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: SizeConfig.blockSizeHorizontal! * 2.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.5),
                                  color: kLightOrange,
                                ),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                child: Center(
                                  child: Text(
                                    dogO[index],
                                    style: kSourceSansProBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 2.5,
                                      color: kOrange,
                                    ),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.favorite_border_outlined,
                                color: kRed,
                                size: 16,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                dogN[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: kSourceSansProBold.copyWith(
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Marly",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: kSourceSansProregular.copyWith(
                                  fontSize: SizeConfig.blockSizeHorizontal! * 2,
                                  color: kLightGrey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              height: 30,
              child: Row(
                children: [
                  Text(
                    "Cats",
                    style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "🐈",
                    style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 169,
              child: ListView.builder(
                itemCount: cats.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    height: 169,
                    width: 150,
                    margin: EdgeInsets.only(
                      left: index == 0
                          ? 30
                          : 15, // ehnii index margin 30 harin dragihas 15
                      right: index == cats.length - 1
                          ? 30
                          : 0, // suulin index 30 margintai hrve taarku bol 0
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                          color: kBoxShadowColor.withOpacity(0.18),
                          offset: const Offset(0, 3),
                          blurRadius: 14,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: Image.asset(
                              "assets/images/${cats[index]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: SizeConfig.blockSizeHorizontal! * 2.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.5),
                                color: kLightOrange,
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Center(
                                child: Text(
                                  catO[index],
                                  style: kSourceSansProBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                    color: kOrange,
                                  ),
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_border_outlined,
                              color: kRed,
                              size: 16,
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              catN[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                color: kGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Marly",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSansProregular.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 2,
                                color: kLightGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
