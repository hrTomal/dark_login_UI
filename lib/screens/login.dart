import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class LoginUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.black87,
                ),
                height: MediaQuery.of(context).size.height * 0.8,
                alignment: Alignment.bottomCenter,
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * .4,
                top: -45,
                child: const CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.black87,
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.6,
                  padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    // gradient: LinearGradient(
                    //   begin: Alignment.bottomRight,
                    //   end: Alignment.topCenter,
                    //   stops: [.01, .15],
                    //   colors: [
                    //     Colors.red,
                    //     Colors.black87,
                    //   ],
                    // ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(125),
                      bottomLeft: Radius.circular(125),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          //changed value
                        },
                        decoration: inputDecoration.copyWith(
                          hintText: 'Enter User ID',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          //changed value
                        },
                        decoration: inputDecoration.copyWith(
                          hintText: 'Enter Password',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.login,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        'Or, SignUp Using',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.grey),
                      ),
                      const Divider(
                        color: Colors.grey,
                        indent: 80,
                        endIndent: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.mail_outline_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.facebook_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.local_phone_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
