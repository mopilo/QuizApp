import 'package:flutter/material.dart';
class AnswerButton extends StatelessWidget{

  final bool _answer;
  final VoidCallback _onTap;
  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context){
    return new Expanded(
              child: new Material( //true button
                color: _answer == true ? Colors.blueAccent : Colors.redAccent,
                child: new InkWell(
                  onTap: ()=> _onTap(),
                  child: new Center(
                    child: new Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4.0
                        )
                      ),
                      padding: EdgeInsets.all(20.0),
                      child: new Text( _answer == true ? "True" : "False",
                        style: new TextStyle(
                          color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
  }
}