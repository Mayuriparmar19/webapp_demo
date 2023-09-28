import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp_demo/Utils/colors.dart';
import 'package:webapp_demo/Utils/constants.dart';

class Containers1 extends StatefulWidget {
  const Containers1({super.key});

  @override
  State<Containers1> createState() => _Containers1State();
}

class _Containers1State extends State<Containers1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer1(context),
      desktop: (BuildContext context) => desktopContainer1(context),
    );
  }

 Widget desktopContainer1(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: w!/16,vertical: w!/20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Track Your\nExpenses to\nSave Money',
                style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2),
              ),const SizedBox(height: 20,),
              Text('Helps you to organize your income and expenses',style: TextStyle(color: Colors.grey.shade400,fontSize:20,),)
              ,const SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                    height: 45,
                     child:ElevatedButton.icon(
                         style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(AppColors.buttonColor),

                         ),
                         onPressed: (){}, icon: const  Icon(Icons.arrow_drop_down_rounded), label:const Text('Try Free Demo',)) ,
                  ),
                 const SizedBox(width: 10,),
                  Text(
                    '— Web, iOs and Android',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
        ),
        Expanded(child: Container(
          height: 530,
           decoration: const BoxDecoration(
              image:  DecorationImage(image: AssetImage(illustration1),fit: BoxFit.contain)
           ),

        ))

      ],
    );
  }

  Widget mobileContainer1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Helps you to organize your income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(AppColors.buttonColor)),
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_down),
                label: const Text('Try a Demo')),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '— Web, iOs and Android',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          )
        ],
      ),
    );
  }



}
