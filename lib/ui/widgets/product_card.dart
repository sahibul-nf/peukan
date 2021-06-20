part of 'widgets.dart';

class ProductCard extends StatelessWidget {
  final image;
  final name;
  final price;
  VoidCallback? onPress;

  var size = SizeInfo();
  var light = LightColor();

  ProductCard({Key? key, this.image, this.name, this.price, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width <= 1999 ? 420 : 440,
      width: MediaQuery.of(context).size.width <= 1999 ? 250 : 300,
      decoration: BoxDecoration(
          color: light.bg,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: light.text,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width <= 1999 ? 250 : 300,
            height: MediaQuery.of(context).size.width <= 1999 ? 280 : 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                this.image.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
              child: Text(
                this.name.toString(),
                style: GoogleFonts.poppins(
                  color: light.title,
                  fontSize: h4,
                  height: 1.6,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                this.price.toString(),
                style: GoogleFonts.poppins(
                  color: light.title,
                  fontSize: h3,
                  height: 1.6,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 0, right: 16, left: 16, top: 10),
            child: ElevatedButton(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                width: size.fullWidth(context),
                child: Center(
                  child: Text(
                    "Dapatkan Sekarang",
                    style: GoogleFonts.poppins(
                      color: light.bg,
                      fontSize: h5,
                      height: 1.6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: light.color2,
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: onPress,
            ),
          ),
        ],
      ),
    );
  }
}
