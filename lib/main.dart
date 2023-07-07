
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
    runApp(login());
}

class login extends StatefulWidget {
   const login({super.key});

  @override
  State <login> createState() =>  _loginState();
}

class  _loginState extends State <login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Builder(
        builder: (context) {
          return Scaffold(
            appBar : AppBar(
              title : Text ("Login" , style: TextStyle(color: Colors.black45 , fontSize: 20),),
              centerTitle: true, backgroundColor: Colors.white,
            ),

            body: Center(child:loginUI(context),)
          );
        }
      ),
    );
  }


  Widget loginUI (BuildContext context){
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),

          const Text("login to your account" , style: TextStyle(fontSize: 20),),

          const SizedBox(height: 30,),

          Container(
            height: 300,
            margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: const Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              elevation: 4,
              child: Center(
                child: Column(children: [
                  SizedBox(height : 30),
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Align(alignment: Alignment.centerLeft , 
                  child: Text("username", style: TextStyle(fontSize: 25 ,  color:  Colors.blueAccent),),
                   ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextField(textAlign: TextAlign.center, style: TextStyle(fontSize: 25 ,  color:  Colors.blueAccent),
                  decoration: 
                  InputDecoration(hintText: "enter your username" , hintStyle: TextStyle(fontSize: 15 ,  color:  Colors.grey),
                     suffixIcon: Icon(Icons.account_circle),
                    ),
                   )
                  ),
                 SizedBox(height : 30),
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Align(alignment: Alignment.centerLeft , 
                  child: Text("password", style: TextStyle(fontSize: 25 ,  color:  Colors.blueAccent),),
                   ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextField(textAlign: TextAlign.center, style: TextStyle(fontSize: 25 ,  color:  Colors.blueAccent),
                  decoration: 
                  InputDecoration(hintText: "enter your password" , hintStyle: TextStyle(fontSize: 15 ,  color:  Colors.grey),
                     suffixIcon: Icon(Icons.lock),
                    ),
                   )
                  ),
                ]),
              ),
            ),
          ),

          TextButton(onPressed: (){
            print("clicked");
          }, 
          child: Text("Enter",),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            fixedSize: Size(200, 70),
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white

          ),
          )

      ]),
    );
  }
}