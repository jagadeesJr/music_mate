import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_mate/globalaccess/applib/applib.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

Future<bool> onBackButtonPressed() async {
  return false;
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final _form = GlobalKey<FormState>();
  bool passwordEye = true;
  bool confirmpasswordEye = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
        onWillPop: onBackButtonPressed,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Form(
            key: _form,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color.fromARGB(255, 40, 30, 74),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          // FadeInImage(
                          //   fadeOutCurve: Curves.linear,
                          //   fadeOutDuration:Duration(milliseconds: 3000),
                          //   placeholder:AssetImage("assets/images/head.png"),image:AssetImage("assets/images/Vector_2.png"))
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
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 5)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 20,
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal! * 4,
                          SizeConfig.blockSizeVertical! * 0,
                          SizeConfig.blockSizeHorizontal! * 4,
                          SizeConfig.blockSizeVertical! * 0),
                      child: TextFormField(
                        controller: name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.blockSizeVertical! * 2.7,
                        ),
                        textAlign: TextAlign.start,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
                        ],
                        autofocus: true,
                        cursorColor: Colors.black,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: const TextStyle(color: Colors.white),
                            fillColor: Colors.transparent,
                            filled: true,
                            errorStyle: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical! * 2,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: SizeConfig.blockSizeVertical! * 0.05,
                                    color: const Color(0xFFF3F4F8),
                                    style: BorderStyle.solid),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: SizeConfig.blockSizeVertical! * 0.05,
                                  color:
                                      const Color.fromARGB(255, 130, 167, 243),
                                  style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            )),
                      )),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
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
                        autofocus: true,
                        cursorColor: Colors.black,
                        validator: (value) {
                          String pattern = r'(^[6789][0-9]{9}$)';
                          RegExp regExp = RegExp(pattern);
                          if (value!.isEmpty) {
                            return "* Required";
                          } else if (!regExp.hasMatch(value)) {
                            return "Need a valid Mobile Number";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            hintStyle: const TextStyle(color: Colors.white),
                            fillColor: Colors.transparent,
                            filled: true,
                            errorStyle: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical! * 2,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: SizeConfig.blockSizeVertical! * 0.05,
                                    color:const Color(0xFFF3F4F8),
                                    style: BorderStyle.solid),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: SizeConfig.blockSizeVertical! * 0.05,
                                  color:const Color.fromARGB(255, 130, 167, 243),
                                  style: BorderStyle.solid),
                              borderRadius:
                                 const BorderRadius.all(Radius.circular(6)),
                            )),
                      )),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
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
                          FilteringTextInputFormatter.allow(
                              RegExp('[a-zA-Z0-9]'))
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
                            hintStyle: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            fillColor: Colors.transparent,
                            errorStyle: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical! * 2,
                            ),
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passwordEye = !passwordEye;
                                  });
                                },
                                child: Icon(
                                  passwordEye
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white,
                                )),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: SizeConfig.blockSizeVertical! * 0.05,
                                    color:const Color(0xFFF3F4F8),
                                    style: BorderStyle.solid),
                                borderRadius:
                                   const BorderRadius.all(Radius.circular(6))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: SizeConfig.blockSizeVertical! * 0.05,
                                  color: const Color.fromARGB(255, 130, 167, 243),
                                  style: BorderStyle.solid),
                              borderRadius:
                                 const BorderRadius.all(Radius.circular(6)),
                            )),
                      )),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal! * 4,
                          SizeConfig.blockSizeVertical! * 0,
                          SizeConfig.blockSizeHorizontal! * 4,
                          SizeConfig.blockSizeVertical! * 0),
                      child: TextFormField(
                        controller: confirmpassword,
                        obscureText: confirmpasswordEye,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.blockSizeVertical! * 2.7,
                        ),
                        textAlign: TextAlign.start,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp('[a-zA-Z0-9]'))
                        ],
                        autofocus: false,
                        cursorColor: Colors.black,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '* Required';
                          } else if (value != password.text) {
                            return "Password does not match";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle:const TextStyle(color: Colors.white),
                            fillColor: Colors.transparent,
                            errorStyle: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical! * 2,
                            ),
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    confirmpasswordEye = !confirmpasswordEye;
                                  });
                                },
                                child: Icon(
                                  confirmpasswordEye
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white,
                                )),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: SizeConfig.blockSizeVertical! * 0.05,
                                    color:const Color(0xFFF3F4F8),
                                    style: BorderStyle.solid),
                                borderRadius:
                                   const BorderRadius.all(Radius.circular(6))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: SizeConfig.blockSizeVertical! * 0.05,
                                  color:const Color.fromARGB(255, 130, 167, 243),
                                  style: BorderStyle.solid),
                              borderRadius:
                                const  BorderRadius.all(Radius.circular(6)),
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
                           Navigator.pushNamed(context, "profile_image_screen");
                        }
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 10),
                      child: Text('Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockSizeVertical! * 2.5)),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 2.5,
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "login_screen");
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: SizeConfig.blockSizeVertical! * 2.5,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
