import 'package:bechamp/models/Exercise%20Model/components.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exercise extends StatelessWidget {
  final String? gifLink, exerciseName, muscleName;
  final int? reps, sets, day, week, rest;
  const Exercise({
    super.key,
    required this.gifLink,
    required this.exerciseName,
    required this.reps,
    required this.sets,
    required this.day,
    required this.week,
    required this.rest,
    required this.muscleName,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
    isPlaying = false;
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
          appBar: BeChampAppBar(context).build(context),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height / 4,
                  child: Image.network(
                    "$gifLink",
                    fit: BoxFit.cover,
                  ),
                ),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 48),
                    width: MediaQuery.of(context).size.width,
                    height: 573.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Theme.of(context).primaryColor,
                            blurRadius: 10)
                      ],
                      color: Color.fromRGBO(24, 24, 24, 1),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40)),
                    ),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 55.h,
                          ),
                          Container(
                            height: 62.h,
                            width: 340.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Sets",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily:
                                              "assets/Gilroy-ExtraBold.otf",
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "$sets",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15.sp),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 30,
                                  color: Colors.grey,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Reps",
                                      style: TextStyle(
                                          fontFamily:
                                              "assets/Gilroy-ExtraBold.otf",
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "$reps",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15.sp),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 30.h,
                                  color: Colors.grey,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Rest",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily:
                                              "assets/Gilroy-ExtraBold.otf",
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "$rest s",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15.sp),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 30.h,
                                  color: Colors.grey,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Muscle",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "${this.muscleName}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15.sp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                          Text(
                            "$exerciseName",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "assets/Gilroy-ExtraBold.otf",
                                fontSize: 46.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          CircularCountDownTimer(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.sp,
                                  fontFamily: "assets/Gilroy-ExtraBold.otf"),
                              strokeWidth: 20,
                              controller: cdc,
                              autoStart: false,
                              width: 153,
                              height: 153,
                              duration: rest as int,
                              fillColor: Color.fromRGBO(108, 135, 0, 1),
                              ringColor: Theme.of(context).primaryColor),
                          Text(
                            "\nDay $day, Week $week",
                            style:
                                TextStyle(color: Colors.white, fontSize: 23.sp),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Back",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.sp,
                                            fontFamily:
                                                "assets/Gilroy-ExtraBold.otf"),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                width: 117.w,
                                height: 59.h,
                                child: BeChampButton(
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17.sp,
                                        fontFamily:
                                            "assets/Gilroy-ExtraBold.otf"),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                          onTap: () {
                            isPlaying ? cdc.pause() : cdc.resume();
                            isPlaying = !isPlaying;
                          },
                          child: Icon(
                            Icons.play_circle_outlined,
                            size: 80,
                            color: Theme.of(context).primaryColor,
                          ))),
                ]),
              ],
            ),
          )),
    );
  }
}
