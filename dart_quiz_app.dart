import"dart:math";
import"dart:io";


String prompt(String promptQue){
  print(promptQue);
  String userAnswer=stdin.readLineSync();
  return userAnswer;
}

class MyQuestion{
    String question;
    String realAnswer;

    MyQuestion(String question, String realAnswer){
        this.question=question;
        this.realAnswer=realAnswer;
    }
}

void main(){
    List<MyQuestion> examQuestions = [
    MyQuestion('2+7-2', '7'),
    MyQuestion('2+5-14', '-7'),
  ];

  int examScore = 0;

  for(MyQuestion examQuestion in examQuestions){
    String userAnswer = prompt(examQuestion.question);
    if(userAnswer == examQuestion.realAnswer){
      print("Correct! \n");
      examScore++;
    } else {
      print("Ooops!!!...Incorrect!\n");
    }
  }
  
  print("\nYou got ${examScore} correct out of ${examQuestions.length}");
}