import 'package:chat_app/components/my_text_form_feild.dart';
import 'package:chat_app/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login",style: TextStyle(color: AppColor.whiteColor),),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: AppColor.blackColor,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MyTextFormField(
              controller: emailController,
              hintText: 'Enter Email',),

            MyTextFormField(
              controller: userNameController,
              hintText: 'Enter User Name',),

            MyTextFormField(
              controller: passwordController,
              hintText: 'Enter Password',),

            MyTextFormField(
              controller: confirmedPasswordController,
              hintText: 'Enter Confirmed Password',),

            const SizedBox(height: 20,),

            Column(
              children: [

                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.dg,
                        horizontal: 30.dg
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("Login", style: TextStyle(color: AppColor.whiteColor),),
                  ),
                ),

                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.dg,
                        horizontal: 30.dg
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("Register", style: TextStyle(color: AppColor.whiteColor),),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
