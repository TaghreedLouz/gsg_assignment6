class FreelancerModel {
  final String? img;
  final String name;
  final String jobTitle;
  final String? description;
  final double rate;

  FreelancerModel(
      {this.img,
      required this.name,
      required this.jobTitle,
      this.description,
      required this.rate});
}
