import 'package:flutter/material.dart';


class QuizOneScreen extends StatefulWidget {
  @override
  _QuizOneScreenState createState() => _QuizOneScreenState();
}

class _QuizOneScreenState extends State<QuizOneScreen> {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Low mood, sadness, feeling blah or down, depressed, just can’t be bothered.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Irritable, loosing your temper easily, feeling pissed off, loosing it.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Sleep difficulties - different from your usual (over the years before you got sick): trouble falling asleep, lying awake in bed.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Feeling decreased interest in: hanging out with friends; being with your best friend; being with your boyfriend/girlfriend; going out of the house; doing school work or work; doing hobbies or sports or recreation.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Feelings of worthlessness, hopelessness, letting people down, not being a good person.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Feeling tired, feeling fatigued, low in energy, hard to get motivated, have to push to get things done, want to rest or lie down a lot.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Trouble concentrating, can’t keep your mind on schoolwork or work, daydreaming when you should be working, hard to focus when reading, getting “bored” with work or school.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Feeling that life is not very much fun, not feeling good when usually (before getting sick) would feel good, not getting as much pleasure from fun things as usual (before getting sick).',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Feeling worried, nervous, panicky, tense, keyed up, anxious.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Physical feelings of worry like: headaches, butterflies, nausea, tingling, restlessness, diarrhea, shakes or tremors.',
      'answers': [
        {'text': 'hardly ever', 'score': 0},
        {'text': 'much of the time', 'score': 1},
        {'text': 'most of the time', 'score': 2},
        {'text': 'all the time', 'score': 3},
      ],
    },
    {
      'questionText': 'Thoughts, plans or actions about suicide or self-harm.',
      'answers': [
        {'text': 'no thoughts or plans or actions', 'score': 0},
        {'text': 'occasional thoughts, no plans or actions', 'score': 1},
        {'text': 'frequent thoughts, no plans or actions', 'score': 2},
        {'text': 'plans and/or actions that have hurt', 'score': 3},
      ],
    },
  ];

  int _totalScore = 0;
  int _questionIndex = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  String get _resultPhrase {
    String resultText;
    if (_totalScore <= 9) {
      resultText = 'Minimal or no depression';
    } else if (_totalScore <= 19) {
      resultText = 'Mild to moderate depression';
    } else {
      resultText = 'Moderate to severe depression';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Kutcher Adolescent Depression Scale (KADS-11)'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.blue.shade800],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Top circle
          Positioned(
            top: -50,
            left: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade200.withOpacity(0.5),
              ),
            ),
          ),
          // Bottom circle
          Positioned(
            bottom: -50,
            right: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade200.withOpacity(0.5),
              ),
            ),
          ),
          // Main content
          Center(
            child: _questionIndex < _questions.length
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Question ${_questionIndex + 1}:',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        _questions[_questionIndex]['questionText'] as String,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
                          .map((answer) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () => _answerQuestion(answer['score'] as int),
                            child: Text(
                              answer['text'] as String,
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        );
                      }).toList(),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your score is: $_totalScore',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        _resultPhrase,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _questionIndex = 0;
                            _totalScore = 0;
                          });
                        },
                        child: Text(
                          'Restart Quiz',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}