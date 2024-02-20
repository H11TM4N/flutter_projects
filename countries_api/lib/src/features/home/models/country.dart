import 'package:countries_api/src/features/home/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

typedef Json = List<Map<String, dynamic>>;

@JsonSerializable()
class Country {
  final String name;
  final List<String> topLevelDomain;
  final String alpha2Code;
  final String alpha3Code;
  final List<String> callingCodes;
  final String? capital;
  final List<String> altSpellings;
  final String subregion;
  final String region;
  final int population;
  final List<double> latlng;
  final String demonym;
  final double area;
  final List<String> timezones;
  final List<String>? borders;
  final String nativeName;
  final String numericCode;
  final Map<String, String> flags;
  final List<Currency>? currencies;
  final List<Language> languages;
  final Map<String, String> translations;
  final String flag;
  final List<RegionalBloc> regionalBlocs;
  final String cioc;
  final bool independent;
  Country({
    required this.name,
    required this.topLevelDomain,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.callingCodes,
    this.capital = 'No capital',
    required this.altSpellings,
    required this.subregion,
    required this.region,
    required this.population,
    required this.latlng,
    required this.demonym,
    required this.area,
    required this.timezones,
    this.borders = const ['None'],
    required this.nativeName,
    required this.numericCode,
    required this.flags,
    this.currencies = const [],
    required this.languages,
    required this.translations,
    required this.flag,
    required this.regionalBlocs,
    required this.cioc,
    required this.independent,
  });

  Country copyWith({
    String? name,
    List<String>? topLevelDomain,
    String? alpha2Code,
    String? alpha3Code,
    List<String>? callingCodes,
    String? capital,
    List<String>? altSpellings,
    String? subregion,
    String? region,
    int? population,
    List<double>? latlng,
    String? demonym,
    double? area,
    List<String>? timezones,
    List<String>? borders,
    String? nativeName,
    String? numericCode,
    Map<String, String>? flags,
    List<Currency>? currencies,
    List<Language>? languages,
    Map<String, String>? translations,
    String? flag,
    List<RegionalBloc>? regionalBlocs,
    String? cioc,
    bool? independent,
  }) {
    return Country(
      name: name ?? this.name,
      topLevelDomain: topLevelDomain ?? this.topLevelDomain,
      alpha2Code: alpha2Code ?? this.alpha2Code,
      alpha3Code: alpha3Code ?? this.alpha3Code,
      callingCodes: callingCodes ?? this.callingCodes,
      capital: capital ?? this.capital,
      altSpellings: altSpellings ?? this.altSpellings,
      subregion: subregion ?? this.subregion,
      region: region ?? this.region,
      population: population ?? this.population,
      latlng: latlng ?? this.latlng,
      demonym: demonym ?? this.demonym,
      area: area ?? this.area,
      timezones: timezones ?? this.timezones,
      borders: borders ?? this.borders,
      nativeName: nativeName ?? this.nativeName,
      numericCode: numericCode ?? this.numericCode,
      flags: flags ?? this.flags,
      currencies: currencies ?? this.currencies,
      languages: languages ?? this.languages,
      translations: translations ?? this.translations,
      flag: flag ?? this.flag,
      regionalBlocs: regionalBlocs ?? this.regionalBlocs,
      cioc: cioc ?? this.cioc,
      independent: independent ?? this.independent,
    );
  }

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
