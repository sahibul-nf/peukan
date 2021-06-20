part of 'screens.dart';

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var light = LightColor();
  var size = SizeInfo();
  var responsive = Responsive();
  List<Widget> slideItems = [];

  // TODO: build()
  @override
  Widget build(BuildContext context) {
    slideItems = [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: light.color1,
        ),
        margin: size.margin(sTop: 20, sBottom: 0, sRight: 0, sLeft: 0),
        padding: size.padding(sTop: 10, sBottom: 10, sRight: 0, sLeft: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Kini kebutuhan pangan tidak perlu ribet lagi ke pasar, cukup disini di Peukan.Com",
                style: GoogleFonts.poppins(
                  color: light.text,
                  fontSize: responsive.isMobile(context)
                      ? h4
                      : responsive.isTablet(context)
                          ? h2
                          : h1,
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/shop.png",
                height: 300,
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: light.color4,
        ),
        margin: size.margin(sTop: 20, sBottom: 0, sRight: 0, sLeft: 0),
        // height: 300,
        width: size.fullWidth(context),
        child: Image.asset(
          "assets/logo.png",
          height: 90,
        ),
      ),
    ];

    // TODO: return
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
        drawer: SideMenu(),
      ),
    );
  }

  // TODO: mobile()
  mobile() {
    return SafeArea(
      child: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                CarouselSlider(
                  items: slideItems,
                  // carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    height: 250,
                    // autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 70, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Tentang Harapan & Kemakmuran Negeri",
                        style: GoogleFonts.poppins(
                          color: light.title,
                          fontWeight: FontWeight.w500,
                          fontSize: h3,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Peukan.Com hadir menghubungkan kemakmuran, membantu petani membuka akses pasar yang lebih luas dengan pendekatan data dan teknologi.",
                        style: GoogleFonts.poppins(
                          color: light.title,
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: light.color4,
                  padding:
                      const EdgeInsets.symmetric(vertical: 70, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Menciptakan Peluang Untuk \nSemua Kalangan",
                        style: GoogleFonts.poppins(
                          color: light.title,
                          fontWeight: FontWeight.w500,
                          fontSize: h3,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      cardManfaat(
                        title: "Manfaat untuk Petani",
                        assets: "assets/farmer.png",
                        text1: "Pendapatan yang lebih tinggi",
                        text2: "Pembayaran lansung",
                      ),
                      SizedBox(height: 20),
                      cardManfaat(
                        title: "Manfaat untuk Patners",
                        assets: "assets/store.png",
                        text1: "Bonus poin dan komisi",
                        text2: "Ikut kontirbusi membawa dampak sosial",
                      ),
                      SizedBox(height: 20),
                      cardManfaat(
                        title: "Manfaat untuk Konsumen",
                        assets: "assets/konsumen.png",
                        text1: "Produk higienis",
                        text2: "Harga kompetitif",
                      )
                    ],
                  ),
                ),
                Container(
                  color: light.bg,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Mengapa Peukan.Com?",
                        style: GoogleFonts.poppins(
                          color: light.title,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 1.6,
                        ),
                      ),
                      SizedBox(height: 30),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cardMengapaPeukan(
                            title: "Organik - Bebas peptisida",
                            text:
                                "Kami berusaha memberikan sayuran hidroponik yang bebas dari peptisida, karena kesehatan komsumen adalah kebahagian bagi kami. 🙂",
                          ),
                          SizedBox(height: 20),
                          cardMengapaPeukan(
                            title: "Belanja sayur jadi easy",
                            text:
                                "Peukan.com hadir memberikan kemudahan, kamu cukup kontak admin dan pesan sayur semudah chatting di Whatsapp. Dan pesanan diantar ke alamat kamu. Jadi tinggal duduk manis deh di rumah. 😎",
                          ),
                          SizedBox(height: 20),
                          cardMengapaPeukan(
                            title: "Sayur yang jarang kamu temukan di pasar",
                            text:
                                "Sayur di peukan.com akan jarang kamu temukan di pasaran dan tentunya memiliki kandungan gizi yang tinggi dan baik untuk tubuh. 🥬",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // TODO: tablet()
  tablet() => Scrollbar(
        child: CustomScrollView(
          primary: true,
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  CarouselSlider(
                    items: slideItems,
                    // carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      height: size.fullWidth(context) <= 700 ? 350 : 400,
                      // autoPlay: true,
                      enlargeCenterPage: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 70,
                      horizontal: 48,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Tentang Harapan & Kemakmuran Negeri",
                          style: GoogleFonts.poppins(
                            color: light.title,
                            fontWeight: FontWeight.w500,
                            fontSize: responsive.isTablet(context) ? h2 : h1,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Indonesia merupakan negara agraris yang 38 juta (29,76%) penduduknya hidup dari sektor pertanian. Namun, kesejahteraan petani semakin terdesak akibat rantai pasok pangan yang tidak efektif. Peukan.Com hadir menghubungkan kemakmuran, membantu petani membuka akses pasar yang lebih luas dengan pendekatan data dan teknologi.",
                          style: GoogleFonts.poppins(
                            color: light.title,
                            fontWeight: FontWeight.w300,
                            fontSize: responsive.isTablet(context) ? h5 : h4,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: light.color4,
                    padding: const EdgeInsets.symmetric(
                        vertical: 70, horizontal: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Menciptakan Peluang Untuk \nSemua Kalangan",
                          style: GoogleFonts.poppins(
                            color: light.title,
                            fontWeight: FontWeight.w500,
                            fontSize: responsive.isTablet(context) ? h2 : h1,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: cardManfaat(
                                title: "Manfaat untuk Petani",
                                assets: "assets/farmer.png",
                                text1: "Pendapatan yang lebih tinggi",
                                text2: "Pembayaran lansung",
                              ),
                            ),
                            SizedBox(width: 20),
                            Flexible(
                              child: cardManfaat(
                                title: "Manfaat untuk Patners",
                                assets: "assets/store.png",
                                text1: "Bonus poin dan komisi",
                                text2: "Ikut kontirbusi membawa dampak sosial",
                              ),
                            ),
                            SizedBox(width: 20),
                            Flexible(
                              child: cardManfaat(
                                title: "Manfaat untuk Konsumen",
                                assets: "assets/konsumen.png",
                                text1: "Produk higienis",
                                text2: "Harga kompetitif",
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: light.bg,
                    padding: const EdgeInsets.symmetric(
                        vertical: 70, horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mengapa Peukan.Com?",
                                style: GoogleFonts.poppins(
                                  color: light.title,
                                  fontWeight: FontWeight.w500,
                                  fontSize: h2,
                                  height: 1.6,
                                ),
                              ),
                              SizedBox(height: 50),
                              Image.asset(
                                "an.png",
                                height: 350,
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(height: 20),
                        Flexible(
                          child: CarouselSlider(
                            items: [
                              cardMengapaPeukan(
                                title: "Organik - Bebas peptisida",
                                text:
                                    "Kami berusaha memberikan sayuran hidroponik yang bebas dari peptisida, karena kesehatan komsumen adalah kebahagian bagi kami. 🙂",
                              ),
                              // SizedBox(height: 8),
                              cardMengapaPeukan(
                                title: "Belanja sayur jadi easy",
                                text:
                                    "Peukan.com hadir memberikan kemudahan, kamu cukup kontak admin dan pesan sayur semudah chatting di Whatsapp. Dan pesanan diantar ke alamat kamu. Jadi tinggal duduk manis deh di rumah 😎",
                              ),
                              // SizedBox(height: 8),
                              cardMengapaPeukan(
                                title:
                                    "Sayur yang jarang kamu temukan di pasar",
                                text:
                                    "Sayur di peukan.com akan jarang kamu temukan di pasaran dan tentunya memiliki kandungan gizi yang tinggi dan baik untuk tubuh. 🥬",
                              ),
                            ],
                            // carouselController: buttonCarouselController,
                            options: CarouselOptions(
                              scrollDirection: Axis.vertical,
                              height: 250,
                              // size.fullWidth(context) <= 700 ? 50 : 400,
                              // autoPlay: true,
                              enlargeCenterPage: true,
                            ),
                          ),
                        ),
                        // Flexible(
                        //   child: Column(
                        //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //     children: [
                        //       cardMengapaPeukan(
                        //         title: "Organik - Bebas peptisida",
                        //         text:
                        //             "Kami berusaha memberikan sayuran hidroponik yang bebas dari peptisida, karena kesehatan komsumen adalah kebahagian bagi kami. 🙂",
                        //       ),
                        //       SizedBox(height: 8),
                        //       cardMengapaPeukan(
                        //         title: "Belanja sayur jadi easy",
                        //         text:
                        //             "Peukan.com hadir memberikan kemudahan, kamu cukup kontak admin dan pesan sayur semudah chatting di Whatsapp. Dan pesanan diantar ke alamat kamu. Jadi tinggal duduk manis deh di rumah 😎",
                        //       ),
                        //       SizedBox(height: 8),
                        //       cardMengapaPeukan(
                        //         title:
                        //             "Sayur yang jarang kamu temukan di pasar",
                        //         text:
                        //             "Sayur di peukan.com akan jarang kamu temukan di pasaran dan tentunya memiliki kandungan gizi yang tinggi dan baik untuk tubuh. 🥬",
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Footer(),
                ],
              ),
            )
          ],
        ),
      );

  // TODO: desktop()
  desktop() {
    return Scrollbar(
      child: ListView(
        children: [
          MaxWidthContainer(
            child: CarouselSlider(
              items: slideItems,
              // carouselController: buttonCarouselController,
              options: CarouselOptions(
                height: 500,
                // autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
          ),
          MaxWidthContainer(
            maxWidth: 1100,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Tentang Harapan & Kemakmuran Negeri",
                    style: GoogleFonts.poppins(
                      color: light.title,
                      fontWeight: FontWeight.w500,
                      fontSize: h1,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Indonesia merupakan negara agraris yang 38 juta (29,76%) penduduknya hidup dari sektor pertanian. Namun, kesejahteraan petani semakin terdesak akibat rantai pasok pangan yang tidak efektif. Peukan.Com hadir menghubungkan kemakmuran, membantu petani membuka akses pasar yang lebih luas dengan pendekatan data dan teknologi.",
                    style: GoogleFonts.poppins(
                      color: light.title,
                      fontWeight: FontWeight.w300,
                      fontSize: h4,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: light.color4,
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 48),
            child: MaxWidthContainer(
              maxWidth: 1100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Menciptakan Peluang Untuk \nSemua Kalangan",
                    style: GoogleFonts.poppins(
                      color: light.title,
                      fontWeight: FontWeight.w500,
                      fontSize: h1,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: cardManfaat(
                          title: "Manfaat untuk Petani",
                          assets: "assets/farmer.png",
                          text1: "Pendapatan yang lebih tinggi",
                          text2: "Pembayaran lansung",
                        ),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        child: cardManfaat(
                          title: "Manfaat untuk Patners",
                          assets: "assets/store.png",
                          text1: "Bonus poin dan komisi",
                          text2: "Ikut kontirbusi membawa dampak sosial",
                        ),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        child: cardManfaat(
                          title: "Manfaat untuk Konsumen",
                          assets: "assets/konsumen.png",
                          text1: "Produk higienis",
                          text2: "Harga kompetitif",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: light.bg,
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mengapa Peukan.Com?",
                        style: GoogleFonts.poppins(
                          color: light.title,
                          fontWeight: FontWeight.w500,
                          fontSize: h1,
                          height: 1.6,
                        ),
                      ),
                      SizedBox(height: 50),
                      Image.asset(
                        "an.png",
                        height: 400,
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 20),
                Flexible(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      cardMengapaPeukan(
                        title: "Organik - Bebas peptisida",
                        text:
                            "Kami berusaha memberikan sayuran hidroponik yang bebas dari peptisida, karena kesehatan komsumen adalah kebahagian bagi kami. 🙂",
                      ),
                      SizedBox(height: 10),
                      cardMengapaPeukan(
                        title: "Belanja sayur jadi easy",
                        text:
                            "Peukan.com hadir memberikan kemudahan, kamu cukup kontak admin dan pesan sayur semudah chatting di Whatsapp. Dan pesanan diantar ke alamat kamu. Jadi tinggal duduk manis deh di rumah 😎",
                      ),
                      SizedBox(height: 10),
                      cardMengapaPeukan(
                        title: "Sayur yang jarang kamu temukan di pasar",
                        text:
                            "Sayur di peukan.com akan jarang kamu temukan di pasaran dan tentunya memiliki kandungan gizi yang tinggi dan baik untuk tubuh. 🥬",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }

  // TODO: cardManfaat()
  cardManfaat({
    String? title,
    String? assets,
    String? text1,
    String? text2,
  }) {
    return InkWell(
      hoverColor: light.color2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: responsive.isTablet(context) ? 16 : 24, vertical: 24),
        // margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              assets.toString(),
              height: 90,
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  child: Text(
                    title.toString(),
                    style: GoogleFonts.poppins(
                      color: light.title,
                      fontSize: responsive.isMobile(context)
                          ? h4
                          : responsive.isTablet(context)
                              ? h4
                              : h3,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  child: Row(
                    children: [
                      Icon(UniconsLine.check),
                      SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          text1.toString(),
                          style: GoogleFonts.poppins(
                            color: light.title,
                            height: 1.6,
                            fontSize: size.fullWidth(context) >= 650 &&
                                    size.fullWidth(context) < 800
                                ? h5
                                : responsive.isMobile(context)
                                    ? h5
                                    : responsive.isTablet(context)
                                        ? h5
                                        : h4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  child: Row(
                    children: [
                      Icon(UniconsLine.check),
                      SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          text2.toString(),
                          style: GoogleFonts.poppins(
                            color: light.title,
                            height: 1.6,
                            fontSize: size.fullWidth(context) >= 650 &&
                                    size.fullWidth(context) < 800
                                ? h5
                                : responsive.isMobile(context)
                                    ? h5
                                    : responsive.isTablet(context)
                                        ? h5
                                        : h4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  child: Row(
                    children: [
                      Icon(UniconsLine.check),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(
                          text2.toString(),
                          style: GoogleFonts.poppins(
                            color: light.title,
                            height: 1.6,
                            fontSize: size.fullWidth(context) >= 650 &&
                                    size.fullWidth(context) < 800
                                ? h5
                                : responsive.isMobile(context)
                                    ? h5
                                    : responsive.isTablet(context)
                                        ? h5
                                        : h4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // TODO : mengapa()
  cardMengapaPeukan({
    String? title,
    String? text,
  }) =>
      Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: light.color4,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toString(),
              style: GoogleFonts.poppins(
                color: light.title,
                fontSize: responsive.isMobile(context)
                    ? h4
                    : responsive.isTablet(context)
                        ? h4
                        : h3,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text.toString(),
              style: GoogleFonts.poppins(
                color: light.title,
                height: 1.6,
                fontSize: size.fullWidth(context) >= 650 &&
                        size.fullWidth(context) < 800
                    ? h5
                    : responsive.isMobile(context)
                        ? h5
                        : responsive.isTablet(context)
                            ? h5
                            : h5,
              ),
            ),
          ],
        ),
      );
}
