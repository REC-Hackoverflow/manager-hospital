class User {
  final String username;
  final String name;
  final String profile_pic_url;
  final String phone_number;
  final String med_records_url;
  final List<Map<String, String>> booked_services;
  final String email;
  final String id_proof_url;

  User(
    this.username,
    this.name,
    this.profile_pic_url,
    this.phone_number,
    this.med_records_url,
    this.booked_services,
    this.email,
    this.id_proof_url,
  );
}
