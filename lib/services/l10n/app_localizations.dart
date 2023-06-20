import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
    Locale('uz')
  ];

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello !'**
  String get hello;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'WELCOME BACK'**
  String get welcomeBack;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgotPassword;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'SIGN IN'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'SIGN UP'**
  String get signUp;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'WELCOME'**
  String get welcome;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have account?'**
  String get alreadyHaveAccount;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get addToCart;

  /// No description provided for @addAll.
  ///
  /// In en, this message translates to:
  /// **'Add all to my cart'**
  String get addAll;

  /// No description provided for @myCart.
  ///
  /// In en, this message translates to:
  /// **'MY CART'**
  String get myCart;

  /// No description provided for @promoCod.
  ///
  /// In en, this message translates to:
  /// **'Enter your promo code'**
  String get promoCod;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total:'**
  String get total;

  /// No description provided for @checkOut.
  ///
  /// In en, this message translates to:
  /// **'CHECK OUT:'**
  String get checkOut;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @chair.
  ///
  /// In en, this message translates to:
  /// **'Chair'**
  String get chair;

  /// No description provided for @table.
  ///
  /// In en, this message translates to:
  /// **'Table'**
  String get table;

  /// No description provided for @armchair.
  ///
  /// In en, this message translates to:
  /// **'Armchair'**
  String get armchair;

  /// No description provided for @bed.
  ///
  /// In en, this message translates to:
  /// **'Bed'**
  String get bed;

  /// No description provided for @lamb.
  ///
  /// In en, this message translates to:
  /// **'Lamb'**
  String get lamb;

  /// No description provided for @make.
  ///
  /// In en, this message translates to:
  /// **'MAKE YOUR'**
  String get make;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'HOME BEAUTIFUL'**
  String get home;

  /// No description provided for @theIntroText.
  ///
  /// In en, this message translates to:
  /// **'The best simple place where you discover most wonderful furnitures and make your home beautiful'**
  String get theIntroText;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @shippingAddress.
  ///
  /// In en, this message translates to:
  /// **'Shipping Address'**
  String get shippingAddress;

  /// No description provided for @useAsTheShippingAddress.
  ///
  /// In en, this message translates to:
  /// **'Use as the shipping address'**
  String get useAsTheShippingAddress;

  /// No description provided for @checkOutWithLine.
  ///
  /// In en, this message translates to:
  /// **'CHECK-OUT'**
  String get checkOutWithLine;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order:'**
  String get order;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery:'**
  String get delivery;

  /// No description provided for @submitOrder.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT ORDER'**
  String get submitOrder;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'SUCCESS!'**
  String get success;

  /// No description provided for @yourOrderWill.
  ///
  /// In en, this message translates to:
  /// **'Your order will be delivered soon.\nThank you for choosing our app!'**
  String get yourOrderWill;

  /// No description provided for @trackYourOrder.
  ///
  /// In en, this message translates to:
  /// **'TRACK YOUR ORDERS'**
  String get trackYourOrder;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'BACK TO HOME'**
  String get backToHome;

  /// No description provided for @ratingAndReview.
  ///
  /// In en, this message translates to:
  /// **'RATING & REVIEW'**
  String get ratingAndReview;

  /// No description provided for @minimalStand.
  ///
  /// In en, this message translates to:
  /// **'Minimal Stand'**
  String get minimalStand;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'reviews'**
  String get reviews;

  /// No description provided for @writeReviews.
  ///
  /// In en, this message translates to:
  /// **'Write a review'**
  String get writeReviews;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @myReviews.
  ///
  /// In en, this message translates to:
  /// **'My reviews'**
  String get myReviews;

  /// No description provided for @reviewsItems.
  ///
  /// In en, this message translates to:
  /// **'Reviews for items'**
  String get reviewsItems;

  /// No description provided for @helpCenter.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter;

  /// No description provided for @faqContact.
  ///
  /// In en, this message translates to:
  /// **'FAQ) Contact'**
  String get faqContact;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get canceled;

  /// No description provided for @orderNo.
  ///
  /// In en, this message translates to:
  /// **'Order '**
  String get orderNo;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity: '**
  String get quantity;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount: '**
  String get totalAmount;

  /// No description provided for @detail.
  ///
  /// In en, this message translates to:
  /// **'Detail'**
  String get detail;

  /// No description provided for @discover.
  ///
  /// In en, this message translates to:
  /// **'Discover hot sale furnitures this week.'**
  String get discover;

  /// No description provided for @loremIpsum.
  ///
  /// In en, this message translates to:
  /// **'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in\narcu adipiscing nec. Turpis pretium\net in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. '**
  String get loremIpsum;

  /// No description provided for @hot.
  ///
  /// In en, this message translates to:
  /// **'HOT!'**
  String get hot;

  /// No description provided for @newText.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newText;

  /// No description provided for @beautiful.
  ///
  /// In en, this message translates to:
  /// **'BEAUTIFUL'**
  String get beautiful;

  /// No description provided for @favorite.
  ///
  /// In en, this message translates to:
  /// **'FAVORITE'**
  String get favorite;

  /// No description provided for @coffeeTable.
  ///
  /// In en, this message translates to:
  /// **'Coffee Table'**
  String get coffeeTable;

  /// No description provided for @coffeeChair.
  ///
  /// In en, this message translates to:
  /// **'Coffee Chair'**
  String get coffeeChair;

  /// No description provided for @minimalDesk.
  ///
  /// In en, this message translates to:
  /// **'Minimal Desk'**
  String get minimalDesk;

  /// No description provided for @minimalLamp.
  ///
  /// In en, this message translates to:
  /// **'Minimal Lamp'**
  String get minimalLamp;

  /// No description provided for @data.
  ///
  /// In en, this message translates to:
  /// **'20/03/2020'**
  String get data;

  /// No description provided for @quantityNum.
  ///
  /// In en, this message translates to:
  /// **'03'**
  String get quantityNum;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'\$150'**
  String get price;

  /// No description provided for @makeHome.
  ///
  /// In en, this message translates to:
  /// **'Make home'**
  String get makeHome;

  /// No description provided for @brunoFernandes.
  ///
  /// In en, this message translates to:
  /// **'Bruno Fernandes'**
  String get brunoFernandes;

  /// No description provided for @appBarCheckOut.
  ///
  /// In en, this message translates to:
  /// **'CHECK-OUT'**
  String get appBarCheckOut;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'NOTIFICATION'**
  String get notification;

  /// No description provided for @addAddress.
  ///
  /// In en, this message translates to:
  /// **'Add Address'**
  String get addAddress;

  /// No description provided for @updateAddress.
  ///
  /// In en, this message translates to:
  /// **'Update Address'**
  String get updateAddress;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
    case 'uz': return AppLocalizationsUz();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
