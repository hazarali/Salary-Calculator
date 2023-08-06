double calculateSalary(int workDays) {
  final int dailyWorkHours = 8;
  final double hourlyRate = 10.0;
  final double overtimeRate = 20.0;
  final int maxRegularHours = 160;

  int totalHours = workDays * dailyWorkHours;
  int regularHours = totalHours <= maxRegularHours ? totalHours : maxRegularHours;
  int overtimeHours = totalHours > maxRegularHours ? totalHours - maxRegularHours : 0;

  double regularPay = regularHours * hourlyRate;
  double overtimePay = overtimeHours * overtimeRate;

  return regularPay + overtimePay;
}

void main() {
  int workDays = 22; // Örnek olarak çalışılan gün sayısını 22 kabul edelim.

  double salary = calculateSalary(workDays);
  print('Elde edilen maaş: \$${salary.toStringAsFixed(2)}');
}