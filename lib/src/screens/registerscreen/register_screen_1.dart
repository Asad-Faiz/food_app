import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen1 extends StatelessWidget {
  const RegisterScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Container(
                    height: 40.0,
                    width: 50.0,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            primary: const  Color.fromARGB(255, 242, 174, 17)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30.0,
                        )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10.0,top: 25.0),
                  child: Text(
                    " REGISTER",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 38.0,
                      color: const Color(0XFFF2A902),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
                height: 320.0,
                width: 320.0,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 15, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "User Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Container(
                        height: 40,
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0XFFF2A902),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => const LoginScreen())));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "Next",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "Terms & Conditions",
                style: GoogleFonts.poppins(
                  fontSize: 14.0,
                  color: const Color(0XFFF2A902),
                ),
              ),
            ),
            const SizedBox(height: 30.0,),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Already Have An Account? Log In",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: const Color(0XFFF2A902),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}