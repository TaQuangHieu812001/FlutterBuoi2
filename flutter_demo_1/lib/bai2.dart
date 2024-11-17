import 'dart:math';

void giaiPhuongTrinhBacHai(double a, double b, double c) {
  if (a == 0) {
    print(b == 0
        ? (c == 0 ? "Phương trình có vô số nghiệm" : "Phương trình vô nghiệm")
        : "Phương trình có nghiệm duy nhất: x = ${-c / b}");
    return;
  }

  double delta = b * b - 4 * a * c;

const String haiNghiem = "Hai Nghiệm phân biệt";
const String nghiemKep = "Nghiệm kép";
const String voNghiem = "Vô Nghiệm";

String nghiem = delta.sign == 1
    ? haiNghiem
    : delta.sign == 0
        ? nghiemKep
        : voNghiem;

  switch (nghiem) {
    case haiNghiem: // Delta > 0
      double x1 = (-b + sqrt(delta)) / (2 * a);
      double x2 = (-b - sqrt(delta)) / (2 * a);
      print("Phương trình có 2 nghiệm phân biệt: x1 = $x1, x2 = $x2");
      break;

    case nghiemKep: // Delta == 0
      double x = -b / (2 * a);
      print("Phương trình có nghiệm kép: x = $x");
      break;

    case voNghiem: // Delta < 0
      print("Phương trình vô nghiệm thực");
      break;

    default:
      print("Lỗi không xác định.");
      break;
  }
}
void main() {
  double a = 1;
  double b = -2;
  double c = 1;
  print("Nhập các hệ số a, b, c:");
  // double a = double.parse(stdin.readLineSync() ?? '0');
  // double b = double.parse(stdin.readLineSync() ?? '0');
  // double c = double.parse(stdin.readLineSync() ?? '0');

  giaiPhuongTrinhBacHai(a, b, c);
}
