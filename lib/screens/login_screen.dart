import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Lofin_ScreenState();
}

class _Lofin_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://e0.pxfuel.com/wallpapers/105/975/desktop-wallpaper-blue-background-lock-screen-samsung-galaxy-s5-clothes-color-iphone-s5-blue-background-light-blue-plain.jpg"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                child: CircleAvatar(
                  radius: 22,
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.black87),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Welcome \nBack",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.blue.withOpacity(.02),
                            filled: true,
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.blue),
                            hintText: "Enter your Email",
                            prefixIcon: Icon(Icons.email),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.blue)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            fillColor: Colors.blue.withOpacity(.02),
                            filled: true,
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.blue),
                            hintText: "Enter your Password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.blue)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                      ),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Sign In",
                            style: TextStyle(color: Colors.white)),
                        color: Colors.blue,
                        minWidth: double.infinity,
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      SizedBox(height: 10,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: 'Do you have account ', style: TextStyle(color: Colors.black87)),
                            TextSpan(
                              text: '?',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' Sign Up!', style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
