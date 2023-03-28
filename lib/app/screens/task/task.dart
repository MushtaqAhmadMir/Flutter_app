import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/components/empty_bar.dart';
import 'package:my_app/app/components/horizontal_line.dart';
import 'package:my_app/app/screens/task/widgets/achivement_comp.dart';
import 'package:my_app/app/screens/task/widgets/folllowing_comp.dart';
import 'package:my_app/app/screens/task/widgets/gallery_button.dart';
import 'package:my_app/app/screens/task/widgets/rainbow.dart';

void main(List<String> args) {}

class Task extends StatelessWidget {
  final int tabValue = 1;

  static final List<String> images = [
    'https://www.shutterstock.com/image-illustration/oil-painting-conceptual-abstract-picture-260nw-1445018480.jpg',
    'https://media.istockphoto.com/id/636761588/photo/used-brushes-on-an-artists-palette-of-colorful-oil-paint.jpg?s=612x612&w=0&k=20&c=38YQxVJVWnNfvGtlb7AXMx_ItyHZMEdmWenNkWNQ91g=',
    'https://t3.ftcdn.net/jpg/02/69/00/62/360_F_269006287_UOjqqlydfZpqlXB4tSxLZGXI0MXhHytb.jpg',
    'https://www.shutterstock.com/image-illustration/oil-painting-conceptual-abstract-picture-260nw-1445018480.jpg',
    'https://media.istockphoto.com/id/636761588/photo/used-brushes-on-an-artists-palette-of-colorful-oil-paint.jpg?s=612x612&w=0&k=20&c=38YQxVJVWnNfvGtlb7AXMx_ItyHZMEdmWenNkWNQ91g=',
    'https://t3.ftcdn.net/jpg/02/69/00/62/360_F_269006287_UOjqqlydfZpqlXB4tSxLZGXI0MXhHytb.jpg'
  ];
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: EmptyAppBar(),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: Container(
                    child: Column(
                  children: [
                    // SizedBox(
                    //   height: 50,
                    // ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset('lib/app/assets/agc.png'),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width / 2,
                          // color: Colors.amber,
                          height: 30,
                        ),
                        Flexible(
                          child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width / 2,
                            // color: Colors.pink,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 33,
                                    width: 33,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0xFFD90034)),
                                    child: Image.asset(
                                        'lib/app/assets/profile.png'),
                                  ),
                                  Image.asset('lib/app/assets/plus.png'),
                                  Image.asset('lib/app/assets/menu.png'),
                                ]),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Container(
                        // height: 250,
                        // color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image.asset('lib/app/assets/upload.png'),
                                  Text(
                                    'Upload',
                                    style: TextStyle(color: Color(0xFF597DDF)),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                      radius: 55,
                                      backgroundImage: AssetImage(
                                        'lib/app/assets/Bitmap.png',
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      'john.doe',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 36),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('lib/app/assets/edit.png'),
                                  Text(
                                    'Edit',
                                    style: TextStyle(color: Color(0xFF597DDF)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25, left: 10, right: 10),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My dashboard',
                              style: TextStyle(fontSize: 14),
                            ),
                            Image.asset('lib/app/assets/switch.png')
                          ],
                        ),
                      ),
                    ),
                    HorizontalLine(),
                    FollowingComp(),
                    HorizontalLine(),
                    AchivementComp(),
                    Rainbow(),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GalleryButton(
                                image: 'lib/app/assets/upload.png',
                                title: 'Uploads',
                                selectedTab: tabValue,
                              ),
                              GalleryButton(
                                image: 'lib/app/assets/gallery.png',
                                title: 'Exhibitions',
                                selectedTab: 2,
                              ),
                              GalleryButton(
                                image: 'lib/app/assets/stack.png',
                                title: 'Revenue',
                                selectedTab: 3,
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                          height: 800,
                          child: Column(children: [
                            Expanded(
                                child: IgnorePointer(
                              child: GridView.count(
                                controller: null,
                                dragStartBehavior: DragStartBehavior.start,
                                // scrollDirection: ,
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                children: [
                                  Container(
                                    height: 100,
                                    color: Colors.red,
                                    child: Image.network(
                                      images[0],
                                      cacheHeight: 200,
                                      cacheWidth: 200,
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    child: Image.network(
                                      images[1],
                                      cacheHeight: 200,
                                      cacheWidth: 200,
                                    ),
                                  ),
                                  Container(
                                    child: Image.network(
                                      images[2],
                                      cacheHeight: 200,
                                      cacheWidth: 200,
                                    ),
                                  ),
                                  Container(
                                    child: Image.network(
                                      images[3],
                                      cacheHeight: 200,
                                      cacheWidth: 200,
                                    ),
                                  ),
                                  Container(
                                    child: Image.network(
                                      images[4],
                                      cacheHeight: 200,
                                      cacheWidth: 200,
                                    ),
                                  ),
                                  Container(
                                    child: Image.network(
                                      images[5],
                                      cacheHeight: 200,
                                      cacheWidth: 200,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ])),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                )),
              ),
            )));
  }
}
