part of 'services.dart';

class WhatsAppSending {
  final String userPhoneNumber = '+6282178462749';
  final String message = "Halo Peukan.Com, saya mau order sayur sehat *Sawi Pagoda* mohon arahannya 😊";

  Future<void> launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: userPhoneNumber,
      text: message,
    );

    if (await canLaunch('$link')) {
      await launch('$link');
    } else {
      throw "Can't phone that number.";
    }
  }
}
