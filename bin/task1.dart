import 'package:task1/task1.dart' as task1;

// 1 Create a function that receives username, password, and isAccountActive. Access is
// granted only if username equals 'student', password equals 'iti123', and account is
// active. Return 'Login Successful' or 'Access Denied'.

String login(String username, String password, bool isAccountActive) {
  if (username == 'student' && password == 'iti123' && isAccountActive) {
    return "Login Successful";
  } else {
    return "Access Denied";
  }
}

// 2 Create a function that receives product price, isPremium, and hasCoupon. Customer
// gets 15% discount if premium member OR has coupon. Return final price.
double calculatediscount(double price, bool isPremium, bool hasCoupon) {
  if (isPremium || hasCoupon) {
    return price * 0.85;
  } else {
    return price;
  }
}

// 3 Create a function that receives exam score and attendance percentage. Student
// passes only if score ≥ 50 AND attendance ≥ 75. Return 'Passed' or 'Failed'.
String checkResult(int score, int attendance) {
  if (score >= 50 && attendance >= 75) {
    return "Passed";
  } else {
    return "Failed";
  }
}

// 4 Create a function that receives salary, age, and hasExistingLoan. Loan approved if
// salary ≥ 5000, age between 21 and 60, and no existing loan. Return 'Loan Approved'
// or 'Loan Rejected'.

String loanApproval(double salary, int age, bool hasExistingLoan) {
  if (salary >= 5000 && age >= 21 && age <= 60 && !hasExistingLoan) {
    return "Loan Approved";
  } else {
    return "Loan Rejected";
  }
}

// 5 Create a function that receives order amount and distance in kilometers. Free delivery
// if order ≥ 300, otherwise delivery fee = distance × 5. Return total amount including
// delivery.

double deliveryCost(double orderAmount, double distance) {
  if (orderAmount >= 300) {
    return orderAmount;
  } else {
    double fee = distance * 5;
    return orderAmount + fee;
  }
}

// 6 Create a function that receives years of experience and performance rating (1–5).
// Employee receives bonus if experience ≥ 3 AND rating ≥ 4. Return 'Bonus Granted' or
// 'No Bonus'.

String checkBonus(int experience, int rating) {
  if (experience >= 3 && rating >= 4) {
    return "Bonus Granted";
  } else {
    return "No Bonus";
  }
}

// 7 Create a function that receives hasAccessCard and knowsPassword. Door opens only
// if both are true. Return 'Door Opened' or 'Access Restricted'.

String doorAccess(bool hasAccessCard, bool knowsPassword) {
  if (hasAccessCard && knowsPassword) {
    return "Door Opened";
  } else {
    return "Access Restricted";
  }
}

// 8 Create a function that receives electricity usage (kWh). usage < 200 → 'Low
// Consumption', 200–500 → 'Medium Consumption', above 500 → 'High Consumption'.
// Return the category.

String electricityUsage(double usage) {
  if (usage < 200) {
    return "Low Consumption";
  } else if (usage <= 500) {
    return "Medium Consumption";
  } else {
    return "High Consumption";
  }
}

// 9 Create a function that receives completedLessons and quizScore. Next level unlocks if
// completed lessons ≥ 10 AND quiz score ≥ 70. Return 'Level Unlocked' or 'Complete
// Requirements'.

String nextLevel(int completedLessons, int quizScore) {
  if (completedLessons >= 10 && quizScore >= 70) {
    return "Level Unlocked";
  } else {
    return "Complete Requirements";
  }
}

// 10 Create a function that receives driver availability, user balance, and trip cost. Ride
// starts if driver available AND balance ≥ trip cost. Return 'Ride Confirmed' or
// 'Insufficient Conditions'.

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
