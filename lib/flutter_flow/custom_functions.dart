import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime getThreeDaysLater() {
  return DateTime.now().add(const Duration(days: 3));
}

String ddaycal(DateTime? deadline) {
  // 마감일 데이터가 없을 경우
  if (deadline == null) return '마감없음';

  // 현재 시간과 마감일 시간을 '일(Day)' 기준으로 맞추기 위해 시/분/초 제거
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final target = DateTime(deadline.year, deadline.month, deadline.day);

  // 날짜 차이 계산
  final difference = target.difference(today).inDays;

  // D-Day 문자열 반환
  if (difference > 0) {
    return 'D-$difference'; // 예: D-3
  } else if (difference == 0) {
    return 'D-Day'; // 당일일 경우
  } else {
    return '마감'; // 기한이 지났을 경우
  }
}
