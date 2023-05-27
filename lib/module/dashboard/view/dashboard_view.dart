import 'package:flutter/material.dart';
import 'package:challenge/core.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../controller/dashboard_controller.dart';
import '../widget/dotted_border.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: Color(0xff0f9565),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    left: 20,
                    top: 20,
                    child: Text(
                      "Coffee Beans",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 138,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Your card balance",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  "\$240.00",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            DottedBorder(
                              color: const Color(0xffd1f5e1),
                              strokeWidth: 2.0,
                              gap: 3.0,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 30,
                              ),
                            ),
                            Builder(builder: (context) {
                              List<Map<String, dynamic>> icons = [
                                {
                                  'icon': Icons.arrow_upward_outlined,
                                  'label': 'Topup',
                                },
                                {
                                  'icon': Icons.payment_outlined,
                                  'label': 'Pay',
                                },
                                {
                                  'icon': Icons.local_offer_outlined,
                                  'label': 'Promo',
                                },
                                {
                                  'icon': Icons.history_outlined,
                                  'label': 'History',
                                },
                              ];

                              return Row(
                                children: List.generate(icons.length, (index) {
                                  var item = icons[index];
                                  return Expanded(
                                    child: Column(
                                      children: [
                                        Icon(
                                          item["icon"],
                                          size: 24.0,
                                        ),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          item["label"],
                                          style: const TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -70, 0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            "My Reward",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12.0,
                            //#TEMPLATE mainColor
                            color: Color(0xff0f9565),
                            //#END
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Free 1 Coffee",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "8/10",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff0f9565),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "Buy 10 Coffees and get 1 Coffee for free",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "Favorite Place",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xff0f9565),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SingleChildScrollView(
                      controller: ScrollController(),
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      child: Row(
                        children: List.generate(10, (index) {
                          return Container(
                            width: 140,
                            height: 180,
                            margin: const EdgeInsets.only(right: 10.0),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              color: Colors.blue[400],
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.black,
                                        Colors.black.withOpacity(0.2),
                                        Colors.black.withOpacity(0.1),
                                        Colors.black.withOpacity(0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(12.0),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cofee Bean",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Bali, Indoneisa",
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "Popular Place",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xff0f9565),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        var item = {};
                        return Container(
                          padding: const EdgeInsets.all(12.0),
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(
                            bottom: 12.0,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 120.0,
                                width: 80.0,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://i.ibb.co/yhN1Hqh/photo-1660223087934-68b3bca78591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-M3wy-ODA4-ODh8-MHwxf-H.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Coffee Bean - Resort Kuta",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 4.5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          itemSize: 12.0,
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        const SizedBox(
                                          width: 4.0,
                                        ),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    const Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
