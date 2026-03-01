import 'package:task1/task1.dart' as task1;

String login(String username, String password, bool isAccountActive) {
  if (username == 'student' && password == 'iti123' && isAccountActive) {
    return "Login Successful";
  } else {
    return "Access Denied";
  }
}

double calculatediscount(double price, bool isPremium, bool hasCoupon) {
  if (isPremium || hasCoupon) {
    return price * 0.85;
  } else {
    return price;
  }
}

String checkResult(int score, int attendance) {
  if (score >= 50 && attendance >= 75) {
    return "Passed";
  } else {
    return "Failed";
  }
}

String loanApproval(double salary, int age, bool hasExistingLoan) {
  if (salary >= 5000 && age >= 21 && age <= 60 && !hasExistingLoan) {
    return "Loan Approved";
  } else {
    return "Loan Rejected";
  }
}

double deliveryCost(double orderAmount, double distance) {
  if (orderAmount >= 300) {
    return orderAmount;
  } else {
    double fee = distance * 5;
    return orderAmount + fee;
  }
}

String checkBonus(int experience, int rating) {
  if (experience >= 3 && rating >= 4) {
    return "Bonus Granted";
  } else {
    return "No Bonus";
  }
}

String doorAccess(bool hasAccessCard, bool knowsPassword) {
  if (hasAccessCard && knowsPassword) {
    return "Door Opened";
  } else {
    return "Access Restricted";
  }
}

String electricityUsage(double usage) {
  if (usage < 200) {
    return "Low Consumption";
  } else if (usage <= 500) {
    return "Medium Consumption";
  } else {
    return "High Consumption";
  }
}

String nextLevel(int completedLessons, int quizScore) {
  if (completedLessons >= 10 && quizScore >= 70) {
    return "Level Unlocked";
  } else {
    return "Complete Requirements";
  }
}

String rideRequest(bool driverAvailable, double userBalance, double tripCost) {
  if (driverAvailable && userBalance >= tripCost) {
    return "Ride Confirmed";
  } else {
    return "Insufficient Conditions";
  }
}

void main() {
  print(login('student', 'iti123', true));
  print(calculatediscount(100.0, true, false));
  print(checkResult(60, 80));
  print(loanApproval(6000, 30, false));
  print(deliveryCost(250.0, 10.0));
  print(checkBonus(4, 5));
  print(doorAccess(true, true));
  print(electricityUsage(350.0));
  print(nextLevel(12, 75));
  print(rideRequest(true, 50.0, 30.0));
}
