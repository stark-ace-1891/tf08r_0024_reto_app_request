class FakeData {
  Future<List<Map<String, dynamic>>> getPlaces() async {
    return [
      {
        "name": "Dorathy Nelson",
        "image":
            "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "date": "09 Jan 2020, 8am - 10am",
        "online": true,
      },
      {
        "name": "Carl Pepe",
        "image":
            "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "date": "09 Jan 2020, 11am - 02am",
        "online": true,
      },
      {
        "name": "Ora Murray",
        "image":
            "https://images.pexels.com/photos/789822/pexels-photo-789822.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "date": "10 Jan 2020, 9am - 10am",
        "online": false,
      },
      // {
      //   "name": "Dorathy Nelson",
      //   "image":
      //       "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      //   "date": "09 Jan 2020, 8am - 10am",
      //   "online": false,
      // },
    ];
  }
}
