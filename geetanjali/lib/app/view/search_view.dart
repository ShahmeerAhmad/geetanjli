import 'package:flutter/material.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:get/get.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            TextFormField(
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
                    borderSide: BorderSide(color: AppColor.tabbrown, width: 0),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Recently searched:',
                  style: TextStyle(
                      color: Color(0xffCDB40E),
                      fontFamily: "Gabriela",
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffEBE1D4),
                ),
                width: double.infinity,
                height: 233,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.all(14),
                        child: Text(
                          "Track name",
                          style: TextStyle(
                              color: AppColor.tabbrown,
                              fontFamily: "Gabriela",
                              fontSize: 16),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
