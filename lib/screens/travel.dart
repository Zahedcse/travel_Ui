
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with TickerProviderStateMixin {
  final imageURL =
      "https://cdn.pixabay.com/photo/2021/09/02/16/48/cat-6593947__480.jpg";

  //late TabController _tabController;

  @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(vsync: this, length: 4);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple500,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: VStack(
          [
            VxBox().white.size(20, 2).make(),
            5.heightBox,
            VxBox().white.size(28, 2).make(),
            5.heightBox,
            VxBox().white.size(15, 2).make(),
          ],
        ).pOnly(left: 16, top: 16),
      ),
      body: VStack(
        [
          VxBox(
            child: [
              VxBox()
                  .square(100)
                  .roundedFull
                  .neumorphic(
                    color: Vx.purple500,
                    elevation: 30.0,
                  )
                  .bgImage(
                    DecorationImage(
                      image: NetworkImage(imageURL),
                    ),
                  )
                  .make(),
              "Hi , "
                  .richText
                  .withTextSpanChildren(["Zahed".textSpan.bold.make()])
                  .white
                  .xl2
                  .make()
                  .p8(),
              "solo traveller".text.white.make(),
              VxTextField(
                borderType: VxTextFieldBorderType.none,
                borderRadius: 18,
                hint: 'search',
                contentPaddingTop: 13,
                fillColor: Vx.gray50.withOpacity(0.3),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Vx.white,
                ),
              )
                  .customTheme(
                    themeData: ThemeData(brightness: Brightness.dark),
                  )
                  .cornerRadius(10)
                  .p16()
            ].column(),
          ).makeCentered().h40(context),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
            child: VxBox(
              child: VStack(
                [
                  TabBar(
                    controller: TabController(length: 4, vsync: this),
                    indicatorColor: Colors.purple,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Vx.purple500,
                    unselectedLabelColor: Vx.gray400,
                    labelPadding: Vx.m16,
                    tabs: [
                      Icon(Icons.map, size: 30),
                      Icon(Icons.pin_drop, size: 30),
                      Icon(Icons.restaurant, size: 30),
                      Icon(Icons.person, size: 30),
                    ],
                  ),
                  TabBarView(
                          controller: TabController(length: 4, vsync: this),
                          children: ["1", "2", "3", "4"]
                              .map(
                                (e) => ListView(
                                  children: [
                                    "Discover Places In London"
                                        .text
                                        .gray600
                                        .xl2
                                        .bold
                                        .make(),
                                    20.heightBox,
                                    TravelCard(
                                      title: "London Bridge",
                                      subtitle: "south work",
                                      imageURL: imageURL,
                                    ),
                                    20.heightBox,
                                    TravelCard(
                                      title: "London Bridge",
                                      subtitle: "south work",
                                      imageURL: imageURL,
                                    ),
                                  ],
                                ).p16(),
                              )
                              .toList())
                      .expand(),
                ],
              ),
            ).white.make(),
          ).expand()
        ],
      ),
    );
  }
}

class TravelCard extends StatelessWidget {
  //const TravelCard({Key? key}) : super(key: key);
  final String title, subtitle, imageURL;

  const TravelCard(
      {Key? key,
      required this.imageURL,
      required this.title,
      required this.subtitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return HStack([
      Image.network(
        imageURL,
        fit: BoxFit.cover,
      ).wh(context.percentHeight * 20, 100).cornerRadius(10),
      20.widthBox,
      VStack(
        [
          title.text.semiBold.make(),
          3.heightBox,
          subtitle.text.make().shimmer(),
          5.heightBox,
          [
            VxRating(
              size: 13,
              onRatingUpdate: (value) {},
            ),
            10.widthBox,
            "(100)".text.make()
          ].row()
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).expand()
    ]).cornerRadius(10).backgroundColor(Vx.gray200);
  }
}
