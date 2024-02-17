import 'package:json_annotation/json_annotation.dart';

part 'regional_bloc.g.dart';

@JsonSerializable()
class RegionalBloc {
  String acronym;
  String name;

  RegionalBloc({
    required this.acronym,
    required this.name,
  });

  factory RegionalBloc.fromJson(Map<String, dynamic> json) =>
      _$RegionalBlocFromJson(json);

  Map<String, dynamic> toJson() => _$RegionalBlocToJson(this);
}
