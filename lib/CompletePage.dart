import 'package:flutter/material.dart';
import 'package:trivia_quiz_app/CategoryPage.dart';
import 'package:trivia_quiz_app/StartPage.dart';
import 'HomePage.dart';

// 1. Added correctAnswers parameter
class Completed extends StatelessWidget {
  final int correctAnswers;

  const Completed({super.key, required this.correctAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 521,
            width: 400,
            child: Stack(
              children: [
                Container(
                  height: 340,
                  width: 410,
                  decoration: BoxDecoration(
                    color: const Color(0xffA42FC1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 85,
                      backgroundColor: Colors.white.withOpacity(.3),
                      child: CircleAvatar(
                        radius: 71,
                        backgroundColor: Colors.white.withOpacity(.4),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Your Score',
                                  style: TextStyle(fontSize: 20, color: Color(0xffA42FC1)),
                                ),
                                // 2. Updated to display correctAnswers
                                RichText(
                                  text: TextSpan(
                                    text: '$correctAnswers',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffA42FC1),
                                    ),
                                    children: const [
                                      TextSpan(
                                        text: ' pt',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xffA42FC1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 22,
                  child: Container(
                    height: 190,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 3,
                          color: Color(0xffA42FC1).withOpacity(.7),
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: const Color(0xffA42FC1),
                                            ),
                                          ),
                                          const Text(
                                            '100%',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Color(0xffA42FC1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text('Completion'),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: const Color(0xffA42FC1),
                                            ),
                                          ),
                                          const Text(
                                            '10',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Color(0xffA42FC1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text('Total Questions'),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.green,
                                            ),
                                          ),
                                          // 2. Updated to display correctAnswers
                                          Text(
                                            '$correctAnswers',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text('Correct'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 48.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.red,
                                              ),
                                            ),
                                            // 2. Updated to display incorrect answers
                                            Text(
                                              '${10 - correctAnswers}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text('Wrong'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CategoryPage()),
                          );
                        },
                        child: const CircleAvatar(
                          backgroundColor: Color(0xff37AFA1),
                          radius: 40,
                          child: Center(
                            child: Icon(
                              Icons.refresh,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Play Again',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
          const SizedBox(height: 10,),
          ElevatedButton(
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const StartPage()),
                );
              },
              child: const Text('Start Page') )
            ],
          ),
      );
  }
}
