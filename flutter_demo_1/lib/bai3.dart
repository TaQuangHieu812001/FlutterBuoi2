import 'dart:io';

int UocChungLonNhat(int a, int b) {
  if (b == 0) {
    return a;
  }
  return UocChungLonNhat(b, a % b);
}

int BoiChungNhoNhat(int a, int b) {
  return (a * b).abs() ~/ UocChungLonNhat(a, b);
}

void main() {
  print("Nhập số thứ nhất: ");
  int a = int.parse(stdin.readLineSync()!);

  print("Nhập số thứ hai: ");
  int b = int.parse(stdin.readLineSync()!);

  int uclnResult = UocChungLonNhat(a, b);
  int bcnnResult = BoiChungNhoNhat(a, b);

  print("Ước chung lớn nhất (UCLN) của $a và $b là: $uclnResult");
  print("Bội chung nhỏ nhất (BCNN) của $a và $b là: $bcnnResult");
}
