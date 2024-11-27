class FlutterBelgiumSpeaker {
  final String name;
  final String? companyName;
  final String? companyUrl;
  final String profilePictureUrl;
  final String talkTitle;
  final String? talkDescription;

  const FlutterBelgiumSpeaker({
    required this.name,
    required this.profilePictureUrl,
    required this.talkTitle,
    this.companyName,
    this.companyUrl,
    this.talkDescription,
  });
}
