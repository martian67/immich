//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAssetCountByTimeGroupDto {
  /// Returns a new [GetAssetCountByTimeGroupDto] instance.
  GetAssetCountByTimeGroupDto({
    required this.timeGroup,
  });

  TimeGroupEnum timeGroup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAssetCountByTimeGroupDto &&
     other.timeGroup == timeGroup;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timeGroup.hashCode);

  @override
  String toString() => 'GetAssetCountByTimeGroupDto[timeGroup=$timeGroup]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'timeGroup'] = timeGroup;
    return _json;
  }

  /// Returns a new [GetAssetCountByTimeGroupDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAssetCountByTimeGroupDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetAssetCountByTimeGroupDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetAssetCountByTimeGroupDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetAssetCountByTimeGroupDto(
        timeGroup: TimeGroupEnum.fromJson(json[r'timeGroup'])!,
      );
    }
    return null;
  }

  static List<GetAssetCountByTimeGroupDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAssetCountByTimeGroupDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAssetCountByTimeGroupDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAssetCountByTimeGroupDto> mapFromJson(dynamic json) {
    final map = <String, GetAssetCountByTimeGroupDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAssetCountByTimeGroupDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAssetCountByTimeGroupDto-objects as value to a dart map
  static Map<String, List<GetAssetCountByTimeGroupDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAssetCountByTimeGroupDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAssetCountByTimeGroupDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timeGroup',
  };
}
