part of 'widgets.dart';

class Footer extends StatelessWidget {
  final size = SizeInfo();
  final light = LightColor();
  final responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: light.color2,
      padding: size.padding(
        sTop: 70,
        sBottom: 30,
        sRight: responsive.isTablet(context) ? 32 : 0,
        sLeft: responsive.isTablet(context) ? 32 : 0,
      ),
      child: MaxWidthContainer(
        maxWidth: 1100,
        child: responsive.isMobile(context)
            ? mobileFooter()
            : desktopAndTabletFooter(
                titleSize: responsive.isTablet(context) ? h5 : h4,
              ),
      ),
    );
  }

  desktopAndTabletFooter({
    double? titleSize,
  }) =>
      Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: InkWell(
                  child: Image.asset(
                    "assets/logo.png",
                    height: 120,
                  ),
                  onTap: () {
                    Get.toNamed("/");
                  },
                ),
              ),
              SizedBox(width: 30),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company",
                      style: GoogleFonts.poppins(
                        color: light.text,
                        fontWeight: FontWeight.w500,
                        fontSize: titleSize,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    NavbarItem(
                      text: "Peukan Store",
                      color: light.text,
                      onPress: () {
                        Get.toNamed("/store");
                      },
                    ),
                    NavbarItem(
                      text: "About Us",
                      color: light.text,
                      onPress: () {},
                    ),
                    NavbarItem(
                      text: "Patners",
                      color: light.text,
                      onPress: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Resources",
                      style: GoogleFonts.poppins(
                        color: light.text,
                        fontWeight: FontWeight.w500,
                        fontSize: titleSize,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    NavbarItem(
                      text: "Blog",
                      color: light.text,
                      onPress: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Download",
                      style: GoogleFonts.poppins(
                        color: light.text,
                        fontWeight: FontWeight.w500,
                        fontSize: titleSize,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    NavbarItem(
                      text: "Android App",
                      color: light.text,
                      onPress: () {},
                    ),
                    NavbarItem(
                      text: "IOS App",
                      color: light.text,
                      onPress: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Social",
                      style: GoogleFonts.poppins(
                        color: light.text,
                        fontWeight: FontWeight.w500,
                        fontSize: titleSize,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        // Flexible(
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(left: 4),
                        //     child: Icon(UniconsLine.instagram,
                        //         color: light.text),
                        //   ),
                        // ),
                        Flexible(
                          child: NavbarItem(
                            text: "Instagram",
                            color: light.text,
                            onPress: () {
                              const String toLaunch =
                                  'https://www.instagram.com/peukancom';
                              _launchInBrowser(toLaunch);
                              // },
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "© Hak Cipta 2021 Peukan Company - Aceh, Indonesia.",
            style: GoogleFonts.poppins(
              color: light.text,
              // fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1.6,
            ),
          ),
        ],
      );

  mobileFooter() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            child: Image.asset(
              "assets/logo.png",
              height: 120,
            ),
            onTap: () {
              Get.toNamed("/");
            },
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Company",
                      style: GoogleFonts.poppins(
                        color: light.text,
                        fontWeight: FontWeight.w500,
                        fontSize: h4,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    NavbarItem(
                      text: "Peukan Store",
                      color: light.text,
                      onPress: () {
                        Get.toNamed("/store");
                      },
                    ),
                    NavbarItem(
                      text: "About Us",
                      color: light.text,
                      onPress: () {},
                    ),
                    NavbarItem(
                      text: "Patners",
                      color: light.text,
                      onPress: () {},
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Resources",
                      style: GoogleFonts.poppins(
                        color: light.text,
                        fontWeight: FontWeight.w500,
                        fontSize: h4,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    NavbarItem(
                      text: "Blog",
                      color: light.text,
                      onPress: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Download",
                      style: GoogleFonts.poppins(
                        color: light.text,
                        fontWeight: FontWeight.w500,
                        fontSize: h4,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    NavbarItem(
                      text: "Android App",
                      color: light.text,
                      onPress: () {},
                    ),
                    NavbarItem(
                      text: "IOS App",
                      color: light.text,
                      onPress: () {},
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Social",
                      style: GoogleFonts.poppins(
                        color: light.text,
                        fontWeight: FontWeight.w500,
                        fontSize: h4,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NavbarItem(
                          text: "Instagram",
                          color: light.text,
                          onPress: () {
                            const String toLaunch =
                                'https://www.instagram.com/peukancom';
                            _launchInBrowser(toLaunch);
                            // },
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "© Hak Cipta 2021 Peukan Company - Aceh, Indonesia.",
              style: GoogleFonts.poppins(
                color: light.text,
                // fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}