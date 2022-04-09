import 'package:flutter/material.dart';

void main() => runApp(const newsScreen2());
class newsScreen2 extends StatelessWidget {
  const newsScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              child: Column(
                children: [
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Search Result'),
                      Text('22.423 Founds')
                    ],
                  ),
                  Container(
                    child:
                      Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: CircleAvatar(
                                  child: Image.asset('assets/News/bbc.png')
                              ),
                              title: Text("BBC News"),
                              subtitle: Text("6.5M Followers"),
                              trailing: ElevatedButton(onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          )
                                      )
                                  ),
                                  child: Text('Following')),
                            ),

                            const Divider(
                              indent: 40,
                              endIndent: 40,
                              height: 30,
                            ),

                            ListTile(
                              leading: CircleAvatar(
                                  child: Image.asset('assets/News/cnet.png')
                              ),
                              title: Text("CNN "),
                              subtitle: Text("6M Following"),
                              trailing: ElevatedButton(onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          )
                                      )
                                  ),
                                  child: Text('Follow')),
                            ),

                            const Divider(
                              indent: 40,
                              endIndent: 40,
                              height: 30,
                            ),

                            ListTile(
                              leading: CircleAvatar(
                                  child: Image.asset('assets/News/cnn.png')
                              ),
                              title: Text("CNET"),
                              subtitle: Text("127K Followers"),
                              trailing: ElevatedButton(onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          )
                                      )
                                  ),
                                  child: Text('Following')),
                            ),

                            const Divider(
                              indent: 40,
                              endIndent: 40,
                              height: 30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                  child: Image.asset('assets/News/daily.png')
                              ),
                              title: Text("Daily News "),
                              subtitle: Text("6M Following"),
                              trailing: ElevatedButton(onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          )
                                      )
                                  ),
                                  child: Text('Following')),
                            ),

                            const Divider(
                              indent: 40,
                              endIndent: 40,
                              height: 30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                  child: Image.asset('assets/News/buz.png')
                              ),
                              title: Text("Buzz Feed "),
                              subtitle: Text("6M Following"),
                              trailing: ElevatedButton(onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          )
                                      )
                                  ),
                                  child: Text('Following')),
                            ),

                            const Divider(
                              indent: 40,
                              endIndent: 40,
                              height: 30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                  child: Image.asset('assets/News/time.png')
                              ),
                              title: Text("Time News "),
                              subtitle: Text("12K Following"),
                              trailing: ElevatedButton(onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          )
                                      )
                                  ),
                                  child: Text('Following')),
                            ),

                            const Divider(
                              indent: 40,
                              endIndent: 40,
                              height: 30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                  child: Image.asset('assets/News/usa.png')
                              ),
                              title: Text("USA News "),
                              subtitle: Text("50K Following"),
                              trailing: ElevatedButton(onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          )
                                      )
                                  ),
                                  child: Text('Follow')),
                            ),

                            const Divider(
                              indent: 40,
                              endIndent: 40,
                              height: 30,
                            ),

                          ],
                        ),
                      ),

                  )
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
