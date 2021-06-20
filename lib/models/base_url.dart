class BaseUrl {

  BaseUrl();

  String? query;

  static String accessKey = "LByatnlbhvNMfz81FrNtmPAQ0Gtarwh0vPx0A8MgR08";
  String secretKey = "OLySyK-yLD2YXIQwiX8ZA667HoUKV72hFxlFlxO5LYs";

  static String urlAPI = "https://api.unsplash.com";

  String collectionsAPI = "https://api.unsplash.com/collections/?client_id=" +
      "photos/?client_id=YOUR_ACCESS_KEY";

  String collectionAmyDukes =
      "https://api.unsplash.com/collections/333903/photos/?client_id=$accessKey&query=vegetable";
  // collections/333903/vegetable

  set setQuery(query) {
    this.query = query;
  }

}
