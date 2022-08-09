import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// Widgets
const SizedBox verticalSpace = SizedBox(
  height: 25,
);

const SizedBox biggerSpace = SizedBox(
  height: 40,
);

// FIREBASE
FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
