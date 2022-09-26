import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String timestampToYearMonthDay(DateTime datetime) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  String formatted = formatter.format(datetime);
  formatted = formatted + ' 21:00:00+00:00';
  return formatted;
}
