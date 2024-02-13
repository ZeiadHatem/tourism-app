enum Season{
  winter,
  spring,
  summer,
  Autumn
}

enum TripType{

  exploration,
  recovery,
  activities,
  therapy
}

class Trips{

  final String id;
  final List<String> categories;
  final String title;
  final String imageurl;
  final List<String> activites;
  final List<String> programs;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamily;

  Trips(
      {
    required this.id,
    required this.categories,
    required this.title,
    required this.imageurl,
    required this.activites,
    required this.programs,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.isInSummer,
    required this.isInWinter,
    required this.isForFamily,
  });
}