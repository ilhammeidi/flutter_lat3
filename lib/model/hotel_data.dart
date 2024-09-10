class HotelObj {
  final String name;
  final String location;
  final String thumb;
  final double price;

  HotelObj({
    required this.name,
    required this.location,
    required this.thumb,
    required this.price
  });
}

final List hotelData = [
  HotelObj(name: 'Open Space', location: 'London', thumb: 'https://picsum.photos/300/300/?random=hotel_london', price: 80),
  HotelObj(name: 'Global Royal', location: 'Bandung', thumb: 'https://picsum.photos/300/300/?random=hotel_bandung', price: 180),
  HotelObj(name: 'Pasific Room', location: 'Milan', thumb: 'https://picsum.photos/300/300/?random=hotel_milan', price: 100),
  HotelObj(name: 'Red OYO', location: 'Jakarta', thumb: 'https://picsum.photos/300/300/?random=hotel_jkt', price: 56),
  HotelObj(name: 'Grand Lembang', location: 'Bandung', thumb: 'https://picsum.photos/300/300/?random=hotel_bdg', price: 78),
  HotelObj(name: 'Vitorio', location: 'Dallas', thumb: 'https://picsum.photos/300/300/?random=hotel_dallas', price: 120),
];