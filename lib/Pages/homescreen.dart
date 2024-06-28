import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spanixoapp/Componets/commonwidgets.dart';
import 'package:spanixoapp/Config/appconfig.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = "/HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchKey = TextEditingController();
  final TextEditingController _quantity = TextEditingController();
  final ScrollController _gridController = ScrollController();
  int _selectedId = 1;
  int _optionSelected = 9;
  final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Product $index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(10.w),
          child: Row(
            children: [
              Image.asset(
                'Assets/Images/logo.jpg',
                fit: BoxFit.contain,
                width: 70.w,
                height: 70.h,
              ),
              Text(
                "POS",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 70.h,
                width: 200.w,
                decoration: BoxDecoration(
                  color: AppConfig.gray,
                  borderRadius: BorderRadius.all(Radius.circular(7.r)),
                ),
                child: TextField(
                  controller: _searchKey,
                  decoration: InputDecoration(
                    hintText: 'Search Products...',
                    hintStyle: TextStyle(fontSize: 30.h),
                    isDense: true,
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              const Spacer(),
              CommonWidgets.button(
                  title: null,
                  width: 60.w,
                  height: 70.h,
                  bgColor: AppConfig.gray,
                  textColor: null,
                  radius: 5.r,
                  fontSize: null,
                  iconColor: AppConfig.blue,
                  iconData: Icons.wifi_outlined,
                  function: () {}),
              CommonWidgets.horizontalSpace(20.w),
              CommonWidgets.button(
                  title: null,
                  width: 60.w,
                  height: 70.h,
                  bgColor: AppConfig.gray,
                  textColor: null,
                  radius: 5.r,
                  fontSize: null,
                  iconColor: AppConfig.blue,
                  iconData: Icons.restart_alt_outlined,
                  function: () {}),
              CommonWidgets.horizontalSpace(10.w),
              CommonWidgets.button(
                  title: 'Select Table',
                  width: 130.w,
                  height: 70.h,
                  bgColor: AppConfig.blue,
                  textColor: AppConfig.background,
                  radius: 5.r,
                  fontSize: 12.sp,
                  iconColor: AppConfig.background,
                  iconData: Icons.table_bar_outlined,
                  function: () {})
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 800.h,
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            _selectedId = 1;
                          });
                        },
                        child: _iconButton(
                            height: 80,
                            width: 70,
                            icon: Icons.home,
                            title: "Home",
                            id: 1)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _selectedId = 2;
                          });
                        },
                        child: _iconButton(
                            height: 80,
                            width: 70,
                            icon: Icons.person_4,
                            title: "Customer",
                            id: 2)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _selectedId = 3;
                          });
                        },
                        child: _iconButton(
                            height: 80,
                            width: 70,
                            icon: Icons.table_bar_rounded,
                            title: "Tables",
                            id: 3)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _selectedId = 4;
                          });
                        },
                        child: _iconButton(
                            height: 80,
                            width: 70,
                            icon: Icons.monetization_on,
                            title: "Cashier",
                            id: 4)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _selectedId = 5;
                          });
                        },
                        child: _iconButton(
                            height: 80,
                            width: 70,
                            icon: Icons.shopping_basket_rounded,
                            title: "Orders",
                            id: 5)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _selectedId = 6;
                          });
                        },
                        child: _iconButton(
                            height: 80,
                            width: 70,
                            icon: Icons.difference_outlined,
                            title: "Reports",
                            id: 6)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedId = 7;
                        });
                      },
                      child: _iconButton(
                          height: 80,
                          width: 70,
                          icon: Icons.settings_suggest,
                          title: "Settings",
                          id: 7),
                    ),
                    const Spacer(),
                    ClipOval(
                      child: Image.asset(
                        'Assets/Images/female.jpg',
                        fit: BoxFit.contain,
                        width: 60.w,
                        height: 60.h,
                      ),
                    ),
                    CommonWidgets.verticalSpace(20.h),
                    RotatedBox(
                      quarterTurns: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Column(
                          children: [
                            Icon(
                              Icons.power_settings_new,
                              size: 30.h,
                            ),
                            Text(
                              'Log out',
                              style: TextStyle(fontSize: 10.sp),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Scrollbar(
              thumbVisibility: false,
              thickness: 10.sp,
              controller: _gridController,
              child: Container(
                width: 450.w,
                height: 900.h,
                decoration: BoxDecoration(
                    color: AppConfig.gray,
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: Column(
                  children: [
                    CommonWidgets.verticalSpace(2.h),
                    Container(
                      width: 400.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: AppConfig.background,
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _optionSelected = 9;
                              });
                            },
                            child: _iconButton(
                                height: 60,
                                width: 70,
                                icon: null,
                                title: "Starters",
                                id: 9),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _optionSelected = 10;
                              });
                            },
                            child: _iconButton(
                                height: 60,
                                width: 70,
                                icon: null,
                                title: "Breakfast",
                                id: 10),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _optionSelected = 11;
                              });
                            },
                            child: _iconButton(
                                height: 60,
                                width: 70,
                                icon: null,
                                title: "Lunch",
                                id: 11),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _optionSelected = 12;
                              });
                            },
                            child: _iconButton(
                                height: 60,
                                width: 70,
                                icon: null,
                                title: "Supper",
                                id: 12),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _optionSelected = 13;
                              });
                            },
                            child: _iconButton(
                                height: 60,
                                width: 70,
                                icon: null,
                                title: "Deserts",
                                id: 13),
                          ),
                        ],
                      ),
                    ),
                    CommonWidgets.verticalSpace(10.h),
                    SizedBox(
                      height: 750.h,
                      width: 400.w,
                      child: DynamicHeightGridView(
                          controller: _gridController,
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          crossAxisSpacing: 10.sp,
                          mainAxisSpacing: 15.sp,
                          itemCount: myProducts.length,
                          builder: (BuildContext ctx, index) {
                            return Container(
                              height: 300.h,
                              width: 150.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: AppConfig.background,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/Images/food_1.png',
                                    fit: BoxFit.contain,
                                    width: 80.w,
                                    height: 100.h,
                                  ),
                                  Text(
                                    myProducts[index]["name"],
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                  Text(
                                    ' 16',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 260.w,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 625.h,
                      child: Column(
                        children: [
                          Row(children: [
                            CommonWidgets.horizontalSpace(3.w),
                            Container(
                              width: 100.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                color: AppConfig.gray,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 15.sp,
                                  ),
                                  Text(
                                    'Add Customer',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // CommonWidgets.button(
                            //     title: "Add Customer",
                            //     width: 40.w,
                            //     height: 70.h,
                            //     bgColor: AppConfig.gray,
                            //     iconColor: Colors.black,
                            //     textColor: Colors.black,
                            //     radius: 10.r,
                            //     fontSize: 5.sp,
                            //     iconData: Icons.add,
                            //     iconSize: 10.sp,
                            //     function: () {}),
                            CommonWidgets.horizontalSpace(30.w),
                            _iconButton(
                                height: 70,
                                width: 35,
                                icon: Icons.add,
                                title: null,
                                id: 20,
                                iconColor: Colors.black),
                            CommonWidgets.horizontalSpace(4.w),
                            _iconButton(
                                height: 70,
                                width: 35,
                                icon: Icons.document_scanner,
                                title: null,
                                id: 20,
                                iconColor: Colors.black),
                            CommonWidgets.horizontalSpace(4.w),
                            _iconButton(
                                height: 70,
                                width: 35,
                                icon: Icons.restart_alt,
                                title: null,
                                id: 20,
                                iconColor: Colors.black),
                          ]),
                          CommonWidgets.verticalSpace(10.h),
                          SizedBox(
                            width: 260.w,
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  const Icon(Icons.chevron_right),
                                  SizedBox(
                                    width: 120.w,
                                    child: Text(
                                      '1 Classic Chicken salad ',
                                      style: TextStyle(fontSize: 9.sp),
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    ' 399',
                                    style: TextStyle(fontSize: 9.sp),
                                  ),
                                  CommonWidgets.horizontalSpace(7.w),
                                  ClipOval(
                                    child: Material(
                                      color: AppConfig.gray, // Button color
                                      child: InkWell(
                                        splashColor: Colors.red, // Splash color
                                        onTap: () {},
                                        child: SizedBox(
                                          width: 19.w,
                                          height: 30.h,
                                          child: Icon(
                                            Icons.close,
                                            size: 10.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              children: <Widget>[
                                Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      padding: EdgeInsets.all(10.sp),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Quanity',
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              ),
                                              Container(
                                                height: 60.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  color: AppConfig.gray,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(7.r)),
                                                ),
                                                child: TextField(
                                                  controller: _quantity,
                                                  style: TextStyle(
                                                      fontSize: 10.sp),
                                                  decoration: InputDecoration(
                                                    hintStyle: TextStyle(
                                                        fontSize: 12.h),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          CommonWidgets.horizontalSpace(10.w),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Discount(%)',
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              ),
                                              Container(
                                                height: 60.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  color: AppConfig.gray,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(7.r)),
                                                ),
                                                child: TextField(
                                                  controller: _quantity,
                                                  style: TextStyle(
                                                      fontSize: 10.sp),
                                                  decoration: InputDecoration(
                                                    hintStyle: TextStyle(
                                                        fontSize: 12.h),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 70.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.r)),
                              color: AppConfig.selectedBlue,
                            ),
                            child: Row(
                              children: [
                                CommonWidgets.horizontalSpace(10.w),
                                Text(
                                  'Add',
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                                const Spacer(),
                                Text(
                                  'Discount',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 9.sp),
                                ),
                                CommonWidgets.horizontalSpace(5.w),
                                Text(
                                  'Note',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 9.sp),
                                ),
                                CommonWidgets.horizontalSpace(5.w),
                              ],
                            ),
                          ),
                          CommonWidgets.verticalSpace(10.h),
                        ],
                      ),
                    ),
                    Container(
                      height: 350.h,
                      width: 260.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.r),
                            bottomRight: Radius.circular(12.r)),
                        color: AppConfig.gray,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Sub Total',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Text(
                                  'AED 41',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Tax',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Text(
                                  ' 7.10',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Payable Amount',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Text(
                                  'AED 48.10',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            CommonWidgets.verticalSpace(10.h),
                            Row(
                              children: [
                                Container(
                                  width: 110.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.r),
                                        topLeft: Radius.circular(10.r)),
                                    color: Colors.orange,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.dock,
                                        size: 13.sp,
                                        color: AppConfig.background,
                                      ),
                                      Text(
                                        'Hold Order',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppConfig.background,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 110.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10.r),
                                        topRight: Radius.circular(10.r)),
                                    color: Colors.green,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.play_arrow,
                                        size: 13.sp,
                                        color: AppConfig.background,
                                      ),
                                      Text(
                                        'Proceed',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppConfig.background,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _iconButton(
      {required String? title,
      required IconData? icon,
      required int id,
      required double width,
      required double height,
      Color? iconColor}) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
        color: (id == 20)
            ? AppConfig.gray
            : (id == _selectedId || _optionSelected == id)
                ? AppConfig.selectedBlue
                : AppConfig.background,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        (icon != null)
            ? Icon(
                icon,
                color: (iconColor != null) ? iconColor : AppConfig.blue,
                size: 18.sp,
              )
            : Container(),
        (title == null)
            ? Container()
            : Text(
                title,
                style: TextStyle(fontSize: 10.sp),
              ),
      ]),
    );
  }
}
