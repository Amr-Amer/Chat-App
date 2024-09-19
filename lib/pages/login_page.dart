import 'package:chat_app/components/my_text_form_feild.dart';
import 'package:chat_app/constant/app_color.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              controller: userNameController,
              hintText: 'User Name',),

            MyTextFormField(

              controller: passwordController,
              hintText: 'password',),

            const SizedBox(height: 20,),

            Column(
              children: [

                // TODO: Login Button
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterPage(),));
                  },
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

                // TODO: Register Button
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
