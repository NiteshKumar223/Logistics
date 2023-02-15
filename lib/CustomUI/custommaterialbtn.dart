import 'package:flutter/material.dart';
import 'package:logistics/utils/colors.dart';
class CustomMaterialBtn extends StatelessWidget {
  final String img;
  final String btnName;
  final VoidCallback onTapp;
  final Color? clr;
  const CustomMaterialBtn({
    super.key, 
    required this.btnName,
    required this.onTapp, 
    required this.img,
    this.clr,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.colorDivider),
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: MaterialButton(
        color: clr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(btnName),
          ],
        ),
        onPressed: (){
           onTapp();
        },
      ),
    );
  }
}