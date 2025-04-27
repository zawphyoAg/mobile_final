class Contact {
  final int? id;
  final String name;
  final String phoneNumber;
  final String? email;
  final String? address;
  final String? imagePath;

  Contact({
    this.id,
    required this.name,
    required this.phoneNumber,
    this.email,
    this.address,
    this.imagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'address': address,
      'imagePath': imagePath,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'],
      name: map['name'],
      phoneNumber: map['phoneNumber'],
      email: map['email'],
      address: map['address'],
      imagePath: map['imagePath'],
    );
  }

  Contact copyWith({
    int? id,
    String? name,
    String? phoneNumber,
    String? email,
    String? address,
    String? imagePath,
  }) {
    return Contact(
      id: id ?? this.id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      address: address ?? this.address,
      imagePath: imagePath ?? this.imagePath,
    );
  }
}
