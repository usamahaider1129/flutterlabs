// ignore_for_file: camel_case_type, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp( const news_ui_scr1());
}

class news_ui_scr1 extends StatefulWidget {
  const news_ui_scr1({Key? key}) : super(key: key);

  @override
  State<news_ui_scr1> createState() => _news_ui_scr1State();
}

class _news_ui_scr1State extends State<news_ui_scr1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/News/bbc.png'),
                    radius: 70,
                  ),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Flutter is Awesome" , style: TextStyle(fontSize: 40),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Student" , style: TextStyle(fontSize:20),
                ),
              ],
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text('872.4K' , style: TextStyle(fontSize: 30),),
                    Text('Hits' , style: TextStyle(fontSize: 20),),
                  ],
                ),
                Column(
                  children: const [
                    Text('6.5M' , style: TextStyle(fontSize: 30),),
                    Text('Followers' , style: TextStyle(fontSize: 20),),
                  ],
                ),
                Column(
                  children: const [
                    Text('127' , style: TextStyle(fontSize: 30),),
                    Text('Following' , style: TextStyle(fontSize: 20),),
                  ],
                ),
              ],
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: ElevatedButton(
                    onPressed: (){
                        setState(() {

                        });
                        },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: const BorderSide(color: Colors.red)
                  )
              )
          ),
                        child: const Text('Follow'),
                )),
                Expanded(
                    child: TextButton(
                      child: const Text('Websites'),
                      onPressed: (){
                        setState(() {

                        });
                      },
                    )),
              ],
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
                children: const [
                  Text('Top News' , style: TextStyle(color: Colors.black , fontSize: 20),),
                  Divider(
                    indent: 40,
                    endIndent: 40,
                    height: 30,
                    color: Colors.orange,
                  ),
                 ],
            ),
                Column(
                  children: const [
                    Text('Recent' , style: TextStyle(color: Colors.black , fontSize: 20),),
                    Divider(
                      indent: 40,
                      endIndent: 40,
                      height: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child:
                Column(
                  children: [
                    Row(
                      children:[
                    Column(
                      children: [Image.asset('assets/News/doctor.png')],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children:const [
                                Text('wow! USA Develops the New  \n and fast ways...\n'),
              ]
                                ),
                                Row(
                                  children: [
                                    Column(children: const [
                                      Text('Osama'),

                                    ],
                                    ),
                                    const Divider(
                                      indent: 40,
                                      endIndent: 40,
                                      height: 30,
                                    ),
                                    Column(children: [
                                      ElevatedButton(onPressed: (){},
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(25),
                                                  )
                                              )
                                          ),
                                          child: const Text('Health'))

                                    ],
                                    )
                                  ],
                                )
                              ],
                            ),

                            
                          ],
                        )
                      ],
                    ),
                    ],
                    ),
                  ],
                )
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              height: 30,
            ),
            Container(
                child:
                Column(
                  children: [
                    Row(
                      children:[
                        Column(
                          children: [Image.asset('assets/News/sport.png')],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                        children:const [
                                          Text('Pakistan launch a football  \n team with a new passion \n'),
                                        ]
                                    ),
                                    Row(
                                      children: [
                                        Column(children: const [
                                          Text('Osama'),

                                        ],
                                        ),
                                        const Divider(
                                          indent: 40,
                                          endIndent: 40,
                                          height: 30,
                                        ),
                                        Column(children: [
                                          ElevatedButton(onPressed: (){},
                                              style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(25),
                                                      )
                                                  )
                                              ),
                                              child: const Text('Sport'))

                                        ],
                                        )
                                      ],
                                    )
                                  ],
                                ),


                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
            )
          ],
        ),
      ),
      ),
    );
  }
}
