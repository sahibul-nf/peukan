part of 'screens.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  var light = LightColor();
  var size = SizeInfo();
  var responsive = Responsive();
  List<Widget> _listProduct = [];

  var _cardHover = false;

  final products = [
    Product(name: 'Sawi Pagoda', image: 'SAWI-PAGODA.jpg'),
    Product(name: 'Kailan', image: 'KAILAN.jpg'),
    Product(name: 'Pak Coy', image: 'PAK-COY.jpg'),
    Product(name: 'Kale', image: 'KALE.jpg'),
    Product(name: 'Sawi Sam Hong King', image: 'SawiSamHongKing.jpg'),
  ];

  final order = [];

  List<Widget> _listWidget() {
    _listProduct = [];
    for (var i = 0; i < products.length; i++) {
      _listProduct.add(
        ProductCard(
          image: products[i].image.toString(),
          name: products[i].name.toString(),
          price: products[i].price,
          onPress: () {
            setState(() {
              // int jumlah = 1;
              // do {
              //   dynamic b = products[i].price;
              //   int hasil = b * nilaiAwal;
              //   print(hasil);
              //   nilaiAwal++;
              // } while (nilaiAwal < 1);
            });
          },
        ),
      );
    }
    return _listProduct;
  }

  onGetProduct() {}

  @override
  void initState() {
    // _listWidget();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaxWidthContainer(
      child: Scaffold(
        backgroundColor: light.bg,
        appBar: AppBar(
          backgroundColor: light.bg,
          flexibleSpace: Navbar(),
          elevation: 0,
          toolbarHeight: 70,
        ),
        body: Responsive(
          desktop: desktop(),
          tablet: tablet(),
          mobile: mobile(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: light.color1,
          child: Container(
            child: Icon(UniconsLine.whatsapp),
          ),
          onPressed: () async {
            var wa = new WhatsAppSending();
            wa.launchWhatsApp();
          },
        ),
      ),
    );
  }

  // TODO : mobile
  Widget mobile() => ListView(
        children: [],
      );

  // TODO : tablet
  Widget tablet() => Container();

  // TODO : desktop
  Widget desktop() => MaxWidthContainer(
        child: Scrollbar(
          isAlwaysShown: true,
          child: ListView(
            children: [
              MaxWidthContainer(
                child: card(),
                maxWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              SizedBox(height: 70),
              MaxWidthContainer(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style: GoogleFonts.poppins(
                        color: light.title,
                        fontSize: h1,
                        letterSpacing: 1.6,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        categoryCard(
                          image: "cabbage.png",
                          title: "Sayur",
                        ),
                        categoryCard(
                          image: "fruits.png",
                          title: "Buah",
                        ),
                        categoryCard(
                          image: "salad.png",
                          title: "Salad",
                        ),
                        categoryCard(
                          image: "meat.png",
                          title: "Daging",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              MaxWidthContainer(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
                child: Wrap(
                  runSpacing: 30,
                  spacing: 30,
                  children: List.generate(
                    products.length,
                    (i) => ProductCard(
                      image: products[i].image.toString(),
                      name: products[i].name.toString(),
                      price: products[i].price,
                      onPress: () {
                        print("Orderlist: ${order.length}");

                        setState(() {
                          var nameO = products[i].name.toString();
                          var priceO = products[i].price;

                          if (order.contains(nameO)) {
                            print(order.contains(nameO));
                          }
                          order..add(nameO)..add(priceO);
                        });
                        print("Orderlist: ${order.length}");
                        for (var a in order) {
                          print("");
                          print(a);
                        }
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70),
              Footer(),
            ],
          ),
        ),
      );

  // TODO: product cards
  // productCard({
  //   String image = "No Image",
  //   String name = "No Name",
  //   int? price,
  //   void Function()? onPress,
  // }) =>
  //     Container(
  //       height: MediaQuery.of(context).size.width <= 1999 ? 420 : 440,
  //       width: MediaQuery.of(context).size.width <= 1999 ? 250 : 300,
  //       decoration: BoxDecoration(
  //           color: light.bg,
  //           borderRadius: BorderRadius.circular(20),
  //           boxShadow: [
  //             BoxShadow(
  //               color: light.text,
  //               blurRadius: 10,
  //               spreadRadius: 5,
  //             ),
  //           ]),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Container(
  //             width: MediaQuery.of(context).size.width <= 1999 ? 250 : 300,
  //             height: MediaQuery.of(context).size.width <= 1999 ? 280 : 300,
  //             child: ClipRRect(
  //               borderRadius: BorderRadius.circular(20),
  //               child: Image.asset(
  //                 image.toString(),
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           ),
  //           Flexible(
  //             child: Padding(
  //               padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
  //               child: Text(
  //                 name.toString(),
  //                 style: GoogleFonts.poppins(
  //                   color: light.title,
  //                   fontSize: h4,
  //                   height: 1.6,
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Flexible(
  //             child: Padding(
  //               padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
  //               child: Text(
  //                 price.toString(),
  //                 style: GoogleFonts.poppins(
  //                   color: light.title,
  //                   fontSize: h3,
  //                   height: 1.6,
  //                   fontWeight: FontWeight.w500,
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(
  //                 bottom: 0, right: 16, left: 16, top: 10),
  //             child: ElevatedButton(
  //               child: Container(
  //                 padding: EdgeInsets.symmetric(
  //                   vertical: 10,
  //                 ),
  //                 width: size.fullWidth(context),
  //                 child: Center(
  //                   child: Text(
  //                     "Dapatkan Sekarang",
  //                     style: GoogleFonts.poppins(
  //                       color: light.bg,
  //                       fontSize: h5,
  //                       height: 1.6,
  //                       fontWeight: FontWeight.w400,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               style: ElevatedButton.styleFrom(
  //                 primary: light.color2,
  //                 elevation: 3.0,
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(10),
  //                 ),
  //               ),
  //               onPressed: onGetProduct(),
  //             ),
  //           ),
  //         ],
  //       ),
  //     );

  // TODO: category card
  Widget categoryCard({
    String? image,
    String? title,
  }) =>
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 120,
        decoration: BoxDecoration(
          color: light.text,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image.toString(),
              width: 45,
            ),
            SizedBox(height: 10),
            Text(
              title.toString(),
              style: GoogleFonts.poppins(
                color: light.title,
                fontSize: h6,
                letterSpacing: 1.6,
              ),
            )
          ],
        ),
      );

  // TODO : card()
  Widget card() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: light.color2,
        ),
        margin: size.margin(
          sTop: 20,
          sBottom: 0,
          sRight: 0,
          sLeft: 0,
        ),
        padding: size.padding(
          sTop: 10,
          sBottom: 10,
          sRight: 50,
          sLeft: 50,
        ),
        height: 350,
        // width: 500,
        // color: light.color1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Happy shopping and enjoying the vegetables there is on peukan.com",
                style: GoogleFonts.poppins(
                  color: light.text,
                  fontSize: h1,
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                "happy-shop.png",
                height: 300,
              ),
            ),
          ],
        ),
      );
}
