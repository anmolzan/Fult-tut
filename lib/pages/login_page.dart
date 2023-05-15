import 'package:flutter/material.dart';
import 'package:fluttter_tutorial/utils/routes.dart';

class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name=" ";
  bool changeButton=false;
  final _formkey=GlobalKey<FormState>();
  moveTohome(BuildContext context)async{
    if(_formkey.currentState!.validate()){
    setState(() {
    changeButton=true;
  });
  await Future.delayed((Duration(seconds: 1)));
  await Navigator.pushNamed(context, MyRoutes.HomeRoute);
  setState(() {
    changeButton=false;
  });}}
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.cyanAccent,
      child:SingleChildScrollView(
        child: Form(
         key: _formkey,
          child: Column(

            children: [
              Image.asset("assets/images/login.png",
              fit: BoxFit.cover,
              height: 450,
                ),
             SizedBox(
           height: 20,
            ),
            Text("Welcome $name to login page",style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),),
              SizedBox(
                height: 20,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 32.0),
              child: Column(
                children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Username",labelText: "Username",),
                 validator:(String?value){
                    if(value!.isEmpty){
                      return "Username cannot be empty ";}
                      return null;
                    },
                  onChanged: (value){
                    name=value;
                  setState(() {
                  });},
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Enter password",labelText: "password",),
                  validator:(String?value){
                    if(value!.isEmpty){
                      return "Password cannot be empty ";}
                    else if(value.length<6){
                        return "Password length cannot be less than 6 ";}
                    return null;
                  },),
              ],),),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(changeButton?50:9),
                child: InkWell(
                  splashColor: Colors.yellowAccent,
                  onTap:()=>moveTohome(context),
                  //async{
                   //  setState(() {
                   //    changeButton=true;
                   //  });
                   //  await Future.delayed((Duration(seconds: 1)));
                   // await Navigator.pushNamed(context, MyRoutes.HomeRoute);
                   //  setState(() {
                   //    changeButton=false;
                   //  });
                    //},
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 40,
                    width:changeButton?50: 150,
                   alignment: Alignment.center,
                    child: changeButton?Icon(Icons.done_all_rounded,color: Colors.redAccent,): Text("Login",textAlign: TextAlign.center,style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                  //decoration: BoxDecoration( color: Colors.blue,
                    ////shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                   // borderRadius: BorderRadius.circular(changeButton?50:9)
                     ),
                  ),
                ),

              // ElevatedButton(child: Text("Login",style: TextStyle(
              //   fontSize: 25,
              //   fontWeight: FontWeight.w500,
              // ),),
              //   style: TextButton.styleFrom(
              //     minimumSize: Size(150, 30)
              //   ),
              //   onPressed: (){
              //   Navigator.pushNamed(context, MyRoutes.HomeRoute);
              //   },),
            ],
          ),
        ),
      )
    );
  }
}
