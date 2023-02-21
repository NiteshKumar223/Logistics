import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/CustomUI/custommaterialbtn.dart';
import 'package:logistics/Pages/register.dart';
import 'package:logistics/utils/colors.dart';
import 'package:provider/provider.dart';

import '../Theme/theme_provider.dart';
import 'dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset('assets/images/birdlogo.png')),
            ),
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.colorPrimary),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children:const [
                  Text(
                    'Welcome',
                    style:
                        TextStyle(fontSize: 20, color: AppColor.colorPrimary),
                  ),
                  Text(
                    ' Back',
                    style:
                        TextStyle(fontSize: 20,),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 30.0, bottom: 15, left: 30.0, right: 30.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'User Name'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'password'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password ?',
                      style: TextStyle(color: AppColor.colorPrimary),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 45.0,
              width: 320.0,
              child: CustomElevatedBtn(
                color: AppColor.colorPrimary,
                btnName: 'Login',
                style: const TextStyle(fontSize: 18),
                elevt: 0.0,
                onTapp: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't Have An Account? "),
                InkWell(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: AppColor.colorPrimary),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                  },
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'OR',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 20.0,right: 30.0),
              child: CustomMaterialBtn(
                btnName: "Login with Google",
                style: TextStyle(
                  fontSize: 15.0,
                  color: (themeProvider.isDarkMode)? AppColor.colorWhite :AppColor.colorBlack,
                ),
                img: 'assets/images/googleimage.png',
                onTapp: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 20.0,right: 30.0),
              child: CustomMaterialBtn(
                btnName: "Login with Facebook",
                style: TextStyle(
                  fontSize: 15.0,
                  color: (themeProvider.isDarkMode)? AppColor.colorWhite :AppColor.colorBlack,
                ),
                img: 'assets/images/fbimage.png',
                onTapp: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
