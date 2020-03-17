import 'dart:io';

class Tech{
  var i = 0;
  var interests=new List();
  var stack=new List();
  var mentor=new List();
  var student=new List();
  var availableTime=new List();

  addStacks(i){//i is position of stack ie the mentor or student's corresponding stack number
    var interest = stdin.readLineSync();
    interests[i].add(interest);
  }

  setMentorOrLearners(stack,i){
    if(stack[i]=='m'){
      mentor.add(i);
    }
    else{
      student.add(i);
    }
  }


  setAvailableTime(stack,i){
    for(int j=0;j<stack.lenth;j++)
    {
      if(j==i){
        var time1 = stdin.readLineSync();
        availableTime.add(time1);

      }
      else{
        availableTime.add(0);
      }
    }

    getMentor(stack,timeWanted){//time the student wants is time wanted
      for(int j=0;j<stack.lenth;j++){
        if(timeWanted<=availableTime[i]){
          print("mentor:${i} is available");
        }
      }
    }



  }
}