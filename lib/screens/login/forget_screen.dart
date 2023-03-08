import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../globalaccess/applib/sizer.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  bool passwordEye = true;
  bool confirmpasswordEye = true;
  bool showWidgets = false;

  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  Future<bool> onBackButtonPressed() async {
    Navigator.pushNamed(context, 'login_screen');
    return false;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return WillPopScope(
          onWillPop: onBackButtonPressed,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            body: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 40, 30, 74),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.15),
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
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                7.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Find your music mate',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  5)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical! * 10,
                          ),
                          if (showWidgets == false)
                            CheckMobileNumber(
                              callBack: setWidget,
                            ),
                          if (showWidgets == true) const Forget()
                        ],
                      ),
                    ))),
          ));
    });
  }

  setWidget(value) {
    setState(() {
      showWidgets = value;
    });
  }
}

typedef SetCallBack = void Function(dynamic);

class CheckMobileNumber extends StatefulWidget {
  final SetCallBack callBack;
  const CheckMobileNumber({super.key, required this.callBack});

  @override
  State<CheckMobileNumber> createState() => _CheckMobileNumberState();
}

class _CheckMobileNumberState extends State<CheckMobileNumber> {
  TextEditingController number = TextEditingController();
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SizedBox(
        child: Form(
          key: _form,
          child: Column(
            children: [
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
                      if (value!.isEmpty) {
                        return "* Required";
                      } else if (!regExp.hasMatch(value)) {
                        return "Need a valid Mobile Number";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Mobile number',
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
                              color: const Color.fromARGB(255, 130, 167, 243),
                              style: BorderStyle.solid),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                        )),
                  )),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 4,
              ),
              ElevatedButton(
                onPressed: () {
                  if (!_form.currentState!.validate()) {
                    return;
                  } else {
                    widget.callBack(true);
                    // Navigator.pushNamed(context, "dashboard");
                    // var snackBar = const SnackBar(content: Text('Login Successfully'));
                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  child: Text('Check',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.blockSizeVertical! * 2.8)),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  bool passwordEye = true;
  bool confirmpasswordEye = true;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final passwordform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Form(
        key: passwordform,
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 40, 30, 74),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/coming_soon.gif'))),
              // child: Image(image: AssetImage('assets/images/coming_soon.gif')),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            SizedBox(
              child: Text(
                'User Name',
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeVertical! * 4,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 4,
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
                      hintText: 'New Password',
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
                              color: const Color(0xFFF3F4F8),
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
                    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]'))
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
                      hintText: 'Confirm New Password',
                      hintStyle: const TextStyle(color: Colors.white),
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
                              color: const Color(0xFFF3F4F8),
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
              height: SizeConfig.blockSizeVertical! * 4,
            ),
            ElevatedButton(
              onPressed: () {
                if (!passwordform.currentState!.validate()) {
                } else {
                  Navigator.pushNamed(context, "dashboard");
                }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: Text('Update',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.blockSizeVertical! * 2.5)),
              ),
            ),
          ],
        ),
      );
    });
  }
}
