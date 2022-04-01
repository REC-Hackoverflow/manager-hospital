class Hospital {
  final List<Map<String, String>> current_services;
  final String email;
  final List<String> hospital_picture_url;
  final String name;
  final String phone_number;
  final List<Map<String, String>> services;
  final List<String> services_categories;

  Hospital(this.current_services, this.email, this.hospital_picture_url,
      this.name, this.phone_number, this.services, this.services_categories);
}
