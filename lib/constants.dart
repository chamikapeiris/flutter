// COLORS
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff19459d);
const kEsoftColor = Color(0xff0024ff);
const kDarkGreyColor = Color(0xff3A3A3B);
const kGreyColor = Color(0xffAFAFAF);
const kBorderGrey = Color(0xffd6d6d6);
const kLightGreyColor = Color(0xfffafaff);

// DIMENS

// heights & widths
const double kButtonHeight = 45;

// padding
const double kPaddingTiny = 4;
const double kPaddingSmall = 8;
const double kPaddingNormal = 16;
const double kPaddingLarge = 32;

// margin
const double kMarginSmall = 8;
const double kMarginNormal = 16;
const double kMarginLarge = 32;

// radius
const double kCornerRadius = 10;
const int kBorderRadius = 10;

// elevation
const double kElevationGeneral = 2;

// TEXT STYLES
const TextStyle kTextStyleCourseCardTitle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

const TextStyle kTextStyleCourseCardTitleSmall =
TextStyle(fontSize: 12, fontWeight: FontWeight.bold);

const TextStyle kTextStyleBatchTitle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: kDarkGreyColor);

const TextStyle kTextStyleCourseCardDetails =
    TextStyle(color: kDarkGreyColor, fontSize: 12);

const TextStyle kTextStyleCourseTitle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none);

const TextStyle kTextStyleCourseTitleRegistration = TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, decoration: TextDecoration.none);

const TextStyle kTextStyleModule = TextStyle(
  fontSize: 14,
);

const TextStyle kTextStyleCompulsory = TextStyle(
  fontSize: 10,
);

const TextStyle kTextStyleBold = TextStyle(
  fontWeight: FontWeight.w600,
);

// INPUT BORDERS
const InputBorder kEnabledBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: kBorderGrey,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(kCornerRadius),
  ),
);

const InputBorder kFocusedBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: kPrimaryColor,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(kCornerRadius),
  ),
);

const InputBorder kErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.red,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(kCornerRadius),
  ),
);
