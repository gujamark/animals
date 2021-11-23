class AnimalImages {
  static var monkey = Animal(
      "https://www.treehugger.com/thmb/vUJN2G0mPCTHLBiHxm7NhfZQMY4=/1250x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-464709893-40201995b8a24943baeab3ee1bbafd3d.jpg",
      "Pygmy Marmosets Are the World's Smallest Monkeys.Native to the Amazon Basin of South America, this tiny New World monkey is around five inches long and weighs about four ounces at adulthood.");

  static var zebra = Animal(
      "https://www.spreekbeurtenstartpagina.nl/wp-content/uploads/2020/09/Werkstuk-over-de-Zebra.jpg",
      "Their black and white stripes are unique and are as distinctive as human fingerprints. When a foal is born, they have reddish-brown stripes which gradually become darker and change to black as they grow.");

  static var giraffe = Animal(
      "https://cdn.mos.cms.futurecdn.net/mEuBJTDhXuTfSKdLefzSKg-480-80.jpg",
      "Giraffes only need 5 to 30 minutes of sleep in a 24-hour period! They often achieve that in quick naps that may last only a minute or two at a time.");

  static var lion = Animal(
      "https://www.rtlnieuws.nl/sites/default/files/content/images/2019/07/28/The-Lion-King-OV-_st_1_jpg_sd-high_%C2%A9-2019-Disney-Enterprises-Inc-All-Rights-Reserved.jpg?itok=h6aWL0YO&width=1024&height=576&impolicy=semi_dynamic",
      "There are thought to be as few as 23,000 lions left in the wild. When you think there are around 415,000 wild African elephants, you realise lion numbers are incredibly low.");
}

class Animal {
  late String imageURL;
  late String description;

  Animal(this.imageURL, this.description);
}
