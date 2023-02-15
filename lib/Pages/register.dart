import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/CustomUI/custommaterialbtn.dart';
import 'package:logistics/utils/colors.dart';

import 'Login.dart';
import 'dashboard.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColor.colorWhite,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/images/birdlogo.png')),
              ),
              const Text(
                'Register',
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: AppColor.colorPrimary),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    const Text(
                      'Welcome',
                      style: TextStyle(fontSize: 20, color: AppColor.colorPrimary),
                    ),
                    Text(
                      ' Back',
                      style: TextStyle(fontSize: 20, color: AppColor.colorBlack),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 15 ,left: 30.0, right:30.0),
                child: SizedBox(
                  height: 50,
                  child:  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'User Name'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 15 ,right:30.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Email'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only( bottom: 15 ,left: 30.0, right:30.0),
                child: SizedBox(
                  height: 50,
                  child:  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Password'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, right:30.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                        hintText: 'Confirm password'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: TextButton(
                      onPressed: (){
      
                      }, 
                      child: const Text('Forget Password ?',),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45.0,
                width: 320.0,
                child: CustomElevatedBtn(
                  color: AppColor.colorPrimary,
                  btnName: 'Sign Up',
                  elevt: 0.0,
                  onTapp:() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have An Account? "),
                  InkWell(
                    child:const Text(
                      'Sign In',
                      style: TextStyle(
                        color: AppColor.colorPrimary
                        ),
                      ),
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('OR',textAlign: TextAlign.center,),
              ),
      
              CustomMaterialBtn(
                btnName: "Login with Google",
                img: 'assets/images/googleimage.png',
                onTapp: () {
                  
                },
              ),
      
              CustomMaterialBtn(
                btnName: "Login with Facebook",
                img: 'assets/images/fbimage.png',
                onTapp: () {
                  
                },
              ),
      
      
      
            ],
          ),
        ),
      ),
    );
  }
}
