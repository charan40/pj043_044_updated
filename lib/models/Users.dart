import 'package:flutter/material.dart';
class UserModel {
  // User getByName(String name) => User(name);
}
@immutable
class User{
  final int id;
  final String name;
  final String username;
  final int password;

  User(this.id, this.name, this.username, this.password);

}