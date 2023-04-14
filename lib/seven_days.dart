import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:group_project_1/widgets/weather_info_item.dart';

import 'models/days.dart';

// ignore: camel_case_types
class sevenDays extends StatelessWidget {
  const sevenDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFEE3BC),
        elevation: 0.0,
        title: const Text(
          "Seven Days",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: const Color(0xffFEE3BC),
        padding: const EdgeInsets.all(18),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0x77ffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Tommorow",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const Expanded(flex: 8, child: SizedBox()),
                      Text(
                        "${nextDays[0].temp}°",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Image.asset(
                        'assets/images/${nextDays[0].weather}.png',
                        scale: 0.3,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      WeatherInfoItem(
                        imagePath: "assets/images/rain.png",
                        text: "1 cm",
                      ),
                      WeatherInfoItem(
                        imagePath: "assets/images/wind.png",
                        text: "15 km/h",
                      ),
                      WeatherInfoItem(
                        imagePath: "assets/images/humidity.png",
                        text: "50 %",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ...List.generate(nextDays.length, (index) {
                    if (index == 0) index = 2;
                    return Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          decoration: BoxDecoration(
                            color: Color(0x77ffffff),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Text(
                                nextDays[index].dayName,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                              ),
                              const Expanded(
                                flex: 9,
                                child: Text(""),
                              ),
                              Text(
                                "${nextDays[index].temp}°",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/images/${nextDays[index].weather}.png',
                                scale: 0.6,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<NextDaysModel> nextDays = [
  NextDaysModel(
    dayName: "Monday",
    temp: 22,
    weather: "sun",
  ),
  NextDaysModel(
    dayName: "Tuesday",
    temp: 25,
    weather: "sun",
  ),
  NextDaysModel(
    dayName: "Wednesday",
    temp: 18,
    weather: "sun",
  ),
  NextDaysModel(
    dayName: "Thursday",
    temp: 16,
    weather: "sun",
  ),
  NextDaysModel(
    dayName: "Friday",
    temp: 20,
    weather: "sun",
  ),
  NextDaysModel(
    dayName: "Saturday",
    temp: 21,
    weather: "sun",
  ),
];
