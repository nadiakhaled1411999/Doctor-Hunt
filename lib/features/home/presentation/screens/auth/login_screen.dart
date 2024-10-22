// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/home/presentation/screens/onboarding_screen/color.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Welcome Text
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: 'font',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'You can search course, apply course and find\nscholarship for abroad studies',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: descriptionColor, // استخدام اللون الرمادي للتوضيح
                        fontSize: 14,
                        fontFamily: 'font',
                      ),
                    ),
                    SizedBox(height: 50),

                    // Social login buttons
                    // Social login buttons
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0), // تعديل التباعد العلوي
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google Button
                          Container(
                            width: 140.w,
                            height: 45.h,// تحديد عرض الزر
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Image.asset('assets/icons/google.png', width: 24), // أيقونة جوجل
                              label: Text("Google"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white, // خلفية بيضاء
                                foregroundColor: descriptionColor, // لون النص
                                elevation: 2, // بدون ظل
                                shadowColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12), // تحديد الزوايا
                                  side: BorderSide(color: Colors.white), // تحديد اللون الخارجي ليكون رمادي فاتح

                                ),
                                padding: EdgeInsets.symmetric(vertical: 12), // تعديل الحواف الداخلية
                              ),
                            ),
                          ),
                          SizedBox(width: 10), // مسافة بين الأزرار
                          // Facebook Button
                          Container(
                            width: 140.w,
                            height: 45.h,// تحديد عرض الزر
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Image.asset('assets/icons/facebook.png', width: 24), // أيقونة فيسبوك
                              label: Text("Facebook"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white, // خلفية بيضاء
                                foregroundColor: descriptionColor, // لون النص
                                elevation:2, // بدون ظل
                                shadowColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12), // تحديد الزوايا
                                  side: BorderSide(color: Colors.white), // تحديد اللون الخارجي ليكون رمادي فاتح

                                ),
                                padding: EdgeInsets.symmetric(vertical: 12), // تعديل الحواف الداخلية
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(height: 30),

                    // Email TextField
                    SizedBox(
                      width: 400, // عرض أصغر
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), // زوايا دائرية
                            borderSide: BorderSide(
                              color: Colors.grey, // لون الحدود
                              width: 1.0, // سمك الحدود
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), // زوايا دائرية عند الوضع العادي
                            borderSide: BorderSide(
                              color: Colors.grey, // لون الحدود
                              width: 1.0, // سمك الحدود
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), // زوايا دائرية عند التركيز
                            borderSide: BorderSide(
                              color: Colors.grey, // لون الحدود
                              width: 1.0, // سمك الحدود
                            ),
                          ),
                          suffixIcon: Icon(Icons.check_circle_outline),
                          filled: true, // لتفعيل تعبئة الخلفية
                          fillColor: Colors.white, // لون الخلفية البيضاء
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 400, // عرض أصغر
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), // زوايا دائرية
                            borderSide: BorderSide(
                              color: Colors.grey, // لون الحدود
                              width: 1.0, // سمك الحدود
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), // زوايا دائرية عند الوضع العادي
                            borderSide: BorderSide(
                              color: Colors.grey, // لون الحدود
                              width: 1.0, // سمك الحدود
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), // زوايا دائرية عند التركيز
                            borderSide: BorderSide(
                              color: Colors.grey, // لون الحدود
                              width: 1.0, // سمك الحدود
                            ),
                          ),
                          suffixIcon: Icon(Icons.visibility_off),
                          filled: true, // لتفعيل تعبئة الخلفية
                          fillColor: Colors.white, // لون الخلفية البيضاء
                        ),
                      ),
                    ),

                    // Password TextField

                    SizedBox(height: 20),

                    // Login Button (modified)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: 295.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: primaryColor,
                      ),

                        child: Center(
                          child: Text(

                                 "login",

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontFamily: 'font',
                            ),
                          ),
                        ),
                      ),



                    // Forgot password link
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password',
                        style: TextStyle(color:primaryColor),
                      ),
                    ),

                    SizedBox(height: 45.h,) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",style:TextStyle(color: primaryColor) ,),
                        TextButton(
                          onPressed: () {},
                          child: Text('Join us',style:TextStyle(color: primaryColor),),
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
