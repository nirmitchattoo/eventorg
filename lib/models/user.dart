import 'package:json_annotation/json_annotation.dart';
import 'package:build_runner/build_runner.dart';
import 'package:json_serializable/json_serializable.dart';

class User{
  final String uid;
  final String username;
  final String email;

  User({required this.uid, required this.username, required this.email});
}