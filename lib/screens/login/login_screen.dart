import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
        onWillPop: onBackButtonPressed,
        child: Scaffold(
          body: Container(
            // color: Color(0xFF49b0b6),
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage
              (image: NetworkImage('https://i.pinimg.com/originals/bb/58/8d/bb588dd1c731330607fd8abfd5b63fb5.jpg'),
              fit: BoxFit.cover)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
                      ],
                      autofocus: false,
                      cursorColor: Colors.black,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter name";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                          hintText: 'Mobile number', hintStyle: TextStyle(
                            color: Colors.white
                          ),
                          fillColor: Colors.transparent,
                          // fillColor: Color(0xFFd7d7dd),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0xFFF3F4F8),
                                  style: BorderStyle.solid),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 130, 167, 243),
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                          )),
                    )),
                 SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2,
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
                      ],
                      autofocus: false,
                      cursorColor: Colors.black,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter name";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                          hintText: 'Password',hintStyle: TextStyle(
                            color: Colors.white
                          ),
                          fillColor: Colors.transparent,
                          // fillColor: Color(0xFFd7d7dd),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0xFFF3F4F8),
                                  style: BorderStyle.solid),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 130, 167, 243),
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                          )),
                    )),
                   SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2,
                ),
                Container(
                  decoration:  BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    border: Border.all(color:Colors.black),
                    gradient: const LinearGradient(
                     stops: [.8, .8],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      colors: [Color.fromARGB(255, 40, 30, 74), Color(0xFF635985)])
                  ),
                  child:ElevatedButton(onPressed: (){}, 
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
             ),
                child:  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
                    child: Text('Login'),
                  ),
                  )),
                    SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  TextButton(onPressed: (){}, 
                    child: const Text('Sign Up', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),)),
                    TextButton(onPressed: (){}, 
                    child: const Text('Forget Password?', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),)),
                  ],
                )
                  ,  
              ],
            ),
          ),
        ));
  }
}
