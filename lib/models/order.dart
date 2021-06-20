class Order {

  int? total;
  int? jumlah;

  List<double> listOrder = [];

  void hitungTotalOrder({double jumlahOrder = 0, double price = 0}) {

    listOrder = [];
    listOrder.add(jumlahOrder);
    double hitung = jumlahOrder * price;
    print(hitung);
    print(jumlahOrder);
    print("Method called");
    // setTotal(hitung);
  }
}
