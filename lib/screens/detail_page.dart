import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petshop_ecommerce/app_style.dart';
import 'package:petshop_ecommerce/size_config.dart';

import 'home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  get index => null;

  void _onBackTap(BuildContext context) {
    Navigator.pop(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          "Add to card",
          style: kSourceSansProSemiBold.copyWith(
              fontSize: 14, color: Colors.white),
        ),
        backgroundColor: kGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        icon: SvgPicture.asset(
          "assets/add_to_cart_icon.svg",
        ),
      ),
      backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height / 2.5,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/dog_marly_cover.png",
                      height: size.height,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(42),
                            topRight: Radius.circular(42),
                          ),
                          color: kWhite,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _onBackTap(context);
                              },
                              icon: const Icon(Icons.arrow_back),
                              tooltip: "arrow_back",
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                transform: Matrix4.translationValues(0, -12, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Marly",
                          style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 6,
                              color: kGrey),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            SvgPicture.asset("assets/pin_point_icon.svg"),
                            const SizedBox(width: 3),
                            Text(
                              "Ulaanbaatar, Mongolia",
                              style: kSourceSansProregular.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                color: kLightGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset("assets/favorite_icon.svg"),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.orange[50],
                      ),
                      width: SizeConfig.blockSizeHorizontal! * 25,
                      child: Column(
                        children: [
                          Text(
                            "6 months",
                            style: kSourceSansProBold.copyWith(
                                fontSize: 20, color: Colors.orange[600]),
                          ),
                          Text(
                            "Age",
                            style: kSourceSansProregular.copyWith(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.orange[50],
                      ),
                      width: SizeConfig.blockSizeHorizontal! * 25,
                      child: Column(
                        children: [
                          Text(
                            "6 months",
                            style: kSourceSansProBold.copyWith(
                                fontSize: 20, color: Colors.orange[600]),
                          ),
                          Text(
                            "Age",
                            style: kSourceSansProregular.copyWith(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.orange[50],
                      ),
                      width: SizeConfig.blockSizeHorizontal! * 25,
                      child: Column(
                        children: [
                          Text(
                            "6 months",
                            style: kSourceSansProBold.copyWith(
                                fontSize: 20, color: Colors.orange[600]),
                          ),
                          Text(
                            "Age",
                            style: kSourceSansProregular.copyWith(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About me",
                      style: kSourceSansProregular.copyWith(fontSize: 14),
                    ),
                    const SizedBox(height: 9),
                    Text(
                      "Remember this sweet face? Several years ago Charlie came into our care when their person died. These two easy-going Lhasa Apso mixes quickly to settle into foster care. Living with kids, cats, and other dogs, they were the perfect guests, and once their vetting and evaluation was done this bonded pair found their home with a kind couple. Remember this sweet face? Several years ago Charlie came into our care when their person died. These two easy-going Lhasa Apso mixes quickly to settle into foster care. Living with kids, cats, and other dogs, they were the perfect guests, and once their vetting and evaluation was done this bonded pair found their home with a kind couple.",
                      style: kSourceSansProSemiBold.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      "Photo album",
                      style: kSourceSansProregular.copyWith(
                          color: kLightGrey, fontSize: 14),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 55,
                          width: SizeConfig.blockSizeHorizontal! * 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/dog_marly01.png"),
                            ),
                          ),
                        ),
                        Container(
                          height: 55,
                          width: SizeConfig.blockSizeHorizontal! * 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/dog_marly02.png"),
                            ),
                          ),
                        ),
                        Container(
                          height: 55,
                          width: SizeConfig.blockSizeHorizontal! * 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/dog_marly03.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
