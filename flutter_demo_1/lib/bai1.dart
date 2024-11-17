double PayElectricBill(int kWh) {
  List<int> listNumberKwh = [50, 50, 100, 100];
  List<int> payNumberKwh = [1678, 1734, 2014, 2536];

  double sumMoney = 0;

  for (int i = 0; i < listNumberKwh.length; i++) {
    int countMoneyKwh = kWh > listNumberKwh[i] ? listNumberKwh[i] : kWh;
    sumMoney += countMoneyKwh * payNumberKwh[i];
    kWh -= countMoneyKwh;
    if (kWh <= 0) break;
  }

  if (kWh > 0) {
    sumMoney += kWh * 2834;
  }

  return sumMoney;
}

void main() {
  int soKwh = 350;
  double tienDienFor = PayElectricBill(soKwh);
  print(
      "Kết quả: ${tienDienFor % 1 == 0 ? tienDienFor.toInt() : tienDienFor} đồng");
}
