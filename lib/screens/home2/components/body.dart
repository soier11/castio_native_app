import 'package:castio/screens/home2/details_screen.dart';
import 'package:castio/widgets/book_rating.dart';
import 'package:castio/widgets/reading_card_list.dart';
import 'package:castio/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:castio/constants.dart';

import 'package:castio/screens/home/components/header_with_seachbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          // SizedBox(height: size.height * .1),

          // section1 title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.display1.copyWith(
                    color: kBlackColor, fontWeight: FontWeight.normal),
                children: [
                  TextSpan(
                      text: "오늘은\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(text: "뭘 볼까요?"),
                ],
              ),
            ),
          ),
          // section1 cards
          SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                ReadingListCard(
                  image: "assets/images/class-1.png",
                  title: "작은 마케팅 클리닉",
                  auth: "스킬업라이브",
                  rating: 4.9,
                  pressDetails: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                ReadingListCard(
                  image: "assets/images/class-2.png",
                  title: "퍼포먼스 올리는 검색마케팅",
                  auth: "픗픗",
                  rating: 4.8,
                ),
                SizedBox(width: 30),
              ],
            ),
          ),

          // section2 시작
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.display1,
                    children: [
                      TextSpan(text: "Best of the "),
                      TextSpan(
                        text: "day",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                bestOfTheDayCard(size, context),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.display1,
                    children: [
                      TextSpan(text: "Continue "),
                      TextSpan(
                        text: "reading...",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(38.5),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 33,
                        color: Color(0xFFD3D3D3).withOpacity(.84),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(38.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 30, right: 20),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Crushing & Influence",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Gary Venchuk",
                                        style: TextStyle(
                                          color: kLightBlackColor,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Chapter 7 of 10",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: kLightBlackColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/class-1.png",
                                  width: 55,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 7,
                          width: size.width * .65,
                          decoration: BoxDecoration(
                            color: kProgressIndicator,
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          // section 끝 분리 필요

          // SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "New York Time Best For 11th March 2020",
                      style: TextStyle(
                        fontSize: 9,
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    "스마트스토어 따라하기!\nSEO부터 상품등록, 키워드/결과 분석까지",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "픗픗",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: BookRating(score: 4.9),
                        ),
                        Expanded(
                          child: Text(
                            "When the earth was flat and everyone wanted to win the game of the best and people….",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 50,
            child: Image.asset(
              "assets/images/class-3.jpg",
              width: size.width * .34,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
