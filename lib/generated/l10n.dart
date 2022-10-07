// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `en`
  String get _locale {
    return Intl.message(
      'en',
      name: '_locale',
      desc: '',
      args: [],
    );
  }

  /// `Be-Pass`
  String get app_name {
    return Intl.message(
      'Be-Pass',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `Change the app language.\nWe recommend resetting the app\nafter changing the language`
  String get change_the_app_language_we_recommend_resetting_the_app {
    return Intl.message(
      'Change the app language.\nWe recommend resetting the app\nafter changing the language',
      name: 'change_the_app_language_we_recommend_resetting_the_app',
      desc: '',
      args: [],
    );
  }

  /// `Find Professionals`
  String get find_professionals {
    return Intl.message(
      'Find Professionals',
      name: 'find_professionals',
      desc: '',
      args: [],
    );
  }

  /// `That Be-Pass tailors especially for you`
  String get that_bepass_tailors_especially_for_you {
    return Intl.message(
      'That Be-Pass tailors especially for you',
      name: 'that_bepass_tailors_especially_for_you',
      desc: '',
      args: [],
    );
  }

  /// `Be-Smart, Be-In. Be-Pass`
  String get be_smart_be_in_be_pass {
    return Intl.message(
      'Be-Smart, Be-In. Be-Pass',
      name: 'be_smart_be_in_be_pass',
      desc: '',
      args: [],
    );
  }

  /// `Select a service`
  String get select_a_service_mobile {
    return Intl.message(
      'Select a service',
      name: 'select_a_service_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Username / Email`
  String get username_email {
    return Intl.message(
      'Username / Email',
      name: 'username_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Change the app language`
  String get change_the_app_language {
    return Intl.message(
      'Change the app language',
      name: 'change_the_app_language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `עברית`
  String get hebrew {
    return Intl.message(
      'עברית',
      name: 'hebrew',
      desc: '',
      args: [],
    );
  }

  /// `I agree to`
  String get i_agree_to {
    return Intl.message(
      'I agree to',
      name: 'i_agree_to',
      desc: '',
      args: [],
    );
  }

  /// `<u> Terms of Service<u>`
  String get terms_of_service_underlined {
    return Intl.message(
      '<u> Terms of Service<u>',
      name: 'terms_of_service_underlined',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get terms_of_service {
    return Intl.message(
      'Terms of Service',
      name: 'terms_of_service',
      desc: '',
      args: [],
    );
  }

  /// `,&amp;`
  String get and {
    return Intl.message(
      ',&amp;',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `<u> Privacy Policy<u>`
  String get privacy_policy_underlined {
    return Intl.message(
      '<u> Privacy Policy<u>',
      name: 'privacy_policy_underlined',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgot_your_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_your_password',
      desc: '',
      args: [],
    );
  }

  /// `New on our platform?`
  String get new_on_our_platform {
    return Intl.message(
      'New on our platform?',
      name: 'new_on_our_platform',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get create_an_account {
    return Intl.message(
      'Create an account',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign in instead`
  String get sign_in_instead {
    return Intl.message(
      'Sign in instead',
      name: 'sign_in_instead',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign in with Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Application Version`
  String get application_version {
    return Intl.message(
      'Application Version',
      name: 'application_version',
      desc: '',
      args: [],
    );
  }

  /// `Coming soon!`
  String get coming_soon {
    return Intl.message(
      'Coming soon!',
      name: 'coming_soon',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `B-Card`
  String get b_card {
    return Intl.message(
      'B-Card',
      name: 'b_card',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get date_of_birth {
    return Intl.message(
      'Date of birth',
      name: 'date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Publish`
  String get publish {
    return Intl.message(
      'Publish',
      name: 'publish',
      desc: '',
      args: [],
    );
  }

  /// `No results…`
  String get no_results {
    return Intl.message(
      'No results…',
      name: 'no_results',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get instagram {
    return Intl.message(
      'Instagram',
      name: 'instagram',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get twitter {
    return Intl.message(
      'Twitter',
      name: 'twitter',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get no_internet_connection {
    return Intl.message(
      'No internet connection',
      name: 'no_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Image deleted`
  String get image_deleted {
    return Intl.message(
      'Image deleted',
      name: 'image_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get sunday {
    return Intl.message(
      'Sunday',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Monday`
  String get monday {
    return Intl.message(
      'Monday',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message(
      'Tuesday',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message(
      'Wednesday',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get thursday {
    return Intl.message(
      'Thursday',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Friday`
  String get friday {
    return Intl.message(
      'Friday',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Saturday`
  String get saturday {
    return Intl.message(
      'Saturday',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get closed {
    return Intl.message(
      'Closed',
      name: 'closed',
      desc: '',
      args: [],
    );
  }

  /// `Set fixed hours at once`
  String get set_fixed_hours_at_once {
    return Intl.message(
      'Set fixed hours at once',
      name: 'set_fixed_hours_at_once',
      desc: '',
      args: [],
    );
  }

  /// `Add Hours`
  String get add_hours {
    return Intl.message(
      'Add Hours',
      name: 'add_hours',
      desc: '',
      args: [],
    );
  }

  /// `You have reached the hours limit\nMax is 5`
  String get you_have_reached_the_hours_limit_Max_is_5 {
    return Intl.message(
      'You have reached the hours limit\nMax is 5',
      name: 'you_have_reached_the_hours_limit_Max_is_5',
      desc: '',
      args: [],
    );
  }

  /// `Send Email`
  String get send_email {
    return Intl.message(
      'Send Email',
      name: 'send_email',
      desc: '',
      args: [],
    );
  }

  /// `To chat with this professional\nlogin is required`
  String get to_chat_with_this_professional_login_is_required {
    return Intl.message(
      'To chat with this professional\nlogin is required',
      name: 'to_chat_with_this_professional_login_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Can't send messages to this user`
  String get cant_send_messages_to_this_user {
    return Intl.message(
      'Can\'t send messages to this user',
      name: 'cant_send_messages_to_this_user',
      desc: '',
      args: [],
    );
  }

  /// `Enter your message`
  String get enter_your_message {
    return Intl.message(
      'Enter your message',
      name: 'enter_your_message',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Clear Chat`
  String get clear_chat {
    return Intl.message(
      'Clear Chat',
      name: 'clear_chat',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `View Contact`
  String get view_contact {
    return Intl.message(
      'View Contact',
      name: 'view_contact',
      desc: '',
      args: [],
    );
  }

  /// `Block Contact`
  String get block_contact {
    return Intl.message(
      'Block Contact',
      name: 'block_contact',
      desc: '',
      args: [],
    );
  }

  /// `Start Conversation`
  String get start_conversation {
    return Intl.message(
      'Start Conversation',
      name: 'start_conversation',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get search_field {
    return Intl.message(
      'Search...',
      name: 'search_field',
      desc: '',
      args: [],
    );
  }

  /// `An email has been sent to\nyour email address`
  String get an_email_has_been_sent_to_your_email_address {
    return Intl.message(
      'An email has been sent to\nyour email address',
      name: 'an_email_has_been_sent_to_your_email_address',
      desc: '',
      args: [],
    );
  }

  /// `The username/email or password is incorrect`
  String get the_username_email_or_password_is_incorrect {
    return Intl.message(
      'The username/email or password is incorrect',
      name: 'the_username_email_or_password_is_incorrect',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters, numbers and letters`
  String get password_must_be_at_least_6_characters {
    return Intl.message(
      'Password must be at least 6 characters, numbers and letters',
      name: 'password_must_be_at_least_6_characters',
      desc: '',
      args: [],
    );
  }

  /// `Username must be 3 to 14 characters`
  String get username_must_be_3_to_14_characters {
    return Intl.message(
      'Username must be 3 to 14 characters',
      name: 'username_must_be_3_to_14_characters',
      desc: '',
      args: [],
    );
  }

  /// `*Username is already taken`
  String get username_is_already_taken {
    return Intl.message(
      '*Username is already taken',
      name: 'username_is_already_taken',
      desc: '',
      args: [],
    );
  }

  /// `Invalid username`
  String get invalid_username {
    return Intl.message(
      'Invalid username',
      name: 'invalid_username',
      desc: '',
      args: [],
    );
  }

  /// `*Email is already taken`
  String get email_is_already_taken {
    return Intl.message(
      '*Email is already taken',
      name: 'email_is_already_taken',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get invalid_email_address {
    return Intl.message(
      'Invalid email address',
      name: 'invalid_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Please use only letters and numbers without space`
  String get please_enter_only_letters_and_numbers_without_space {
    return Intl.message(
      'Please use only letters and numbers without space',
      name: 'please_enter_only_letters_and_numbers_without_space',
      desc: '',
      args: [],
    );
  }

  /// `No user with such email`
  String get no_user_with_such_email {
    return Intl.message(
      'No user with such email',
      name: 'no_user_with_such_email',
      desc: '',
      args: [],
    );
  }

  /// `Back to login`
  String get back_to_login {
    return Intl.message(
      'Back to login',
      name: 'back_to_login',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get send_reset_link {
    return Intl.message(
      'Send Reset Link',
      name: 'send_reset_link',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and we'll send you instructions\nto reset your password.`
  String get enter_your_email_and_we_send_you_instructions {
    return Intl.message(
      'Enter your email and we\'ll send you instructions\nto reset your password.',
      name: 'enter_your_email_and_we_send_you_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Clear all`
  String get clear_all {
    return Intl.message(
      'Clear all',
      name: 'clear_all',
      desc: '',
      args: [],
    );
  }

  /// `Price Range`
  String get price_range {
    return Intl.message(
      'Price Range',
      name: 'price_range',
      desc: '',
      args: [],
    );
  }

  /// `Starting from `
  String get starting_from {
    return Intl.message(
      'Starting from ',
      name: 'starting_from',
      desc: '',
      args: [],
    );
  }

  /// `City or State`
  String get city_or_state {
    return Intl.message(
      'City or State',
      name: 'city_or_state',
      desc: '',
      args: [],
    );
  }

  /// `Search profession`
  String get search_profession_filters {
    return Intl.message(
      'Search profession',
      name: 'search_profession_filters',
      desc: '',
      args: [],
    );
  }

  /// `Suggestions`
  String get suggestions_filters {
    return Intl.message(
      'Suggestions',
      name: 'suggestions_filters',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating_filters {
    return Intl.message(
      'Rating',
      name: 'rating_filters',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Working Hours`
  String get working_hours {
    return Intl.message(
      'Working Hours',
      name: 'working_hours',
      desc: '',
      args: [],
    );
  }

  /// `Contact Now`
  String get contact_now {
    return Intl.message(
      'Contact Now',
      name: 'contact_now',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Certificates`
  String get certificates {
    return Intl.message(
      'Certificates',
      name: 'certificates',
      desc: '',
      args: [],
    );
  }

  /// `Prices`
  String get prices {
    return Intl.message(
      'Prices',
      name: 'prices',
      desc: '',
      args: [],
    );
  }

  /// `Main Image`
  String get main_image {
    return Intl.message(
      'Main Image',
      name: 'main_image',
      desc: '',
      args: [],
    );
  }

  /// `Logo`
  String get logo {
    return Intl.message(
      'Logo',
      name: 'logo',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Allowed PNG, JPG, or JPEG. max size of 5mb`
  String get allowed_png_jpg_or_jpeg_max_size_of_5mb {
    return Intl.message(
      'Allowed PNG, JPG, or JPEG. max size of 5mb',
      name: 'allowed_png_jpg_or_jpeg_max_size_of_5mb',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message(
      'First Name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Professions`
  String get professions {
    return Intl.message(
      'Professions',
      name: 'professions',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Bio`
  String get bio {
    return Intl.message(
      'Bio',
      name: 'bio',
      desc: '',
      args: [],
    );
  }

  /// `Ex. Here you can introduce yourself better\nWrite couple of words`
  String get ex_here_you_can_introduce_yourself_better_write_couple_of_words {
    return Intl.message(
      'Ex. Here you can introduce yourself better\nWrite couple of words',
      name: 'ex_here_you_can_introduce_yourself_better_write_couple_of_words',
      desc: '',
      args: [],
    );
  }

  /// `Your email is not confirmed. Please check your inbox.`
  String get your_email_is_not_confirmed_please_check_your_inbox {
    return Intl.message(
      'Your email is not confirmed. Please check your inbox.',
      name: 'your_email_is_not_confirmed_please_check_your_inbox',
      desc: '',
      args: [],
    );
  }

  /// `Resend confirmation`
  String get resend_confirmation {
    return Intl.message(
      'Resend confirmation',
      name: 'resend_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get save_changes {
    return Intl.message(
      'Save Changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Account Settings`
  String get account_settings {
    return Intl.message(
      'Account Settings',
      name: 'account_settings',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get old_password {
    return Intl.message(
      'Old Password',
      name: 'old_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Retype New Password`
  String get retype_new_password {
    return Intl.message(
      'Retype New Password',
      name: 'retype_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Social`
  String get social {
    return Intl.message(
      'Social',
      name: 'social',
      desc: '',
      args: [],
    );
  }

  /// `Social Links`
  String get social_links {
    return Intl.message(
      'Social Links',
      name: 'social_links',
      desc: '',
      args: [],
    );
  }

  /// `LinkedIn`
  String get linkedin {
    return Intl.message(
      'LinkedIn',
      name: 'linkedin',
      desc: '',
      args: [],
    );
  }

  /// `TikTok`
  String get tiktok {
    return Intl.message(
      'TikTok',
      name: 'tiktok',
      desc: '',
      args: [],
    );
  }

  /// `Quora`
  String get quora {
    return Intl.message(
      'Quora',
      name: 'quora',
      desc: '',
      args: [],
    );
  }

  /// `Service 1`
  String get service_1 {
    return Intl.message(
      'Service 1',
      name: 'service_1',
      desc: '',
      args: [],
    );
  }

  /// `Select Image`
  String get select_image {
    return Intl.message(
      'Select Image',
      name: 'select_image',
      desc: '',
      args: [],
    );
  }

  /// `Type of service`
  String get type_of_service {
    return Intl.message(
      'Type of service',
      name: 'type_of_service',
      desc: '',
      args: [],
    );
  }

  /// `Explanation`
  String get explanation {
    return Intl.message(
      'Explanation',
      name: 'explanation',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Add Price`
  String get add_price {
    return Intl.message(
      'Add Price',
      name: 'add_price',
      desc: '',
      args: [],
    );
  }

  /// `Delete Service`
  String get delete_service {
    return Intl.message(
      'Delete Service',
      name: 'delete_service',
      desc: '',
      args: [],
    );
  }

  /// `Add Service`
  String get add_service {
    return Intl.message(
      'Add Service',
      name: 'add_service',
      desc: '',
      args: [],
    );
  }

  /// `Select profession`
  String get select_profession {
    return Intl.message(
      'Select profession',
      name: 'select_profession',
      desc: '',
      args: [],
    );
  }

  /// `Upload File`
  String get upload_file {
    return Intl.message(
      'Upload File',
      name: 'upload_file',
      desc: '',
      args: [],
    );
  }

  /// `Tell us about this certificate`
  String get tell_us_about_this_certificate {
    return Intl.message(
      'Tell us about this certificate',
      name: 'tell_us_about_this_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Delete Certificate`
  String get delete_certificate {
    return Intl.message(
      'Delete Certificate',
      name: 'delete_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Exp.`
  String get exp {
    return Intl.message(
      'Exp.',
      name: 'exp',
      desc: '',
      args: [],
    );
  }

  /// `Add Certificate`
  String get add_certificate {
    return Intl.message(
      'Add Certificate',
      name: 'add_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Add Gallery`
  String get add_gallery {
    return Intl.message(
      'Add Gallery',
      name: 'add_gallery',
      desc: '',
      args: [],
    );
  }

  /// `We recommend you to hide your ID\non the certificate before the upload.`
  String get notice_we_recommend_you_to_hide_the_id_on_the_certificate {
    return Intl.message(
      'We recommend you to hide your ID\non the certificate before the upload.',
      name: 'notice_we_recommend_you_to_hide_the_id_on_the_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Profession`
  String get profession {
    return Intl.message(
      'Profession',
      name: 'profession',
      desc: '',
      args: [],
    );
  }

  /// `Notice:`
  String get notice {
    return Intl.message(
      'Notice:',
      name: 'notice',
      desc: '',
      args: [],
    );
  }

  /// `The following information will be public and visible to everyone.`
  String get the_following_information_will_be_public_and_visible_to_everyone {
    return Intl.message(
      'The following information will be public and visible to everyone.',
      name: 'the_following_information_will_be_public_and_visible_to_everyone',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `Let's Talk`
  String get lets_talk {
    return Intl.message(
      'Let\'s Talk',
      name: 'lets_talk',
      desc: '',
      args: [],
    );
  }

  /// `GET IN TOUCH`
  String get get_in_touch {
    return Intl.message(
      'GET IN TOUCH',
      name: 'get_in_touch',
      desc: '',
      args: [],
    );
  }

  /// `Delete Gallery`
  String get delete_gallery {
    return Intl.message(
      'Delete Gallery',
      name: 'delete_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Certificate Name`
  String get certificate_name {
    return Intl.message(
      'Certificate Name',
      name: 'certificate_name',
      desc: '',
      args: [],
    );
  }

  /// `YEARS`
  String get years {
    return Intl.message(
      'YEARS',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `CERTIFICATION: `
  String get certification {
    return Intl.message(
      'CERTIFICATION: ',
      name: 'certification',
      desc: '',
      args: [],
    );
  }

  /// `EXPERIENCE: `
  String get experience {
    return Intl.message(
      'EXPERIENCE: ',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Get Started Now`
  String get get_started_now {
    return Intl.message(
      'Get Started Now',
      name: 'get_started_now',
      desc: '',
      args: [],
    );
  }

  /// `Top Rated`
  String get top_rated {
    return Intl.message(
      'Top Rated',
      name: 'top_rated',
      desc: '',
      args: [],
    );
  }

  /// `Let's do it!`
  String get lets_do_it {
    return Intl.message(
      'Let\'s do it!',
      name: 'lets_do_it',
      desc: '',
      args: [],
    );
  }

  /// `Build your business card`
  String get build_your_business_card {
    return Intl.message(
      'Build your business card',
      name: 'build_your_business_card',
      desc: '',
      args: [],
    );
  }

  /// `Profile & Settings`
  String get profile_and_settings {
    return Intl.message(
      'Profile & Settings',
      name: 'profile_and_settings',
      desc: '',
      args: [],
    );
  }

  /// `admin`
  String get admin {
    return Intl.message(
      'admin',
      name: 'admin',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully logged in as admin. Now you\ncan start to explore!`
  String get you_have_successfully_logged_in_as_admin {
    return Intl.message(
      'You have successfully logged in as admin. Now you\ncan start to explore!',
      name: 'you_have_successfully_logged_in_as_admin',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Be-Pass! 👋🏻`
  String get welcome_to_be_pass {
    return Intl.message(
      'Welcome to Be-Pass! 👋🏻',
      name: 'welcome_to_be_pass',
      desc: '',
      args: [],
    );
  }

  /// `Please sign-in to your account and start\nthe adventure`
  String get please_sign_in_to_your_account_and_start_the_adventure {
    return Intl.message(
      'Please sign-in to your account and start\nthe adventure',
      name: 'please_sign_in_to_your_account_and_start_the_adventure',
      desc: '',
      args: [],
    );
  }

  /// `Adventure starts here 😍`
  String get adventure_starts_here {
    return Intl.message(
      'Adventure starts here 😍',
      name: 'adventure_starts_here',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Be-Pass!\nMake your app management easy and fun!`
  String get welcome_to_be_pass_make_your_app_management_easy_and_fun {
    return Intl.message(
      'Welcome to Be-Pass!\nMake your app management easy and fun!',
      name: 'welcome_to_be_pass_make_your_app_management_easy_and_fun',
      desc: '',
      args: [],
    );
  }

  /// `<u> Terms of Service<u> & <u> Privacy Policy<u>`
  String get terms_of_service_and_privacy_policy {
    return Intl.message(
      '<u> Terms of Service<u> & <u> Privacy Policy<u>',
      name: 'terms_of_service_and_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Create your card`
  String get create_your_card {
    return Intl.message(
      'Create your card',
      name: 'create_your_card',
      desc: '',
      args: [],
    );
  }

  /// `So, what are you waiting for?`
  String get so_what_are_you_waiting_for {
    return Intl.message(
      'So, what are you waiting for?',
      name: 'so_what_are_you_waiting_for',
      desc: '',
      args: [],
    );
  }

  /// `It’s easy!\nAll you have to do is fill in the details\nAnd let clients choose you!`
  String get its_easy_all_you_have_to_do_is_fill_in_the_details {
    return Intl.message(
      'It’s easy!\nAll you have to do is fill in the details\nAnd let clients choose you!',
      name: 'its_easy_all_you_have_to_do_is_fill_in_the_details',
      desc: '',
      args: [],
    );
  }

  /// `Business Card`
  String get business_card {
    return Intl.message(
      'Business Card',
      name: 'business_card',
      desc: '',
      args: [],
    );
  }

  /// `Find Your`
  String get find_your {
    return Intl.message(
      'Find Your',
      name: 'find_your',
      desc: '',
      args: [],
    );
  }

  /// `Desired`
  String get desired {
    return Intl.message(
      'Desired',
      name: 'desired',
      desc: '',
      args: [],
    );
  }

  /// `Professional`
  String get professional {
    return Intl.message(
      'Professional',
      name: 'professional',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contact_us {
    return Intl.message(
      'Contact us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `Wonderful opportunities for professionals from all fields`
  String get wonderful_opportunities_for_professionals_from_all_fields {
    return Intl.message(
      'Wonderful opportunities for professionals from all fields',
      name: 'wonderful_opportunities_for_professionals_from_all_fields',
      desc: '',
      args: [],
    );
  }

  /// `Create Your Profile`
  String get create_your_profile {
    return Intl.message(
      'Create Your Profile',
      name: 'create_your_profile',
      desc: '',
      args: [],
    );
  }

  /// `Thank You!`
  String get thank_you {
    return Intl.message(
      'Thank You!',
      name: 'thank_you',
      desc: '',
      args: [],
    );
  }

  /// `Your business card has been successfully\npublished\nAnd it will be visible to everyone ASAP`
  String get your_business_card_has_been_successfully_published {
    return Intl.message(
      'Your business card has been successfully\npublished\nAnd it will be visible to everyone ASAP',
      name: 'your_business_card_has_been_successfully_published',
      desc: '',
      args: [],
    );
  }

  /// `Feedbacks`
  String get feedbacks {
    return Intl.message(
      'Feedbacks',
      name: 'feedbacks',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe`
  String get subscribe {
    return Intl.message(
      'Subscribe',
      name: 'subscribe',
      desc: '',
      args: [],
    );
  }

  /// `100% Trusted`
  String get trusted {
    return Intl.message(
      '100% Trusted',
      name: 'trusted',
      desc: '',
      args: [],
    );
  }

  /// `Trusted & Popular Professionals Portal`
  String get trusted_and_Popular {
    return Intl.message(
      'Trusted & Popular Professionals Portal',
      name: 'trusted_and_Popular',
      desc: '',
      args: [],
    );
  }

  /// `Download The Be-Pass Mobile App`
  String get download_the_be_pass_mobile_app {
    return Intl.message(
      'Download The Be-Pass Mobile App',
      name: 'download_the_be_pass_mobile_app',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe Newsletter`
  String get subscribe_newsletter {
    return Intl.message(
      'Subscribe Newsletter',
      name: 'subscribe_newsletter',
      desc: '',
      args: [],
    );
  }

  /// `Get notified about the next update`
  String get get_notified_about_the_next_update {
    return Intl.message(
      'Get notified about the next update',
      name: 'get_notified_about_the_next_update',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get enter_your_email {
    return Intl.message(
      'Enter Your Email',
      name: 'enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Copyright © 2022 · Be-Pass.`
  String get copyright_be_pass {
    return Intl.message(
      'Copyright © 2022 · Be-Pass.',
      name: 'copyright_be_pass',
      desc: '',
      args: [],
    );
  }

  /// `Credits`
  String get credits {
    return Intl.message(
      'Credits',
      name: 'credits',
      desc: '',
      args: [],
    );
  }

  /// `Join us`
  String get join_us {
    return Intl.message(
      'Join us',
      name: 'join_us',
      desc: '',
      args: [],
    );
  }

  /// `Find`
  String get find_website {
    return Intl.message(
      'Find',
      name: 'find_website',
      desc: '',
      args: [],
    );
  }

  /// `Professionals`
  String get professionals_website {
    return Intl.message(
      'Professionals',
      name: 'professionals_website',
      desc: '',
      args: [],
    );
  }

  /// `Especially For You`
  String get especially_for_you_website {
    return Intl.message(
      'Especially For You',
      name: 'especially_for_you_website',
      desc: '',
      args: [],
    );
  }

  /// `Select a service`
  String get select_a_service_website_search {
    return Intl.message(
      'Select a service',
      name: 'select_a_service_website_search',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Price (avg.)`
  String get price_avg {
    return Intl.message(
      'Price (avg.)',
      name: 'price_avg',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `See more`
  String get see_more {
    return Intl.message(
      'See more',
      name: 'see_more',
      desc: '',
      args: [],
    );
  }

  /// `AM`
  String get am {
    return Intl.message(
      'AM',
      name: 'am',
      desc: '',
      args: [],
    );
  }

  /// `PM`
  String get pm {
    return Intl.message(
      'PM',
      name: 'pm',
      desc: '',
      args: [],
    );
  }

  /// `Working area`
  String get working_area {
    return Intl.message(
      'Working area',
      name: 'working_area',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your email`
  String get confirm_your_email {
    return Intl.message(
      'Confirm your email',
      name: 'confirm_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Rating Breakdown`
  String get rating_breakdown {
    return Intl.message(
      'Rating Breakdown',
      name: 'rating_breakdown',
      desc: '',
      args: [],
    );
  }

  /// `Deadlines`
  String get deadlines {
    return Intl.message(
      'Deadlines',
      name: 'deadlines',
      desc: '',
      args: [],
    );
  }

  /// `Quality & Skills`
  String get quality_and_skills {
    return Intl.message(
      'Quality & Skills',
      name: 'quality_and_skills',
      desc: '',
      args: [],
    );
  }

  /// `Communication`
  String get communication {
    return Intl.message(
      'Communication',
      name: 'communication',
      desc: '',
      args: [],
    );
  }

  /// `Attitude`
  String get attitude {
    return Intl.message(
      'Attitude',
      name: 'attitude',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get read_more {
    return Intl.message(
      'Read more',
      name: 'read_more',
      desc: '',
      args: [],
    );
  }

  /// `Helpful?`
  String get helpful {
    return Intl.message(
      'Helpful?',
      name: 'helpful',
      desc: '',
      args: [],
    );
  }

  /// `See more feedbacks`
  String get see_more_feedbacks {
    return Intl.message(
      'See more feedbacks',
      name: 'see_more_feedbacks',
      desc: '',
      args: [],
    );
  }

  /// `Leave Feedback`
  String get leave_feedback {
    return Intl.message(
      'Leave Feedback',
      name: 'leave_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Rate Your Experience`
  String get rate_your_experience {
    return Intl.message(
      'Rate Your Experience',
      name: 'rate_your_experience',
      desc: '',
      args: [],
    );
  }

  /// `Are you satisfied with the service?`
  String get are_you_satisfied_with_the_service {
    return Intl.message(
      'Are you satisfied with the service?',
      name: 'are_you_satisfied_with_the_service',
      desc: '',
      args: [],
    );
  }

  /// `TOTAL SCORE: `
  String get total_score {
    return Intl.message(
      'TOTAL SCORE: ',
      name: 'total_score',
      desc: '',
      args: [],
    );
  }

  /// `Share your experience`
  String get share_your_experience {
    return Intl.message(
      'Share your experience',
      name: 'share_your_experience',
      desc: '',
      args: [],
    );
  }

  /// `Ex. Great job, thanks!`
  String get ex_Great_job_thanks {
    return Intl.message(
      'Ex. Great job, thanks!',
      name: 'ex_Great_job_thanks',
      desc: '',
      args: [],
    );
  }

  /// `Be-Pass reserves the right not to publish the feedback`
  String get be_pass_reserves_the_right_not_to_publish_the_feedback {
    return Intl.message(
      'Be-Pass reserves the right not to publish the feedback',
      name: 'be_pass_reserves_the_right_not_to_publish_the_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Verify your email ✉️`
  String get verify_your_email {
    return Intl.message(
      'Verify your email ✉️',
      name: 'verify_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Account activation link sent to your email`
  String get account_activation_link_sent_to_your_email {
    return Intl.message(
      'Account activation link sent to your email',
      name: 'account_activation_link_sent_to_your_email',
      desc: '',
      args: [],
    );
  }

  /// `address:`
  String get address {
    return Intl.message(
      'address:',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Please follow the link inside to continue.`
  String get please_follow_the_link_inside_to_continue {
    return Intl.message(
      'Please follow the link inside to continue.',
      name: 'please_follow_the_link_inside_to_continue',
      desc: '',
      args: [],
    );
  }

  /// `Resend Link`
  String get resend_link {
    return Intl.message(
      'Resend Link',
      name: 'resend_link',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password 🔐`
  String get reset_password {
    return Intl.message(
      'Reset Password 🔐',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Your new password must be different\nfrom previously used passwords`
  String
      get your_new_password_must_be_different_from_previously_used_passwords {
    return Intl.message(
      'Your new password must be different\nfrom previously used passwords',
      name:
          'your_new_password_must_be_different_from_previously_used_passwords',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Set New Password`
  String get set_new_password {
    return Intl.message(
      'Set New Password',
      name: 'set_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Back to profile`
  String get back_to_profile {
    return Intl.message(
      'Back to profile',
      name: 'back_to_profile',
      desc: '',
      args: [],
    );
  }

  /// `johndoe@gmail.com`
  String get johndoe_gmail_com {
    return Intl.message(
      'johndoe@gmail.com',
      name: 'johndoe_gmail_com',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and we will send you\ninstructions to reset your password.`
  String get enter_your_email_and_we_will_send_you_instructions {
    return Intl.message(
      'Enter your email and we will send you\ninstructions to reset your password.',
      name: 'enter_your_email_and_we_will_send_you_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password? 🔑`
  String get forgot_password_title {
    return Intl.message(
      'Forgot Password? 🔑',
      name: 'forgot_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Delete Category`
  String get delete_category {
    return Intl.message(
      'Delete Category',
      name: 'delete_category',
      desc: '',
      args: [],
    );
  }

  /// `Add Services`
  String get add_services {
    return Intl.message(
      'Add Services',
      name: 'add_services',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Ex. Personal Trainer`
  String get ex_personal_trainer {
    return Intl.message(
      'Ex. Personal Trainer',
      name: 'ex_personal_trainer',
      desc: '',
      args: [],
    );
  }

  /// `Ex. Group Training`
  String get ex_group_training {
    return Intl.message(
      'Ex. Group Training',
      name: 'ex_group_training',
      desc: '',
      args: [],
    );
  }

  /// `But for that, you need`
  String get but_for_that_you_need {
    return Intl.message(
      'But for that, you need',
      name: 'but_for_that_you_need',
      desc: '',
      args: [],
    );
  }

  /// `Business Owner?`
  String get business_owner {
    return Intl.message(
      'Business Owner?',
      name: 'business_owner',
      desc: '',
      args: [],
    );
  }

  /// `Create your personal business card\nShow your skills, your qualities\nAnd let clients choose you!`
  String get create_your_personal_business_card_show_your_skills {
    return Intl.message(
      'Create your personal business card\nShow your skills, your qualities\nAnd let clients choose you!',
      name: 'create_your_personal_business_card_show_your_skills',
      desc: '',
      args: [],
    );
  }

  /// `Want to chat with\nprofessionals?`
  String get want_to_chat_with_professionals {
    return Intl.message(
      'Want to chat with\nprofessionals?',
      name: 'want_to_chat_with_professionals',
      desc: '',
      args: [],
    );
  }

  /// `Chat, get to know the professional\nFind out if he or she fits your needs\nMake an appointment and let's roll!`
  String get chat_get_to_know_the_professional {
    return Intl.message(
      'Chat, get to know the professional\nFind out if he or she fits your needs\nMake an appointment and let\'s roll!',
      name: 'chat_get_to_know_the_professional',
      desc: '',
      args: [],
    );
  }

  /// `Add Social Media`
  String get add_social_media {
    return Intl.message(
      'Add Social Media',
      name: 'add_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Social Media Links`
  String get social_media_links {
    return Intl.message(
      'Social Media Links',
      name: 'social_media_links',
      desc: '',
      args: [],
    );
  }

  /// `Add link`
  String get add_link {
    return Intl.message(
      'Add link',
      name: 'add_link',
      desc: '',
      args: [],
    );
  }

  /// `Gallery View`
  String get gallery_view {
    return Intl.message(
      'Gallery View',
      name: 'gallery_view',
      desc: '',
      args: [],
    );
  }

  /// `photos`
  String get photos {
    return Intl.message(
      'photos',
      name: 'photos',
      desc: '',
      args: [],
    );
  }

  /// `Enter valid email address`
  String get enter_valid_email_address {
    return Intl.message(
      'Enter valid email address',
      name: 'enter_valid_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enter_your_name {
    return Intl.message(
      'Enter your name',
      name: 'enter_your_name',
      desc: '',
      args: [],
    );
  }

  /// `ISSUING ORGANIZATION: `
  String get issuing_organization {
    return Intl.message(
      'ISSUING ORGANIZATION: ',
      name: 'issuing_organization',
      desc: '',
      args: [],
    );
  }

  /// `more`
  String get more {
    return Intl.message(
      'more',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `My professions & Skills`
  String get my_professions_and_skills {
    return Intl.message(
      'My professions & Skills',
      name: 'my_professions_and_skills',
      desc: '',
      args: [],
    );
  }

  /// `Age: `
  String get age_be_card {
    return Intl.message(
      'Age: ',
      name: 'age_be_card',
      desc: '',
      args: [],
    );
  }

  /// `Introduce yourself`
  String get introduce_yourself {
    return Intl.message(
      'Introduce yourself',
      name: 'introduce_yourself',
      desc: '',
      args: [],
    );
  }

  /// `Ex. Hello, I'm a handyman who turns everything I touch into gold, specializing in a wide variety of fields, when it comes to home renovation.\nLove my job!`
  String get ex_Hello_im_a_handyman_who_turns_everything_i_touch_into {
    return Intl.message(
      'Ex. Hello, I\'m a handyman who turns everything I touch into gold, specializing in a wide variety of fields, when it comes to home renovation.\nLove my job!',
      name: 'ex_Hello_im_a_handyman_who_turns_everything_i_touch_into',
      desc: '',
      args: [],
    );
  }

  /// `Add Bio`
  String get add_bio {
    return Intl.message(
      'Add Bio',
      name: 'add_bio',
      desc: '',
      args: [],
    );
  }

  /// `Add Working Area`
  String get add_working_area {
    return Intl.message(
      'Add Working Area',
      name: 'add_working_area',
      desc: '',
      args: [],
    );
  }

  /// `Work in city`
  String get work_in_city {
    return Intl.message(
      'Work in city',
      name: 'work_in_city',
      desc: '',
      args: [],
    );
  }

  /// `I work in city`
  String get i_work_in_city {
    return Intl.message(
      'I work in city',
      name: 'i_work_in_city',
      desc: '',
      args: [],
    );
  }

  /// `Select city`
  String get select_city {
    return Intl.message(
      'Select city',
      name: 'select_city',
      desc: '',
      args: [],
    );
  }

  /// `Work in area`
  String get work_in_area {
    return Intl.message(
      'Work in area',
      name: 'work_in_area',
      desc: '',
      args: [],
    );
  }

  /// `I work in areas`
  String get i_work_in_areas {
    return Intl.message(
      'I work in areas',
      name: 'i_work_in_areas',
      desc: '',
      args: [],
    );
  }

  /// `Ex. I work in the north and center\nin areas within the city`
  String get ex_i_work_in_the_north_and_center {
    return Intl.message(
      'Ex. I work in the north and center\nin areas within the city',
      name: 'ex_i_work_in_the_north_and_center',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Add Working Hours`
  String get add_working_hours {
    return Intl.message(
      'Add Working Hours',
      name: 'add_working_hours',
      desc: '',
      args: [],
    );
  }

  /// `Add Personal Info`
  String get add_personal_info {
    return Intl.message(
      'Add Personal Info',
      name: 'add_personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Select professions`
  String get select_professions {
    return Intl.message(
      'Select professions',
      name: 'select_professions',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get skills {
    return Intl.message(
      'Skills',
      name: 'skills',
      desc: '',
      args: [],
    );
  }

  /// `Select Skills`
  String get select_skills {
    return Intl.message(
      'Select Skills',
      name: 'select_skills',
      desc: '',
      args: [],
    );
  }

  /// `Your Location`
  String get your_location {
    return Intl.message(
      'Your Location',
      name: 'your_location',
      desc: '',
      args: [],
    );
  }

  /// `Morning`
  String get morning {
    return Intl.message(
      'Morning',
      name: 'morning',
      desc: '',
      args: [],
    );
  }

  /// `Afternoon`
  String get afternoon {
    return Intl.message(
      'Afternoon',
      name: 'afternoon',
      desc: '',
      args: [],
    );
  }

  /// `Evening`
  String get evening {
    return Intl.message(
      'Evening',
      name: 'evening',
      desc: '',
      args: [],
    );
  }

  /// `Night`
  String get night {
    return Intl.message(
      'Night',
      name: 'night',
      desc: '',
      args: [],
    );
  }

  /// `Search Skills`
  String get search_skills {
    return Intl.message(
      'Search Skills',
      name: 'search_skills',
      desc: '',
      args: [],
    );
  }

  /// `Search Profession`
  String get search_profession {
    return Intl.message(
      'Search Profession',
      name: 'search_profession',
      desc: '',
      args: [],
    );
  }

  /// `See Profile`
  String get see_profile {
    return Intl.message(
      'See Profile',
      name: 'see_profile',
      desc: '',
      args: [],
    );
  }

  /// `Search Results`
  String get search_results {
    return Intl.message(
      'Search Results',
      name: 'search_results',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, there are no results\nPlease check spelling or try\ndifferent keywords`
  String get sorry_there_are_no_results_mobile {
    return Intl.message(
      'Sorry, there are no results\nPlease check spelling or try\ndifferent keywords',
      name: 'sorry_there_are_no_results_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, there are no results, please check spelling or try\ndifferent keywords`
  String get sorry_there_are_no_results_website {
    return Intl.message(
      'Sorry, there are no results, please check spelling or try\ndifferent keywords',
      name: 'sorry_there_are_no_results_website',
      desc: '',
      args: [],
    );
  }

  /// `Add Image`
  String get add_image {
    return Intl.message(
      'Add Image',
      name: 'add_image',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience_add_certificate_screen {
    return Intl.message(
      'Experience',
      name: 'experience_add_certificate_screen',
      desc: '',
      args: [],
    );
  }

  /// `Certificate name...`
  String get certificate_name_add_certificate_screen {
    return Intl.message(
      'Certificate name...',
      name: 'certificate_name_add_certificate_screen',
      desc: '',
      args: [],
    );
  }

  /// `Issuing organization...`
  String get issuing_organization_add_certificate_screen {
    return Intl.message(
      'Issuing organization...',
      name: 'issuing_organization_add_certificate_screen',
      desc: '',
      args: [],
    );
  }

  /// `Check your email ✉️`
  String get check_your_email {
    return Intl.message(
      'Check your email ✉️',
      name: 'check_your_email',
      desc: '',
      args: [],
    );
  }

  /// `We sent an email to: `
  String get we_sent_an_email_to {
    return Intl.message(
      'We sent an email to: ',
      name: 'we_sent_an_email_to',
      desc: '',
      args: [],
    );
  }

  /// `Please follow the link inside to continue.\nIf you can’t find the email within your Inbox,\nplease check your Spam folder.`
  String
      get please_follow_the_link_inside_to_continue_if_you_cant_find_the_email_within_your_Inbox {
    return Intl.message(
      'Please follow the link inside to continue.\nIf you can’t find the email within your Inbox,\nplease check your Spam folder.',
      name:
          'please_follow_the_link_inside_to_continue_if_you_cant_find_the_email_within_your_Inbox',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive an email? `
  String get didnt_receive_an_email {
    return Intl.message(
      'Didn\'t receive an email? ',
      name: 'didnt_receive_an_email',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get current_password {
    return Intl.message(
      'Current Password',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter current password`
  String get enter_current_password {
    return Intl.message(
      'Enter current password',
      name: 'enter_current_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get enter_new_password {
    return Intl.message(
      'Enter new password',
      name: 'enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Change Email`
  String get change_email {
    return Intl.message(
      'Change Email',
      name: 'change_email',
      desc: '',
      args: [],
    );
  }

  /// `Note: After changing the email\nyou will be asked to verify it again.\nSecondly, an email is unique\nThis is how users identify you\nA Change may lead to a loss of credit`
  String get note_after_changing_the_email {
    return Intl.message(
      'Note: After changing the email\nyou will be asked to verify it again.\nSecondly, an email is unique\nThis is how users identify you\nA Change may lead to a loss of credit',
      name: 'note_after_changing_the_email',
      desc: '',
      args: [],
    );
  }

  /// `Current Email`
  String get current_email {
    return Intl.message(
      'Current Email',
      name: 'current_email',
      desc: '',
      args: [],
    );
  }

  /// `New Email`
  String get new_email {
    return Intl.message(
      'New Email',
      name: 'new_email',
      desc: '',
      args: [],
    );
  }

  /// `Change Username`
  String get change_username {
    return Intl.message(
      'Change Username',
      name: 'change_username',
      desc: '',
      args: [],
    );
  }

  /// `New Username`
  String get new_username {
    return Intl.message(
      'New Username',
      name: 'new_username',
      desc: '',
      args: [],
    );
  }

  /// `Current Username`
  String get current_username {
    return Intl.message(
      'Current Username',
      name: 'current_username',
      desc: '',
      args: [],
    );
  }

  /// `Note: A username is unique\nThis is how users identify you\nA change may lead to a loss of credit`
  String get note_a_username_is_unique {
    return Intl.message(
      'Note: A username is unique\nThis is how users identify you\nA change may lead to a loss of credit',
      name: 'note_a_username_is_unique',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for all the creative people\nall the websites\nfor the icons, images and assets:`
  String get thank_you_for_all_the_creative_people {
    return Intl.message(
      'Thank you for all the creative people\nall the websites\nfor the icons, images and assets:',
      name: 'thank_you_for_all_the_creative_people',
      desc: '',
      args: [],
    );
  }

  /// `Thanks`
  String get thanks {
    return Intl.message(
      'Thanks',
      name: 'thanks',
      desc: '',
      args: [],
    );
  }

  /// `Currency & Time Format`
  String get currency_and_time_format {
    return Intl.message(
      'Currency & Time Format',
      name: 'currency_and_time_format',
      desc: '',
      args: [],
    );
  }

  /// `Time Format`
  String get time_format {
    return Intl.message(
      'Time Format',
      name: 'time_format',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message(
      'Currency',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Use 24-hour format`
  String get use_hour_format {
    return Intl.message(
      'Use 24-hour format',
      name: 'use_hour_format',
      desc: '',
      args: [],
    );
  }

  /// `ILS`
  String get ils {
    return Intl.message(
      'ILS',
      name: 'ils',
      desc: '',
      args: [],
    );
  }

  /// `USD`
  String get usd {
    return Intl.message(
      'USD',
      name: 'usd',
      desc: '',
      args: [],
    );
  }

  /// `EUR`
  String get eur {
    return Intl.message(
      'EUR',
      name: 'eur',
      desc: '',
      args: [],
    );
  }

  /// `GBP`
  String get gbp {
    return Intl.message(
      'GBP',
      name: 'gbp',
      desc: '',
      args: [],
    );
  }

  /// `Israeli Shekel`
  String get israeli_shekel {
    return Intl.message(
      'Israeli Shekel',
      name: 'israeli_shekel',
      desc: '',
      args: [],
    );
  }

  /// `United States Dollar`
  String get united_states_dollar {
    return Intl.message(
      'United States Dollar',
      name: 'united_states_dollar',
      desc: '',
      args: [],
    );
  }

  /// `Euro`
  String get euro {
    return Intl.message(
      'Euro',
      name: 'euro',
      desc: '',
      args: [],
    );
  }

  /// `British Pound`
  String get british_pound {
    return Intl.message(
      'British Pound',
      name: 'british_pound',
      desc: '',
      args: [],
    );
  }

  /// `Preferences`
  String get preferences {
    return Intl.message(
      'Preferences',
      name: 'preferences',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Rate Our App`
  String get rate_our_app {
    return Intl.message(
      'Rate Our App',
      name: 'rate_our_app',
      desc: '',
      args: [],
    );
  }

  /// `Invite Your Friend`
  String get invite_your_friend {
    return Intl.message(
      'Invite Your Friend',
      name: 'invite_your_friend',
      desc: '',
      args: [],
    );
  }

  /// `Our Website`
  String get our_website {
    return Intl.message(
      'Our Website',
      name: 'our_website',
      desc: '',
      args: [],
    );
  }

  /// `No feedback found`
  String get no_feedback_found {
    return Intl.message(
      'No feedback found',
      name: 'no_feedback_found',
      desc: '',
      args: [],
    );
  }

  /// `Your feedback has been successfully\npublished\nAnd it will be visible to everyone ASAP`
  String get your_feedback_has_been_successfully {
    return Intl.message(
      'Your feedback has been successfully\npublished\nAnd it will be visible to everyone ASAP',
      name: 'your_feedback_has_been_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Payment Transactions (soon)`
  String get payment_transactions_soon {
    return Intl.message(
      'Payment Transactions (soon)',
      name: 'payment_transactions_soon',
      desc: '',
      args: [],
    );
  }

  /// `Calendar Schedule (soon)`
  String get calendar_schedule_soon {
    return Intl.message(
      'Calendar Schedule (soon)',
      name: 'calendar_schedule_soon',
      desc: '',
      args: [],
    );
  }

  /// `Password Requirements:`
  String get password_requirements {
    return Intl.message(
      'Password Requirements:',
      name: 'password_requirements',
      desc: '',
      args: [],
    );
  }

  /// `Minimum 6 characters long - the more, the better`
  String get minimum_characters_long {
    return Intl.message(
      'Minimum 6 characters long - the more, the better',
      name: 'minimum_characters_long',
      desc: '',
      args: [],
    );
  }

  /// `Use a combination of letters - A-Z, a-z`
  String get use_a_combination_of_letters {
    return Intl.message(
      'Use a combination of letters - A-Z, a-z',
      name: 'use_a_combination_of_letters',
      desc: '',
      args: [],
    );
  }

  /// `Use a combination of numbers - 0-9`
  String get use_a_combination_of_numbers {
    return Intl.message(
      'Use a combination of numbers - 0-9',
      name: 'use_a_combination_of_numbers',
      desc: '',
      args: [],
    );
  }

  /// `Blog`
  String get blog {
    return Intl.message(
      'Blog',
      name: 'blog',
      desc: '',
      args: [],
    );
  }

  /// `Personal`
  String get personal {
    return Intl.message(
      'Personal',
      name: 'personal',
      desc: '',
      args: [],
    );
  }

  /// `Account Preferences`
  String get account_preferences {
    return Intl.message(
      'Account Preferences',
      name: 'account_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Make your app management easy and fun!`
  String get make_your_app_management_easy_and_fun {
    return Intl.message(
      'Make your app management easy and fun!',
      name: 'make_your_app_management_easy_and_fun',
      desc: '',
      args: [],
    );
  }

  /// `Please select a professional category`
  String get please_select_a_professional_category {
    return Intl.message(
      'Please select a professional category',
      name: 'please_select_a_professional_category',
      desc: '',
      args: [],
    );
  }

  /// `Exit Be-Pass?`
  String get exit_be_pass {
    return Intl.message(
      'Exit Be-Pass?',
      name: 'exit_be_pass',
      desc: '',
      args: [],
    );
  }

  /// `Name is mandatory`
  String get name_is_mandatory {
    return Intl.message(
      'Name is mandatory',
      name: 'name_is_mandatory',
      desc: '',
      args: [],
    );
  }

  /// `Email is mandatory`
  String get email_is_mandatory {
    return Intl.message(
      'Email is mandatory',
      name: 'email_is_mandatory',
      desc: '',
      args: [],
    );
  }

  /// `Message is mandatory`
  String get message_is_mandatory {
    return Intl.message(
      'Message is mandatory',
      name: 'message_is_mandatory',
      desc: '',
      args: [],
    );
  }

  /// `Min of 2 characters is required`
  String get min_of_two_characters_is_required {
    return Intl.message(
      'Min of 2 characters is required',
      name: 'min_of_two_characters_is_required',
      desc: '',
      args: [],
    );
  }

  /// `URL is incorrect`
  String get url_is_incorrect {
    return Intl.message(
      'URL is incorrect',
      name: 'url_is_incorrect',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `At least one day must be OPEN`
  String get at_least_one_day_must_be_open {
    return Intl.message(
      'At least one day must be OPEN',
      name: 'at_least_one_day_must_be_open',
      desc: '',
      args: [],
    );
  }

  /// `Please add at least one\nCity / Country`
  String get please_add_at_least_one_city_country {
    return Intl.message(
      'Please add at least one\nCity / Country',
      name: 'please_add_at_least_one_city_country',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you\nwant to Logout?`
  String get are_you_sure_you_want_to_logout {
    return Intl.message(
      'Are you sure you\nwant to Logout?',
      name: 'are_you_sure_you_want_to_logout',
      desc: '',
      args: [],
    );
  }

  /// `Delete Price?`
  String get delete_price {
    return Intl.message(
      'Delete Price?',
      name: 'delete_price',
      desc: '',
      args: [],
    );
  }

  /// `Thank You!\nThe message has been sent to the professional`
  String get thank_you_the_message_has_been_sent_to_the_professional {
    return Intl.message(
      'Thank You!\nThe message has been sent to the professional',
      name: 'thank_you_the_message_has_been_sent_to_the_professional',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your subscription!`
  String get thank_you_for_your_subscription {
    return Intl.message(
      'Thank you for your subscription!',
      name: 'thank_you_for_your_subscription',
      desc: '',
      args: [],
    );
  }

  /// `File Upload`
  String get file_upload {
    return Intl.message(
      'File Upload',
      name: 'file_upload',
      desc: '',
      args: [],
    );
  }

  /// `Drag and Drop your files here`
  String get drag_and_drop_your_files_here {
    return Intl.message(
      'Drag and Drop your files here',
      name: 'drag_and_drop_your_files_here',
      desc: '',
      args: [],
    );
  }

  /// `Browse`
  String get browse {
    return Intl.message(
      'Browse',
      name: 'browse',
      desc: '',
      args: [],
    );
  }

  /// `to upload files`
  String get to_upload_files {
    return Intl.message(
      'to upload files',
      name: 'to_upload_files',
      desc: '',
      args: [],
    );
  }

  /// `*Maximum 5 photos at a time`
  String get maximum_five_photos_at_a_time {
    return Intl.message(
      '*Maximum 5 photos at a time',
      name: 'maximum_five_photos_at_a_time',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been restricted`
  String get your_account_has_been_restricted {
    return Intl.message(
      'Your account has been restricted',
      name: 'your_account_has_been_restricted',
      desc: '',
      args: [],
    );
  }

  /// `Verify your identity`
  String get verify_your_identity {
    return Intl.message(
      'Verify your identity',
      name: 'verify_your_identity',
      desc: '',
      args: [],
    );
  }

  /// `Bio (Introduce yourself)`
  String get bio_introduce_yourself {
    return Intl.message(
      'Bio (Introduce yourself)',
      name: 'bio_introduce_yourself',
      desc: '',
      args: [],
    );
  }

  /// `I agree that my personal info will be visible to everyone`
  String get i_agree_that_my_personal_info_will_be_visible_to_everyone {
    return Intl.message(
      'I agree that my personal info will be visible to everyone',
      name: 'i_agree_that_my_personal_info_will_be_visible_to_everyone',
      desc: '',
      args: [],
    );
  }

  /// `Title: Ex. Group Training`
  String get title_ex_group_training {
    return Intl.message(
      'Title: Ex. Group Training',
      name: 'title_ex_group_training',
      desc: '',
      args: [],
    );
  }

  /// `Add Info`
  String get add_info {
    return Intl.message(
      'Add Info',
      name: 'add_info',
      desc: '',
      args: [],
    );
  }

  /// `Describe your services, explain everything you are doing and set the prices`
  String get describe_your_services {
    return Intl.message(
      'Describe your services, explain everything you are doing and set the prices',
      name: 'describe_your_services',
      desc: '',
      args: [],
    );
  }

  /// `Set your working hours for each day and let the clients know when you are available`
  String get set_your_working_hours_for_each_day {
    return Intl.message(
      'Set your working hours for each day and let the clients know when you are available',
      name: 'set_your_working_hours_for_each_day',
      desc: '',
      args: [],
    );
  }

  /// `Let the clients know in what places are you working`
  String get let_the_clients_know_in_what_places {
    return Intl.message(
      'Let the clients know in what places are you working',
      name: 'let_the_clients_know_in_what_places',
      desc: '',
      args: [],
    );
  }

  /// `List your certifications, degrees, courses and everything you got to show that you are qualified`
  String get list_your_certifications_degrees {
    return Intl.message(
      'List your certifications, degrees, courses and everything you got to show that you are qualified',
      name: 'list_your_certifications_degrees',
      desc: '',
      args: [],
    );
  }

  /// `Upload all the images that you have for each service, to impress everyone`
  String get upload_all_the_images_that_you_have {
    return Intl.message(
      'Upload all the images that you have for each service, to impress everyone',
      name: 'upload_all_the_images_that_you_have',
      desc: '',
      args: [],
    );
  }

  /// `Add all your social media links`
  String get add_all_your_social_media_links {
    return Intl.message(
      'Add all your social media links',
      name: 'add_all_your_social_media_links',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'he'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
