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
  PersonalDetails(
      name: "Ashish Mishra",
      jobpost: "DevOps",
      location: "kumaripati,lalitpur",
      email: "ashish@gmail.com",
      profileimg:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8&w=1000&q=80",
      contactno: 9843517915)
];
