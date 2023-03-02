import 'package:flutter/material.dart';
import '../applib/sizer.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
             Row(
               children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(SizeConfig.blockSizeHorizontal!*0,0,5,0),
                  child: SizedBox(                  
                    child: 
                    Icon(Icons.music_off_rounded, size: SizeConfig.blockSizeVertical!*3, color: Colors.red),
                    // Image(image: AssetImage('assets/icons/cancel.png'))
                    ),
                ),
                
                Text(
                    "Delete",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.blockSizeVertical!*3.5,
                        fontFamily: 'Olimpos_bold'
                        ),
                        
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical!* 5,)
               ],
             ),
            
            
          
               Text(
                "Do you want to delete this room..?",
                style: TextStyle(
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
                "CANCEL",
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
                "DELETE",
                style: TextStyle(
                    color: Colors.white,),
              ),
            ),
          ),
        ],
      );
    });
  }
}
