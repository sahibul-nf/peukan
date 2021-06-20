part of 'widgets.dart';

class Corousel extends StatefulWidget {
  @override
  _CorouselState createState() => _CorouselState();
}

class _CorouselState extends State<Corousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            
          ],
          options: CarouselOptions(),
        ),
      ],
    );
  }
}
