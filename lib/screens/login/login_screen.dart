import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_mate/globalaccess/applib/applib.dart';
import 'package:music_mate/screens/login/forget_screen.dart';
import 'package:music_mate/screens/registration/registration_screen.dart';

import '../../globalaccess/applib/sizer.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

Future<bool> onBackButtonPressed() async {
  return false;
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  final _form = GlobalKey<FormState>();
  bool passwordEye=true;
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
        onWillPop: onBackButtonPressed,
        child: Scaffold(
          body: Form(
            key:_form,
            child:Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 40, 30, 74),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                         Image.asset(
                          'assets/images/Vector_2.png',
                          height: SizeConfig.blockSizeVertical! * 10,
                          width: SizeConfig.blockSizeHorizontal! * 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Music Mate',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockSizeHorizontal! * 7.5,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Find your music mate',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeHorizontal! * 5)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 16,
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal! * 4,
                        SizeConfig.blockSizeVertical! * 0,
                        SizeConfig.blockSizeHorizontal! * 4,
                        SizeConfig.blockSizeVertical! * 0),
                    child: TextFormField(
                      controller: number,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.blockSizeVertical! * 2.7,
                      ),
                      textAlign: TextAlign.start,
                     keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                        ],
                      autofocus: false,
                      cursorColor: Colors.black,
                      validator: (value) {
                          String pattern = r'(^[6789][0-9]{9}$)';
                          RegExp regExp = RegExp(pattern);
                          if(value!.isEmpty) {
                            return "* Required";
                          }
                          else if (!regExp.hasMatch(value)) {
                            return "Need a valid Mobile Number";
                          }  else {
                            return null;
                          }
                        },
                      decoration: InputDecoration(
                          hintText: 'Mobile number',
                          hintStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.transparent,
                          filled: true,
                          errorStyle: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 2,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: SizeConfig.blockSizeVertical! * 0.05,
                                  color: Color(0xFFF3F4F8),
                                  style: BorderStyle.solid),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: SizeConfig.blockSizeVertical! * 0.05,
                                color: Color.fromARGB(255, 130, 167, 243),
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          )),
                    )),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 3,
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal! * 4,
                        SizeConfig.blockSizeVertical! * 0,
                        SizeConfig.blockSizeHorizontal! * 4,
                        SizeConfig.blockSizeVertical! * 0),
                    child: TextFormField(
                      controller: password,
                      obscureText: passwordEye,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.blockSizeVertical! * 2.7,
                      ),
                      textAlign: TextAlign.start,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]'))
                      ],
                      autofocus: false,
                      cursorColor: Colors.black,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* Required";
                        } else if (value.length < 6) {
                          return "Password should be atleast 6 characters";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.transparent,
                          errorStyle: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 2,
                          ),
                          suffixIcon: InkWell(
                            onTap: (){
                              setState(() {
                                passwordEye=!passwordEye;
                              });
                            },
                            child:Icon(
                            passwordEye?Icons.visibility:Icons.visibility_off,
                            color: Colors.white,
                          )),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: SizeConfig.blockSizeVertical! * 0.05,
                                  color: Color(0xFFF3F4F8),
                                  style: BorderStyle.solid),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: SizeConfig.blockSizeVertical! * 0.05,
                                color: Color.fromARGB(255, 130, 167, 243),
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          )),
                    )),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 4,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (!_form.currentState!.validate()) {
                        return;
                          } else {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                        // var snackBar = const SnackBar(content: Text('Login Successfully'));
                        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    });
                    },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 10),
                    child: Text('Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 2.8)),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: Text(
                          'Sign Up!',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: SizeConfig.blockSizeVertical! * 2.5,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ForgetScreen()));
                        },
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 2.5,
                          ),
                        )),
                  ],
                ),
              ],
            )),
          ),
        ));
  }
}
