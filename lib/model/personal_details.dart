class PersonalDetails {
  final String name;
  final String jobpost;
  final String email;
  final String location;
  final String profileimg;
  final int contactno;

  PersonalDetails(
      {required this.name,
      required this.jobpost,
      required this.email,
      required this.location,
      required this.contactno,
      required this.profileimg});
}

List<PersonalDetails> details = [
  PersonalDetails(
      name: "Himal Malla",
      jobpost: "Flutter Developer",
      location: "hattiban,lalitpur",
      email: "himalmalla29@gmail.com",
      profileimg:
          "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
      contactno: 9843517915),
];
