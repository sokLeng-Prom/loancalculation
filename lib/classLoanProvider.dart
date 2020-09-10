import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'homepage.dart';
class ClassLoanCalculator {
  double totalPayment,
      interestRate = 10,
      loanAmount = 150000,
      paidAmount = 50000,
      paymentEveryMonth,
      totalInterest;
  int loanTermInMonth = 12; //in month

  ClassLoanCalculator(
      double totalPayment,
      double interestRate,
      double loanAmount,
      double paidAmount,
      double paymentEveryMonth,
      double totalInterest,
      int loanTermInmont) {
    this.totalPayment = totalPayment;
    this.interestRate = 10;
    this.loanAmount = 150000;
    this.paidAmount = 50000;
    this.paymentEveryMonth = paymentEveryMonth;
    this.totalInterest = totalInterest;
    this.loanTermInMonth = loanTermInmont;
  }
}

class LoanProvider extends ChangeNotifier {
  ClassLoanCalculator classLoanCalculator;

  // double calculateTotalPayment() {
  //   interestRate /= 100;
  //   totalPayment = (loanAmount - paidAmount) *
  //       pow(loanTermInMonth, (1 + interestRate)) /
  //       interestRate;
  //   return totalPayment;
  // }

  double test() {
    return classLoanCalculator.loanAmount - classLoanCalculator.paidAmount;
    print(classLoanCalculator.loanAmount);
  }

  // double paymentEveryMonthFunction() {
  //   paymentEveryMonth = totalPayment / loanTermInMonth;
  //   return paymentEveryMonth;
  // }

  // double totalInterestFuction() {
  //   totalInterest = totalPayment - paidAmount;
  //   return totalInterest;
  // }
}
