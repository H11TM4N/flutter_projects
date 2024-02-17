// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      name: json['name'] as String,
      topLevelDomain: (json['topLevelDomain'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      alpha2Code: json['alpha2Code'] as String,
      alpha3Code: json['alpha3Code'] as String,
      callingCodes: (json['callingCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      capital: json['capital'] as String,
      altSpellings: (json['altSpellings'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subregion: json['subregion'] as String,
      region: json['region'] as String,
      population: json['population'] as int,
      latlng: (json['latlng'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      demonym: json['demonym'] as String,
      area: (json['area'] as num).toDouble(),
      timezones:
          (json['timezones'] as List<dynamic>).map((e) => e as String).toList(),
      borders:
          (json['borders'] as List<dynamic>).map((e) => e as String).toList(),
      nativeName: json['nativeName'] as String,
      numericCode: json['numericCode'] as String,
      flags: Map<String, String>.from(json['flags'] as Map),
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      languages: (json['languages'] as List<dynamic>)
          .map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      translations: Map<String, String>.from(json['translations'] as Map),
      flag: json['flag'] as String,
      regionalBlocs: (json['regionalBlocs'] as List<dynamic>)
          .map((e) => RegionalBloc.fromJson(e as Map<String, dynamic>))
          .toList(),
      cioc: json['cioc'] as String,
      independent: json['independent'] as bool,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'topLevelDomain': instance.topLevelDomain,
      'alpha2Code': instance.alpha2Code,
      'alpha3Code': instance.alpha3Code,
      'callingCodes': instance.callingCodes,
      'capital': instance.capital,
      'altSpellings': instance.altSpellings,
      'subregion': instance.subregion,
      'region': instance.region,
      'population': instance.population,
      'latlng': instance.latlng,
      'demonym': instance.demonym,
      'area': instance.area,
      'timezones': instance.timezones,
      'borders': instance.borders,
      'nativeName': instance.nativeName,
      'numericCode': instance.numericCode,
      'flags': instance.flags,
      'currencies': instance.currencies,
      'languages': instance.languages,
      'translations': instance.translations,
      'flag': instance.flag,
      'regionalBlocs': instance.regionalBlocs,
      'cioc': instance.cioc,
      'independent': instance.independent,
    };
