import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context)=>Scaffold(
    body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: LayoutBuilder(builder: (ctx,constrains){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome!',style: TextStyle(
              fontSize: 36,
            ),),
            SizedBox(
              height: constrains.maxHeight * 0.01,
            ),
            Text('The email or password you entered is incorrect.',style: TextStyle(color: Colors.red),),
            SizedBox(height: constrains.maxHeight *0.05,),
            Row(
              children: [
                Text('Email',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
              height: constrains.maxHeight*0.08,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.grey),
                borderRadius: BorderRadius.circular(4)
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text('Password',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
              height: constrains.maxHeight*0.08,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('Forgot Password ?',style: TextStyle(color: Colors.blue),))
              ],
            ),
            Container(
              height: constrains.maxHeight*0.08,
              width: double.infinity,
              margin: EdgeInsets.only(top: constrains.maxHeight*0.05),
              child: ElevatedButton(
                onPressed: (){

                },
                child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                ),
              ),
            )
          ],
        );
      })
    )
  );
}
