import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sleep_pad/charts/my_percent_indicator.dart';
import 'package:sleep_pad/charts/stepper%20chart.dart';
import 'package:sleep_pad/widgets/my_button.dart';
import 'package:sleep_pad/widgets/text_widget.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              tileMode: TileMode.clamp,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff371f56),
                Color(0xff0d0628),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: ListView(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: "SATURDAY",
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    MyText(
                      text: "16th Sept - 17th Sept",
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                    const Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const Divider(
                  color: Colors.white,
                  height: 2,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyPercentIndicator(
                      title: "M",
                      percent: 75,
                    ),
                    MyPercentIndicator(
                      title: "T",
                      percent: 50,
                    ),
                    MyPercentIndicator(
                      title: "W",
                      percent: 65,
                    ),
                    MyPercentIndicator(
                      title: "T",
                      percent: 90,
                    ),
                    MyPercentIndicator(
                      title: "F",
                      percent: 50,
                    ),
                    MyPercentIndicator(
                      title: "S",
                      percent: 78,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                const Divider(
                  color: Colors.white,
                  height: 2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Sleep Score",
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularPercentIndicator(
                              radius: 100,
                              lineWidth: 12,
                              percent: 83 / 100,
                              animation: true,
                              startAngle: 0,
                              animationDuration: 2500,
                              backgroundColor: Colors.white,
                              progressColor: Colors.purple,
                              center: const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 30,
                                child: Text(
                                  "83 %",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MyText(
                                      text: "8h 28m",
                                      fontSize: 20,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    MyText(
                                      text: "In Bed >",
                                      fontSize: 16,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w300,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MyText(
                                      text: "7h 43m",
                                      fontSize: 20,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    MyText(
                                      text: "Asleep >",
                                      fontSize: 16,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.share,
                              size: 40,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                const Divider(
                  color: Colors.white,
                  height: 2,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.heart_broken,
                            size: 35,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "65 BPM",
                                fontSize: 20,
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              MyText(
                                text: "Heart Rate >",
                                fontSize: 14,
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.heart_broken,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "14 BPM",
                                fontSize: 20,
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              MyText(
                                text: "Respiration Rate >",
                                fontSize: 14,
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.018,
                                width:
                                    MediaQuery.of(context).size.width * 0.030,
                                color: Colors.pinkAccent,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              MyText(
                                  text: "Awake",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ],
                          ),
                          MyText(
                              text: "4%",
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                          MyText(
                              text: "28mm",
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.018,
                                width:
                                    MediaQuery.of(context).size.width * 0.030,
                                color: Colors.lightBlueAccent,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              MyText(
                                  text: "REM",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ],
                          ),
                          MyText(
                              text: "22%",
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                          MyText(
                              text: "1h 35mm",
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.018,
                                width:
                                    MediaQuery.of(context).size.width * 0.030,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              MyText(
                                  text: "Light",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ],
                          ),
                          MyText(
                              text: "56%",
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                          MyText(
                              text: "3h 53m",
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.018,
                                width:
                                    MediaQuery.of(context).size.width * 0.030,
                                color: Colors.indigo,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              MyText(
                                  text: "Deep",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ],
                          ),
                          MyText(
                              text: "18%",
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                          MyText(
                              text: "1h 26mm",
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.maxFinite,
                    child: const ChartStepperView()),

                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  child: MyButton(
                    height: MediaQuery.of(context).size.height * 0.065,
                    width: MediaQuery.of(context).size.width * 0.3,
                    roundSize: 0,
                    onPressed: () {},
                    title: "Next",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
