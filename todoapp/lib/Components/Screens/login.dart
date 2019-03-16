import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import './Home.dart';

class Login extends StatelessWidget {
  final Widget child;
  String _loginanimation = "after_success";

  Login({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
          children:<Widget>[ 
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlareActor(
                  "assets/login.flr",
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: _loginanimation,
                ),
              ),
              
            ],
          ),

          Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 610.0,
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    print('loging in .....');
                     Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Home()),
                                );
                  },
                  child: Container(
                    width: 100.0,
                    height: 30.0,
                    color: Colors.amber,
                    child: Center(
                      child: Text('LOGIN')
                      ),

                    ),
                ),

              ),
            ],
          ),
          ]
    );
  }
}