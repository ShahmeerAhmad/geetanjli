import 'package:flutter/material.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:get/get.dart';

class Search2View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.tabbrown,
            size: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Searh Keyword",
                    hintStyle: const TextStyle(
                        color: AppColor.splashgeetanjali,
                        fontFamily: "Gabriela",
                        fontSize: 22),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.tabbrown),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.tabbrown),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.tabbrown, width: 0),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.close,
                        size: 18,
                        color: AppColor.tabbrown,
                      ),
                      onPressed: () {},
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          minVerticalPadding: 2,
                          leading: Container(
                            width: 38,
                            height: 37,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("asset/image/back.png"),
                                    fit: BoxFit.cover)),
                          ),
                          trailing: const Text(
                            "2:19",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Gabriela",
                                fontSize: 14),
                          ),
                          title: const Text(
                            "Name of track",
                            style: TextStyle(
                                color: AppColor.tabbrown,
                                fontFamily: "Gabriela",
                                fontSize: 14),
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                          endIndent: 15,
                          indent: 15,
                          height: 1,
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
            ),
            Container(
              width: 108,
              height: 33,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/image/splash.png"))),
            ),
          ],
        ),
      ),
    );
  }
}
