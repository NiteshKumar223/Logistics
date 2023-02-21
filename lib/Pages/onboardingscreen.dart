import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/Models/onboardmodel.dart';
import 'package:logistics/Pages/Login.dart';
import 'package:logistics/utils/colors.dart';
import 'package:provider/provider.dart';

import '../Theme/theme_provider.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Image.asset(
                                contents[index].image.toString(),
                                height: 300,
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Text(
                              contents[index].title.toString(),
                              style: const TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: AppColor.colorPrimary
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Text(
                              contents[index].description.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                color: (themeProvider.isDarkMode)? AppColor.colorWhite :AppColor.colorBlack,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              )),
              const SizedBox( height: 40.0),
              SizedBox(
                height: 45,
                width: 300,
                child: CustomElevatedBtn(
                  elevt: 0.0,
                  btnName: currentIndex == contents.length - 1
                      ? "Get Started   >"
                      : "Next   >",
                      style: TextStyle(fontSize: 18,color: AppColor.colorWhite),
                  color: AppColor.colorPrimary,
                  onTapp: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    }
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                ),
              ),
              (currentIndex == 2) ? const SizedBox(height: 125.0) 
                : Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 60),
                child: 
                Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.colorPrimary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: (themeProvider.isDarkMode)? AppColor.colorBlack :AppColor.colorWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Text("Skip",style: TextStyle(
                      color: (themeProvider.isDarkMode)? AppColor.colorWhite :AppColor.colorPrimary,fontSize: 18),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          color: currentIndex == index ? AppColor.colorPrimary:AppColor.colorDarkGray,
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
