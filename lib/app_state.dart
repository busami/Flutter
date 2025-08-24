import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  AppInfoStruct _AppDetails = AppInfoStruct.fromSerializableMap(jsonDecode(
      '{\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/brokerage-nzusbu/assets/dlhvtmg9six1/logo.png\",\"title\":\"مكتب الدليجان العقاري\",\"subTitle\":\"وجهتك للبيع والشراء\"}'));
  AppInfoStruct get AppDetails => _AppDetails;
  set AppDetails(AppInfoStruct value) {
    _AppDetails = value;
  }

  void updateAppDetailsStruct(Function(AppInfoStruct) updateFn) {
    updateFn(_AppDetails);
  }

  List<PaymentMethodStruct> _paymentMethods = [
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Bank Transfer\",\"name\":\"Bank of Ameria\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/vyb3uavreh68/Bank_of_America_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Bank Transfer\",\"name\":\"Citibank\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/emdheoop4703/Citi_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Bank Transfer\",\"name\":\"Barclays\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/hnwi6fmmb1q6/Barclays_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Bank Transfer\",\"name\":\"UBS\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/rm8culsaawio/UBS_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Credit/Debit Card\",\"name\":\"Visa\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/v0un750wtmuc/Visa_Inc._svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Credit/Debit Card\",\"name\":\"Master\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/wmd29f1v0yq7/Mastercard_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"E-wallet\",\"name\":\"AmazonPay\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/basket-plus-2cwvsj/assets/lwkqv1lxpa46/amazonpay-logo.png\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"E-wallet\",\"name\":\"PayPal\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/x8cb8dlp3hs4/logos_paypal.svg\"}'))
  ];
  List<PaymentMethodStruct> get paymentMethods => _paymentMethods;
  set paymentMethods(List<PaymentMethodStruct> value) {
    _paymentMethods = value;
  }

  void addToPaymentMethods(PaymentMethodStruct value) {
    paymentMethods.add(value);
  }

  void removeFromPaymentMethods(PaymentMethodStruct value) {
    paymentMethods.remove(value);
  }

  void removeAtIndexFromPaymentMethods(int index) {
    paymentMethods.removeAt(index);
  }

  void updatePaymentMethodsAtIndex(
    int index,
    PaymentMethodStruct Function(PaymentMethodStruct) updateFn,
  ) {
    paymentMethods[index] = updateFn(_paymentMethods[index]);
  }

  void insertAtIndexInPaymentMethods(int index, PaymentMethodStruct value) {
    paymentMethods.insert(index, value);
  }

  PaymentMethodStruct _selectedPaymentMethod = PaymentMethodStruct();
  PaymentMethodStruct get selectedPaymentMethod => _selectedPaymentMethod;
  set selectedPaymentMethod(PaymentMethodStruct value) {
    _selectedPaymentMethod = value;
  }

  void updateSelectedPaymentMethodStruct(
      Function(PaymentMethodStruct) updateFn) {
    updateFn(_selectedPaymentMethod);
  }

  AddressStruct _selectedAddress = AddressStruct();
  AddressStruct get selectedAddress => _selectedAddress;
  set selectedAddress(AddressStruct value) {
    _selectedAddress = value;
  }

  void updateSelectedAddressStruct(Function(AddressStruct) updateFn) {
    updateFn(_selectedAddress);
  }

  List<LanguageStruct> _appLanguages = [
    LanguageStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Arabic\",\"lang_code\":\"ar\",\"country_flag\":\"https://flagcdn.com/h80/kw.png\"}')),
    LanguageStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"English\",\"lang_code\":\"en\",\"country_flag\":\"https://flagcdn.com/h80/us.png\"}'))
  ];
  List<LanguageStruct> get appLanguages => _appLanguages;
  set appLanguages(List<LanguageStruct> value) {
    _appLanguages = value;
  }

  void addToAppLanguages(LanguageStruct value) {
    appLanguages.add(value);
  }

  void removeFromAppLanguages(LanguageStruct value) {
    appLanguages.remove(value);
  }

  void removeAtIndexFromAppLanguages(int index) {
    appLanguages.removeAt(index);
  }

  void updateAppLanguagesAtIndex(
    int index,
    LanguageStruct Function(LanguageStruct) updateFn,
  ) {
    appLanguages[index] = updateFn(_appLanguages[index]);
  }

  void insertAtIndexInAppLanguages(int index, LanguageStruct value) {
    appLanguages.insert(index, value);
  }

  dynamic _selectedCountry = jsonDecode(
      '{\"country\":\"Kuwait\",\"dialCode\":\"+965\",\"flag\":\"https://flagcdn.com/h80/kw.png\"}');
  dynamic get selectedCountry => _selectedCountry;
  set selectedCountry(dynamic value) {
    _selectedCountry = value;
  }

  bool _userOnboarded = false;
  bool get userOnboarded => _userOnboarded;
  set userOnboarded(bool value) {
    _userOnboarded = value;
  }

  String _avatar =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/brokerage-nzusbu/assets/dlhvtmg9six1/logo.png';
  String get avatar => _avatar;
  set avatar(String value) {
    _avatar = value;
  }

  String _name = 'Aldilaijan Real Estate Office';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _pageSelector = 'Home';
  String get pageSelector => _pageSelector;
  set pageSelector(String value) {
    _pageSelector = value;
  }

  List<PropertiesStruct> _PropertyList = [
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/7d987e5c773e657453f2291a2c6faedf-cc_ft_960.webp\",\"title\":\"Sterling Cove\",\"price\":\"\$482,800\",\"location\":\"406 Sea Mist Dr, Sanford, NC 27332\",\"bad\":\"5\",\"bath\":\"4\",\"spft\":\"3,621\",\"rating\":\"4.8\",\"time\":\"2 hours ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/487a8d77bf72a2735447addc937975cc-cc_ft_960.webp\",\"title\":\"Aurora Heights\",\"price\":\"\$485,000\",\"location\":\"426 Sea Mist Dr, Sanford, NC 27332\",\"bad\":\"5\",\"bath\":\"4\",\"spft\":\"3,509\",\"rating\":\"4.8\",\"time\":\"2 days ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/78e461139ea94537bc82312c3a058846-cc_ft_960.webp\",\"title\":\"Velvet Haven\",\"price\":\"\$649,000\",\"location\":\"105 Summer Creek Lane, Sanford, NC 27332\",\"bad\":\"5\",\"bath\":\"4\",\"spft\":\"3,525\",\"rating\":\"4.6\",\"time\":\"4 days ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/015ccabf02661e71ce30bc9fba13de18-cc_ft_960.webp\",\"title\":\"Crystal Ridge\",\"price\":\"\$600,000\",\"location\":\"208 Summer Creek Ln, Sanford, NC 27332\",\"bad\":\"7\",\"bath\":\"6\",\"spft\":\"5,461\",\"rating\":\"4.7\",\"time\":\"3 hours ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/0a2f3c84ee666e74db0e508e4430620f-cc_ft_960.webp\",\"title\":\"Nimbus Tower\",\"price\":\"\$580,000\",\"location\":\"21 Summer Creek Ln, Sanford, NC 27332\",\"bad\":\"5\",\"bath\":\"5\",\"spft\":\"3,934\",\"rating\":\"4.8\",\"time\":\"6 hours ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/f392934fab24e291a0405da1d567be08-sc_1920_1280.webp\",\"title\":\"Echelon Place\",\"price\":\"\$694,999\",\"location\":\"2100 Fairwood Ln NE, Atlanta, GA 30345\",\"bad\":\"4\",\"bath\":\"3\",\"spft\":\"2,602\",\"rating\":\"4.5\",\"time\":\"2 days ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/1631d3e02a471a88f3180cbfcb0f691e-sc_1920_1280.webp\",\"title\":\"Zenith Bay\",\"price\":\"\$220,000\",\"location\":\"2115 Post Oak Cir, San Antonio, TX 78264\",\"bad\":\"3\",\"bath\":\"2\",\"spft\":\"1,568\",\"rating\":\"4.4\",\"time\":\"9 days ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/31c514d7fca7ff3614cbeefe588cfa3e-sc_1920_1280.webp\",\"title\":\"Celeste Loft\",\"price\":\"\$985,000\",\"location\":\"118 Depot Place, Nyack, NY 10960\",\"bad\":\"5\",\"bath\":\"3\",\"spft\":\"2,141\",\"rating\":\"4.8\",\"time\":\"46 days ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/bd4986312a227705194e13b539632cca-cc_ft_768.webp\",\"title\":\"Horizon Peak\",\"price\":\"\$575,000\",\"location\":\"330 Behringer Ave, Milton, DE 19968\",\"bad\":\"3\",\"bath\":\"4\",\"spft\":\"2,421\",\"rating\":\"4.4\",\"time\":\"99 days ago\"}')),
    PropertiesStruct.fromSerializableMap(jsonDecode(
        '{\"Image\":\"https://photos.zillowstatic.com/fp/f408b3d036535ed7bb9d912c71348046-cc_ft_768.webp\",\"title\":\"Skyline Crest\",\"price\":\"\$217,000\",\"location\":\"326 N Main St, Federalsburg, MD 21632\",\"bad\":\"3\",\"bath\":\"2\",\"spft\":\"1,592\",\"rating\":\"4.6\",\"time\":\"2 days ago\"}'))
  ];
  List<PropertiesStruct> get PropertyList => _PropertyList;
  set PropertyList(List<PropertiesStruct> value) {
    _PropertyList = value;
  }

  void addToPropertyList(PropertiesStruct value) {
    PropertyList.add(value);
  }

  void removeFromPropertyList(PropertiesStruct value) {
    PropertyList.remove(value);
  }

  void removeAtIndexFromPropertyList(int index) {
    PropertyList.removeAt(index);
  }

  void updatePropertyListAtIndex(
    int index,
    PropertiesStruct Function(PropertiesStruct) updateFn,
  ) {
    PropertyList[index] = updateFn(_PropertyList[index]);
  }

  void insertAtIndexInPropertyList(int index, PropertiesStruct value) {
    PropertyList.insert(index, value);
  }

  List<CitiesStruct> _Cities = [
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/brrzn0fh9sao/miami-bayside-landscape_23-2151636428.jpg\",\"title\":\"Riyadh\",\"subtitle\":\"Kingdom Tower\",\"views\":\"10k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/1ykji0ksegvh/miami-bayside-landscape_23-2151636431.jpg\",\"title\":\"New York\",\"subtitle\":\"Statue of Liberty\",\"views\":\"80k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/ijsxr25pmmu7/city-with-highway-city-background_1301236-59125.jpg\",\"title\":\"Paris\",\"subtitle\":\"Eiffel Tower\",\"views\":\"20k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/i2wpl9r7t74v/beautiful-bright-empire-state-building-nighttime_23-2150806056.jpg\",\"title\":\"London\",\"subtitle\":\"Big Ben\",\"views\":\"30k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/nlvqzwgaxv36/beautiful-landscape-cityscape-with-city-building-around-lumpini-park-bangkok-thailand_926199-1996424.jpg\",\"title\":\"Dubai\",\"subtitle\":\"Burj Khalifa\",\"views\":\"100k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/vgl2qiye0s27/efwegwrg.jpg\",\"title\":\"Tokyo\",\"subtitle\":\"Shibuya Crossing\",\"views\":\"8k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/cuh2sfp09pe1/city-skyline-with-sunset-background_1301236-59866.jpg\",\"title\":\"Istanbul\",\"subtitle\":\"Hagia Sophia\",\"views\":\"9k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/fwp21mo9o0go/miami-bayside-landscape_23-2151636409.jpg\",\"title\":\"Los Angeles\",\"subtitle\":\"Hollywood Sign\",\"views\":\"10k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/em3qulqreh7c/nice-city-park-by-lake_1033579-134379.jpg\",\"title\":\"Bangkok\",\"subtitle\":\"Grand Palace\",\"views\":\"30k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/vanyhfdmsbrm/old-resort-paradise-famous-cloud_1417-26.jpg\",\"title\":\"Singapore\",\"subtitle\":\"Marina Bay Sands\",\"views\":\"12k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/vanyhfdmsbrm/old-resort-paradise-famous-cloud_1417-26.jpg\",\"title\":\"Sydney\",\"subtitle\":\"Sydney Opera House\",\"views\":\"6k+\"}')),
    CitiesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/wqcp9zy6ripi/winding-path-park-sunset-city-skyline-view_713655-81820.jpg\",\"title\":\"Rome\",\"subtitle\":\"Colosseum\",\"views\":\"14k+\"}'))
  ];
  List<CitiesStruct> get Cities => _Cities;
  set Cities(List<CitiesStruct> value) {
    _Cities = value;
  }

  void addToCities(CitiesStruct value) {
    Cities.add(value);
  }

  void removeFromCities(CitiesStruct value) {
    Cities.remove(value);
  }

  void removeAtIndexFromCities(int index) {
    Cities.removeAt(index);
  }

  void updateCitiesAtIndex(
    int index,
    CitiesStruct Function(CitiesStruct) updateFn,
  ) {
    Cities[index] = updateFn(_Cities[index]);
  }

  void insertAtIndexInCities(int index, CitiesStruct value) {
    Cities.insert(index, value);
  }

  List<AgentStruct> _Agent = [
    AgentStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/1qehq20xkxsi/Avatar-34.jpg\",\"name\":\"James Ryan\"}')),
    AgentStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/7rigc66xbml9/Avatar-28.jpg\",\"name\":\"Emma Rose\"}')),
    AgentStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/jxdl5soxfeid/Avatar-32.jpeg\",\"name\":\"John David\"}')),
    AgentStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/fok4j7961h0q/Avatar-33.jpg\",\"name\":\"Lily Anne\"}')),
    AgentStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/h2fbfh19j7qx/Avatar-45.jpg\",\"name\":\"Mia Belle\"}')),
    AgentStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/tw8yrjk5n747/Avatar-21.jpg\",\"name\":\"Paul Henry\"}')),
    AgentStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/pz5lktwgx9wy/Avatar-20.jpg\",\"name\":\"Ruby Kate\"}')),
    AgentStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/g3scqy6rmnp7/Avatar-25.jpg\",\"name\":\"Luke Nolan\"}'))
  ];
  List<AgentStruct> get Agent => _Agent;
  set Agent(List<AgentStruct> value) {
    _Agent = value;
  }

  void addToAgent(AgentStruct value) {
    Agent.add(value);
  }

  void removeFromAgent(AgentStruct value) {
    Agent.remove(value);
  }

  void removeAtIndexFromAgent(int index) {
    Agent.removeAt(index);
  }

  void updateAgentAtIndex(
    int index,
    AgentStruct Function(AgentStruct) updateFn,
  ) {
    Agent[index] = updateFn(_Agent[index]);
  }

  void insertAtIndexInAgent(int index, AgentStruct value) {
    Agent.insert(index, value);
  }

  List<CompaniesStruct> _Companies = [
    CompaniesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/8w9elnl3xd9m/images-removebvdvdfvg-preview.png\",\"title\":\"Ora developers\"}')),
    CompaniesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/tbmrjr9kkqmj/palm_hills-removebg-preview.png\",\"title\":\"Palm Hills Developments\"}')),
    CompaniesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/boqeewqtrkba/images-removebg-previewfvfvv_(1).png\",\"title\":\"Mountain View\"}')),
    CompaniesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/bybsypswf5ep/AbzBVl695GedQMf9se86-removebg-preview.png\",\"title\":\"misr Italia Properties\"}')),
    CompaniesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/vrd1q3y6rgi1/463756543_1030323812167765_2514465160196905285_n-removebg-preview.png\",\"title\":\"Marakez\"}')),
    CompaniesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/wgenco5uzjzg/5a69f7111298449.Y3JvcCwzMDI0LDIzNjYsNDA0LDA-removebg-preview.png\",\"title\":\"SODIC\"}'))
  ];
  List<CompaniesStruct> get Companies => _Companies;
  set Companies(List<CompaniesStruct> value) {
    _Companies = value;
  }

  void addToCompanies(CompaniesStruct value) {
    Companies.add(value);
  }

  void removeFromCompanies(CompaniesStruct value) {
    Companies.remove(value);
  }

  void removeAtIndexFromCompanies(int index) {
    Companies.removeAt(index);
  }

  void updateCompaniesAtIndex(
    int index,
    CompaniesStruct Function(CompaniesStruct) updateFn,
  ) {
    Companies[index] = updateFn(_Companies[index]);
  }

  void insertAtIndexInCompanies(int index, CompaniesStruct value) {
    Companies.insert(index, value);
  }
}
