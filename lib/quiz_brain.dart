import 'question.dart';

class QuizBrain {
  int _questionNo = 0;

  List<Question> _questionBank = [
    Question('Java was initially called Oak.', true),
    Question('Strings are primitive Data Type.', false),
    Question('Range of INT data type is [-2B,2B] in Java.', true),
    Question('Strings are immutable in Java.', true),
    Question('int x = 10 / 3; \nReturns an integer.', true),
    Question('In Java we have 3 types of type casting.', false),
    Question('Parsing is used for converting int to double.', false),
    Question('Method Overriding is also called Polymorphism.', true),
    Question('\'volatile\' is a type of Modifier.', true),
    Question('An \'enum\' can implement interfaces.', true),
    Question('Pattern.compile() and matcher() are String methods.', false),
    Question(
        'To use an Iterator, you must import it from the java.lang package.',
        false),
  ];

  String getQuestionText() {
    return _questionBank[_questionNo].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNo].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNo < _questionBank.length - 1) _questionNo++;
  }

  bool isFinished() {
    if (_questionNo == _questionBank.length - 1) {
      print('End of quiz');
      return true;
    } else
      return false;
  }

  void reset() {
    _questionNo = 0;
  }
}
