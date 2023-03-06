import 'package:flutter/material.dart';
import '../applib/sizer.dart';

class Signoutpopup extends StatefulWidget {
  const Signoutpopup({super.key});

  @override
  State<Signoutpopup> createState() => _SignoutpopupState();
}

class _SignoutpopupState extends State<Signoutpopup> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://freepngimg.com/thumb/jazz/48347-5-musical-notation-symbol-image-png-image-high-quality.png'))
        ),
        child: AlertDialog(
          backgroundColor: Color(0xFF18122b),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                 Row(
                   children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(SizeConfig.blockSizeHorizontal!*0,0,5,0),
                      child: SizedBox(                  
                        child: 
                        Icon(Icons.logout , size: SizeConfig.blockSizeVertical!*3, color: Colors.red),
                        // Image(image: AssetImage('assets/icons/cancel.png'))
                        ),
                    ),
                    Text(
                        "Sign Out",
                        style: TextStyle(
                          color: Color.fromARGB(255, 214, 213, 213),
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.blockSizeVertical!*3.5,
                            fontFamily: 'Olimpos_bold'
                            ),
                            
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical!* 5,)
                   ],
                 ),        
              
                   Text(
                    "Do you want to sign out really..?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 214, 213, 213),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical!*2.3,
                        fontFamily: 'Olimpos_light'),
                  ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                   Navigator.of(context).pop();
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    gradient: LinearGradient(colors: <Color>[Color(0xFF281e4a),Color.fromARGB(255, 91, 72, 154)]),
                    // color: Color(0xFF281e4a),
                  ),
                  padding: EdgeInsets.all(SizeConfig.safeBlockVertical!*1.3),
                  child: const Text(
                    "NO",
                    style: TextStyle(
                        color: Colors.white,),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                   Navigator.of(context).pop();
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    // color: Color(0xFF281e4a),
                    gradient: LinearGradient(colors: <Color>[Color(0xFF281e4a),Color.fromARGB(255, 91, 72, 154)])
                  ),
                  padding: EdgeInsets.all(SizeConfig.safeBlockVertical!*1.3),
                  child: const Text(
                    "YES",
                    style: TextStyle(
                        color: Colors.white,),
                  ),
                ),
              ),
            ],
        ),
      );
    }
    );
  }
}