import 'package:flutter/material.dart';
import 'package:group_project_1/seven_days.dart';

class main_screen extends StatelessWidget {
  const main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFEE3BC),
        elevation: 0.0,
        title: const Text(
          "Weather",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
            size: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color(0xffFEE3BC),
        padding: const EdgeInsets.all(18),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Stockholm, \nSweden",
                style: TextStyle(
                  color: Color(0xff313341),
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Tue, Jun 30",
                style: TextStyle(
                  color: Color(0xff9A938C),
                ),
              ),
              const SizedBox(
                height: 15,
              ),




              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/mainWether.png',
                    scale: 0.7,
                  ),
                  Row(
                    children: [
                      Column(
                        children: const [
                          Text(
                            "19",
                            style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Rainy",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "°C",
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),





              Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 0.0),
                    decoration: BoxDecoration(
                      color: Color(0x77ffffff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/rain.png',
                          scale: 0.6,
                        ),
                        const Text(
                          "RainFall",
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.23,
                        ),
                        const Text(
                          "3cm",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 0.0),
                    decoration: BoxDecoration(
                      color: Color(0x77ffffff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/wind.png',
                          scale: 0.6,
                        ),
                        const Text(
                          "Wind",
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.23,
                        ),
                        const Text(
                          "19km/h",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 0.0),
                    decoration: BoxDecoration(
                      color: Color(0x77ffffff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/humidity.png',
                          scale: 0.6,
                        ),
                        const Text(
                          "Humidity",
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.23,
                        ),
                        const Text(
                          "64%",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),







              Row(
                children: [
                  const Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Tomorrow",
                    style: TextStyle(color: Color(0x77000000)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.17,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const sevenDays()),
                      );
                    },
                    child: Row(
                      children: const [
                        Text(
                          "Next 7 Days",
                          style: TextStyle(color: Color(0x77000000)),
                        ),
                        Icon(
                          Icons.navigate_next_outlined,
                          color: Color(0x77000000),
                          size: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),







              SizedBox(height: 20,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var i = 0; i<10; i ++) Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: const Color(0x88ffffff),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            children: [
                              const Text("now"),
                              Image.asset(
                                'assets/images/sun.png',
                                scale: 0.6,
                              ),
                              const Text(
                                "19°",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
