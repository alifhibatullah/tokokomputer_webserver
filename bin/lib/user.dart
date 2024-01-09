import 'dart:convert';
import 'controller.dart';

class User {
  final int idUser;
  final String? nama;
  final String? profesi;
  final String? email;
  final int roleId;
  final int isActive;
  String? tanggalInput;
  String? modified;

  User({
    required this.idUser,
    required this.nama,
    required this.profesi,
    required this.email,
    required this.roleId,
    required this.isActive,
    required this.tanggalInput,
    required this.modified,
  });

  Map<String, dynamic> toMap() => {
        'iduser': idUser,
        'nama': nama,
        'profesi': profesi,
        'email': email,
        'role_id': roleId,
        'is_active': isActive,
        'tanggal_input': tanggalInput,
        'modified': modified
      };

  final Controller ctrl = Controller();

  factory User.fromJson(Map<String, dynamic> json) => User(
        idUser: json['iduser'],
        nama: json['nama'],
        profesi: json['profesi'],
        email: json['email'],
        roleId: json['role_id'],
        isActive: 1,
        tanggalInput: json['tanggal_input'],
        modified: json['modified'],
      );
}

User userFromJson(String str) => User.fromJson(json.decode(str));
