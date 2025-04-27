// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Families$Query$AllFamilies$Location extends JsonSerializable
    with EquatableMixin {
  Families$Query$AllFamilies$Location();

  factory Families$Query$AllFamilies$Location.fromJson(
          Map<String, dynamic> json) =>
      _$Families$Query$AllFamilies$LocationFromJson(json);

  String? address;

  late String id;

  late double latitude;

  late double longitude;

  @override
  List<Object?> get props => [address, id, latitude, longitude];

  @override
  Map<String, dynamic> toJson() =>
      _$Families$Query$AllFamilies$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Families$Query$AllFamilies extends JsonSerializable with EquatableMixin {
  Families$Query$AllFamilies();

  factory Families$Query$AllFamilies.fromJson(Map<String, dynamic> json) =>
      _$Families$Query$AllFamiliesFromJson(json);

  String? description;

  late String familyCode;

  late String familyId;

  Families$Query$AllFamilies$Location? location;

  late String name;

  @override
  List<Object?> get props =>
      [description, familyCode, familyId, location, name];

  @override
  Map<String, dynamic> toJson() => _$Families$Query$AllFamiliesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Families$Query extends JsonSerializable with EquatableMixin {
  Families$Query();

  factory Families$Query.fromJson(Map<String, dynamic> json) =>
      _$Families$QueryFromJson(json);

  List<Families$Query$AllFamilies?>? allFamilies;

  @override
  List<Object?> get props => [allFamilies];

  @override
  Map<String, dynamic> toJson() => _$Families$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Users$Query$AllUsers$Family$Location extends JsonSerializable
    with EquatableMixin {
  Users$Query$AllUsers$Family$Location();

  factory Users$Query$AllUsers$Family$Location.fromJson(
          Map<String, dynamic> json) =>
      _$Users$Query$AllUsers$Family$LocationFromJson(json);

  String? address;

  late double latitude;

  late double longitude;

  @override
  List<Object?> get props => [address, latitude, longitude];

  @override
  Map<String, dynamic> toJson() =>
      _$Users$Query$AllUsers$Family$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Users$Query$AllUsers$Family extends JsonSerializable with EquatableMixin {
  Users$Query$AllUsers$Family();

  factory Users$Query$AllUsers$Family.fromJson(Map<String, dynamic> json) =>
      _$Users$Query$AllUsers$FamilyFromJson(json);

  String? description;

  late String familyCode;

  late String familyId;

  Users$Query$AllUsers$Family$Location? location;

  late String name;

  @override
  List<Object?> get props =>
      [description, familyCode, familyId, location, name];

  @override
  Map<String, dynamic> toJson() => _$Users$Query$AllUsers$FamilyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Users$Query$AllUsers extends JsonSerializable with EquatableMixin {
  Users$Query$AllUsers();

  factory Users$Query$AllUsers.fromJson(Map<String, dynamic> json) =>
      _$Users$Query$AllUsersFromJson(json);

  late String email;

  Users$Query$AllUsers$Family? family;

  late String firstName;

  late String id;

  late bool isActive;

  late bool isStaff;

  late String lastName;

  late String username;

  @override
  List<Object?> get props =>
      [email, family, firstName, id, isActive, isStaff, lastName, username];

  @override
  Map<String, dynamic> toJson() => _$Users$Query$AllUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Users$Query extends JsonSerializable with EquatableMixin {
  Users$Query();

  factory Users$Query.fromJson(Map<String, dynamic> json) =>
      _$Users$QueryFromJson(json);

  List<Users$Query$AllUsers?>? allUsers;

  @override
  List<Object?> get props => [allUsers];

  @override
  Map<String, dynamic> toJson() => _$Users$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateFamily$Mutation$CreateFamily$Family$Location
    extends JsonSerializable with EquatableMixin {
  CreateFamily$Mutation$CreateFamily$Family$Location();

  factory CreateFamily$Mutation$CreateFamily$Family$Location.fromJson(
          Map<String, dynamic> json) =>
      _$CreateFamily$Mutation$CreateFamily$Family$LocationFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateFamily$Mutation$CreateFamily$Family$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateFamily$Mutation$CreateFamily$Family extends JsonSerializable
    with EquatableMixin {
  CreateFamily$Mutation$CreateFamily$Family();

  factory CreateFamily$Mutation$CreateFamily$Family.fromJson(
          Map<String, dynamic> json) =>
      _$CreateFamily$Mutation$CreateFamily$FamilyFromJson(json);

  late String familyId;

  late String familyCode;

  late String name;

  String? description;

  CreateFamily$Mutation$CreateFamily$Family$Location? location;

  @override
  List<Object?> get props =>
      [familyId, familyCode, name, description, location];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateFamily$Mutation$CreateFamily$FamilyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateFamily$Mutation$CreateFamily extends JsonSerializable
    with EquatableMixin {
  CreateFamily$Mutation$CreateFamily();

  factory CreateFamily$Mutation$CreateFamily.fromJson(
          Map<String, dynamic> json) =>
      _$CreateFamily$Mutation$CreateFamilyFromJson(json);

  CreateFamily$Mutation$CreateFamily$Family? family;

  @override
  List<Object?> get props => [family];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateFamily$Mutation$CreateFamilyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateFamily$Mutation extends JsonSerializable with EquatableMixin {
  CreateFamily$Mutation();

  factory CreateFamily$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateFamily$MutationFromJson(json);

  CreateFamily$Mutation$CreateFamily? createFamily;

  @override
  List<Object?> get props => [createFamily];

  @override
  Map<String, dynamic> toJson() => _$CreateFamily$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateLocation$Mutation$CreateLocation$Location extends JsonSerializable
    with EquatableMixin {
  CreateLocation$Mutation$CreateLocation$Location();

  factory CreateLocation$Mutation$CreateLocation$Location.fromJson(
          Map<String, dynamic> json) =>
      _$CreateLocation$Mutation$CreateLocation$LocationFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateLocation$Mutation$CreateLocation$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateLocation$Mutation$CreateLocation extends JsonSerializable
    with EquatableMixin {
  CreateLocation$Mutation$CreateLocation();

  factory CreateLocation$Mutation$CreateLocation.fromJson(
          Map<String, dynamic> json) =>
      _$CreateLocation$Mutation$CreateLocationFromJson(json);

  CreateLocation$Mutation$CreateLocation$Location? location;

  @override
  List<Object?> get props => [location];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateLocation$Mutation$CreateLocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateLocation$Mutation extends JsonSerializable with EquatableMixin {
  CreateLocation$Mutation();

  factory CreateLocation$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateLocation$MutationFromJson(json);

  CreateLocation$Mutation$CreateLocation? createLocation;

  @override
  List<Object?> get props => [createLocation];

  @override
  Map<String, dynamic> toJson() => _$CreateLocation$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUser$User$BirthPlace extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUser$User$BirthPlace();

  factory CreateUser$Mutation$CreateUser$User$BirthPlace.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUser$User$BirthPlaceFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateUser$Mutation$CreateUser$User$BirthPlaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUser$User$BurialPlace extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUser$User$BurialPlace();

  factory CreateUser$Mutation$CreateUser$User$BurialPlace.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUser$User$BurialPlaceFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateUser$Mutation$CreateUser$User$BurialPlaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUser$User$Family extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUser$User$Family();

  factory CreateUser$Mutation$CreateUser$User$Family.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUser$User$FamilyFromJson(json);

  late String familyId;

  late String familyCode;

  late String name;

  @override
  List<Object?> get props => [familyId, familyCode, name];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateUser$Mutation$CreateUser$User$FamilyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUser$User extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUser$User();

  factory CreateUser$Mutation$CreateUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUser$UserFromJson(json);

  late String id;

  late String username;

  late String firstName;

  late String lastName;

  late String email;

  late String phone;

  DateTime? birthDate;

  DateTime? deathDate;

  String? milkName;

  @JsonKey(unknownEnumValue: UserUserGenderChoices.artemisUnknown)
  late UserUserGenderChoices gender;

  CreateUser$Mutation$CreateUser$User$BirthPlace? birthPlace;

  CreateUser$Mutation$CreateUser$User$BurialPlace? burialPlace;

  CreateUser$Mutation$CreateUser$User$Family? family;

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        phone,
        birthDate,
        deathDate,
        milkName,
        gender,
        birthPlace,
        burialPlace,
        family
      ];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateUser$Mutation$CreateUser$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUser extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUser();

  factory CreateUser$Mutation$CreateUser.fromJson(Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUserFromJson(json);

  CreateUser$Mutation$CreateUser$User? user;

  @override
  List<Object?> get props => [user];

  @override
  Map<String, dynamic> toJson() => _$CreateUser$Mutation$CreateUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation extends JsonSerializable with EquatableMixin {
  CreateUser$Mutation();

  factory CreateUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateUser$MutationFromJson(json);

  CreateUser$Mutation$CreateUser? createUser;

  @override
  List<Object?> get props => [createUser];

  @override
  Map<String, dynamic> toJson() => _$CreateUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginWithPhone$Mutation$LoginWithPhone$User extends JsonSerializable
    with EquatableMixin {
  LoginWithPhone$Mutation$LoginWithPhone$User();

  factory LoginWithPhone$Mutation$LoginWithPhone$User.fromJson(
          Map<String, dynamic> json) =>
      _$LoginWithPhone$Mutation$LoginWithPhone$UserFromJson(json);

  late String id;

  late String username;

  late String firstName;

  late String lastName;

  late String email;

  late String phone;

  @JsonKey(unknownEnumValue: UserUserGenderChoices.artemisUnknown)
  late UserUserGenderChoices gender;

  @override
  List<Object?> get props =>
      [id, username, firstName, lastName, email, phone, gender];

  @override
  Map<String, dynamic> toJson() =>
      _$LoginWithPhone$Mutation$LoginWithPhone$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginWithPhone$Mutation$LoginWithPhone extends JsonSerializable
    with EquatableMixin {
  LoginWithPhone$Mutation$LoginWithPhone();

  factory LoginWithPhone$Mutation$LoginWithPhone.fromJson(
          Map<String, dynamic> json) =>
      _$LoginWithPhone$Mutation$LoginWithPhoneFromJson(json);

  String? token;

  LoginWithPhone$Mutation$LoginWithPhone$User? user;

  bool? success;

  List<String?>? errors;

  @override
  List<Object?> get props => [token, user, success, errors];

  @override
  Map<String, dynamic> toJson() =>
      _$LoginWithPhone$Mutation$LoginWithPhoneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginWithPhone$Mutation extends JsonSerializable with EquatableMixin {
  LoginWithPhone$Mutation();

  factory LoginWithPhone$Mutation.fromJson(Map<String, dynamic> json) =>
      _$LoginWithPhone$MutationFromJson(json);

  LoginWithPhone$Mutation$LoginWithPhone? loginWithPhone;

  @override
  List<Object?> get props => [loginWithPhone];

  @override
  Map<String, dynamic> toJson() => _$LoginWithPhone$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Logout$Mutation$Logout extends JsonSerializable with EquatableMixin {
  Logout$Mutation$Logout();

  factory Logout$Mutation$Logout.fromJson(Map<String, dynamic> json) =>
      _$Logout$Mutation$LogoutFromJson(json);

  bool? success;

  @override
  List<Object?> get props => [success];

  @override
  Map<String, dynamic> toJson() => _$Logout$Mutation$LogoutToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Logout$Mutation extends JsonSerializable with EquatableMixin {
  Logout$Mutation();

  factory Logout$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Logout$MutationFromJson(json);

  Logout$Mutation$Logout? logout;

  @override
  List<Object?> get props => [logout];

  @override
  Map<String, dynamic> toJson() => _$Logout$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RegisterWithPhone$Mutation$RegisterWithPhone$User extends JsonSerializable
    with EquatableMixin {
  RegisterWithPhone$Mutation$RegisterWithPhone$User();

  factory RegisterWithPhone$Mutation$RegisterWithPhone$User.fromJson(
          Map<String, dynamic> json) =>
      _$RegisterWithPhone$Mutation$RegisterWithPhone$UserFromJson(json);

  late String id;

  late String username;

  late String firstName;

  late String lastName;

  late String email;

  late String phone;

  @JsonKey(unknownEnumValue: UserUserGenderChoices.artemisUnknown)
  late UserUserGenderChoices gender;

  @override
  List<Object?> get props =>
      [id, username, firstName, lastName, email, phone, gender];

  @override
  Map<String, dynamic> toJson() =>
      _$RegisterWithPhone$Mutation$RegisterWithPhone$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RegisterWithPhone$Mutation$RegisterWithPhone extends JsonSerializable
    with EquatableMixin {
  RegisterWithPhone$Mutation$RegisterWithPhone();

  factory RegisterWithPhone$Mutation$RegisterWithPhone.fromJson(
          Map<String, dynamic> json) =>
      _$RegisterWithPhone$Mutation$RegisterWithPhoneFromJson(json);

  String? token;

  RegisterWithPhone$Mutation$RegisterWithPhone$User? user;

  bool? success;

  List<String?>? errors;

  @override
  List<Object?> get props => [token, user, success, errors];

  @override
  Map<String, dynamic> toJson() =>
      _$RegisterWithPhone$Mutation$RegisterWithPhoneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RegisterWithPhone$Mutation extends JsonSerializable with EquatableMixin {
  RegisterWithPhone$Mutation();

  factory RegisterWithPhone$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RegisterWithPhone$MutationFromJson(json);

  RegisterWithPhone$Mutation$RegisterWithPhone? registerWithPhone;

  @override
  List<Object?> get props => [registerWithPhone];

  @override
  Map<String, dynamic> toJson() => _$RegisterWithPhone$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendVerificationCode$Mutation$SendVerificationCode
    extends JsonSerializable with EquatableMixin {
  SendVerificationCode$Mutation$SendVerificationCode();

  factory SendVerificationCode$Mutation$SendVerificationCode.fromJson(
          Map<String, dynamic> json) =>
      _$SendVerificationCode$Mutation$SendVerificationCodeFromJson(json);

  bool? success;

  List<String?>? errors;

  @override
  List<Object?> get props => [success, errors];

  @override
  Map<String, dynamic> toJson() =>
      _$SendVerificationCode$Mutation$SendVerificationCodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendVerificationCode$Mutation extends JsonSerializable
    with EquatableMixin {
  SendVerificationCode$Mutation();

  factory SendVerificationCode$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationCode$MutationFromJson(json);

  SendVerificationCode$Mutation$SendVerificationCode? sendVerificationCode;

  @override
  List<Object?> get props => [sendVerificationCode];

  @override
  Map<String, dynamic> toJson() => _$SendVerificationCode$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser$User$BirthPlace extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser$User$BirthPlace();

  factory UpdateUser$Mutation$UpdateUser$User$BirthPlace.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUser$User$BirthPlaceFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUser$Mutation$UpdateUser$User$BirthPlaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser$User$BurialPlace extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser$User$BurialPlace();

  factory UpdateUser$Mutation$UpdateUser$User$BurialPlace.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUser$User$BurialPlaceFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUser$Mutation$UpdateUser$User$BurialPlaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser$User$Family extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser$User$Family();

  factory UpdateUser$Mutation$UpdateUser$User$Family.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUser$User$FamilyFromJson(json);

  late String familyId;

  late String familyCode;

  late String name;

  @override
  List<Object?> get props => [familyId, familyCode, name];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUser$Mutation$UpdateUser$User$FamilyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser$User extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser$User();

  factory UpdateUser$Mutation$UpdateUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUser$UserFromJson(json);

  late String id;

  late String username;

  late String firstName;

  late String lastName;

  late String email;

  late String phone;

  DateTime? birthDate;

  DateTime? deathDate;

  String? milkName;

  @JsonKey(unknownEnumValue: UserUserGenderChoices.artemisUnknown)
  late UserUserGenderChoices gender;

  UpdateUser$Mutation$UpdateUser$User$BirthPlace? birthPlace;

  UpdateUser$Mutation$UpdateUser$User$BurialPlace? burialPlace;

  UpdateUser$Mutation$UpdateUser$User$Family? family;

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        phone,
        birthDate,
        deathDate,
        milkName,
        gender,
        birthPlace,
        burialPlace,
        family
      ];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUser$Mutation$UpdateUser$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser();

  factory UpdateUser$Mutation$UpdateUser.fromJson(Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUserFromJson(json);

  UpdateUser$Mutation$UpdateUser$User? user;

  @override
  List<Object?> get props => [user];

  @override
  Map<String, dynamic> toJson() => _$UpdateUser$Mutation$UpdateUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation extends JsonSerializable with EquatableMixin {
  UpdateUser$Mutation();

  factory UpdateUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateUser$MutationFromJson(json);

  UpdateUser$Mutation$UpdateUser? updateUser;

  @override
  List<Object?> get props => [updateUser];

  @override
  Map<String, dynamic> toJson() => _$UpdateUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllFamilies$Query$AllFamilies$Location extends JsonSerializable
    with EquatableMixin {
  AllFamilies$Query$AllFamilies$Location();

  factory AllFamilies$Query$AllFamilies$Location.fromJson(
          Map<String, dynamic> json) =>
      _$AllFamilies$Query$AllFamilies$LocationFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$AllFamilies$Query$AllFamilies$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllFamilies$Query$AllFamilies extends JsonSerializable
    with EquatableMixin {
  AllFamilies$Query$AllFamilies();

  factory AllFamilies$Query$AllFamilies.fromJson(Map<String, dynamic> json) =>
      _$AllFamilies$Query$AllFamiliesFromJson(json);

  late String familyId;

  late String familyCode;

  late String name;

  String? description;

  AllFamilies$Query$AllFamilies$Location? location;

  @override
  List<Object?> get props =>
      [familyId, familyCode, name, description, location];

  @override
  Map<String, dynamic> toJson() => _$AllFamilies$Query$AllFamiliesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllFamilies$Query extends JsonSerializable with EquatableMixin {
  AllFamilies$Query();

  factory AllFamilies$Query.fromJson(Map<String, dynamic> json) =>
      _$AllFamilies$QueryFromJson(json);

  List<AllFamilies$Query$AllFamilies?>? allFamilies;

  @override
  List<Object?> get props => [allFamilies];

  @override
  Map<String, dynamic> toJson() => _$AllFamilies$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLocations$Query$AllLocations extends JsonSerializable
    with EquatableMixin {
  AllLocations$Query$AllLocations();

  factory AllLocations$Query$AllLocations.fromJson(Map<String, dynamic> json) =>
      _$AllLocations$Query$AllLocationsFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$AllLocations$Query$AllLocationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLocations$Query extends JsonSerializable with EquatableMixin {
  AllLocations$Query();

  factory AllLocations$Query.fromJson(Map<String, dynamic> json) =>
      _$AllLocations$QueryFromJson(json);

  List<AllLocations$Query$AllLocations?>? allLocations;

  @override
  List<Object?> get props => [allLocations];

  @override
  Map<String, dynamic> toJson() => _$AllLocations$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllRelationships$Query$AllRelationships extends JsonSerializable
    with EquatableMixin {
  AllRelationships$Query$AllRelationships();

  factory AllRelationships$Query$AllRelationships.fromJson(
          Map<String, dynamic> json) =>
      _$AllRelationships$Query$AllRelationshipsFromJson(json);

  @JsonKey(
      unknownEnumValue: UserRelationshipRelationshipTypeChoices.artemisUnknown)
  late UserRelationshipRelationshipTypeChoices relationshipType;

  @override
  List<Object?> get props => [relationshipType];

  @override
  Map<String, dynamic> toJson() =>
      _$AllRelationships$Query$AllRelationshipsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllRelationships$Query extends JsonSerializable with EquatableMixin {
  AllRelationships$Query();

  factory AllRelationships$Query.fromJson(Map<String, dynamic> json) =>
      _$AllRelationships$QueryFromJson(json);

  List<AllRelationships$Query$AllRelationships?>? allRelationships;

  @override
  List<Object?> get props => [allRelationships];

  @override
  Map<String, dynamic> toJson() => _$AllRelationships$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllUsers$Query$AllUsers$BirthPlace extends JsonSerializable
    with EquatableMixin {
  AllUsers$Query$AllUsers$BirthPlace();

  factory AllUsers$Query$AllUsers$BirthPlace.fromJson(
          Map<String, dynamic> json) =>
      _$AllUsers$Query$AllUsers$BirthPlaceFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$AllUsers$Query$AllUsers$BirthPlaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllUsers$Query$AllUsers$BurialPlace extends JsonSerializable
    with EquatableMixin {
  AllUsers$Query$AllUsers$BurialPlace();

  factory AllUsers$Query$AllUsers$BurialPlace.fromJson(
          Map<String, dynamic> json) =>
      _$AllUsers$Query$AllUsers$BurialPlaceFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$AllUsers$Query$AllUsers$BurialPlaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllUsers$Query$AllUsers$Family$Location extends JsonSerializable
    with EquatableMixin {
  AllUsers$Query$AllUsers$Family$Location();

  factory AllUsers$Query$AllUsers$Family$Location.fromJson(
          Map<String, dynamic> json) =>
      _$AllUsers$Query$AllUsers$Family$LocationFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$AllUsers$Query$AllUsers$Family$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllUsers$Query$AllUsers$Family extends JsonSerializable
    with EquatableMixin {
  AllUsers$Query$AllUsers$Family();

  factory AllUsers$Query$AllUsers$Family.fromJson(Map<String, dynamic> json) =>
      _$AllUsers$Query$AllUsers$FamilyFromJson(json);

  late String familyId;

  late String familyCode;

  late String name;

  String? description;

  AllUsers$Query$AllUsers$Family$Location? location;

  @override
  List<Object?> get props =>
      [familyId, familyCode, name, description, location];

  @override
  Map<String, dynamic> toJson() => _$AllUsers$Query$AllUsers$FamilyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllUsers$Query$AllUsers extends JsonSerializable with EquatableMixin {
  AllUsers$Query$AllUsers();

  factory AllUsers$Query$AllUsers.fromJson(Map<String, dynamic> json) =>
      _$AllUsers$Query$AllUsersFromJson(json);

  late String id;

  late String username;

  late String firstName;

  late String lastName;

  late String email;

  late bool isStaff;

  late bool isActive;

  late DateTime dateJoined;

  DateTime? birthDate;

  DateTime? deathDate;

  String? milkName;

  AllUsers$Query$AllUsers$BirthPlace? birthPlace;

  AllUsers$Query$AllUsers$BurialPlace? burialPlace;

  late String phone;

  AllUsers$Query$AllUsers$Family? family;

  @JsonKey(unknownEnumValue: UserUserGenderChoices.artemisUnknown)
  late UserUserGenderChoices gender;

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        isStaff,
        isActive,
        dateJoined,
        birthDate,
        deathDate,
        milkName,
        birthPlace,
        burialPlace,
        phone,
        family,
        gender
      ];

  @override
  Map<String, dynamic> toJson() => _$AllUsers$Query$AllUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllUsers$Query extends JsonSerializable with EquatableMixin {
  AllUsers$Query();

  factory AllUsers$Query.fromJson(Map<String, dynamic> json) =>
      _$AllUsers$QueryFromJson(json);

  List<AllUsers$Query$AllUsers?>? allUsers;

  @override
  List<Object?> get props => [allUsers];

  @override
  Map<String, dynamic> toJson() => _$AllUsers$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Family$Query$Family$Location extends JsonSerializable
    with EquatableMixin {
  Family$Query$Family$Location();

  factory Family$Query$Family$Location.fromJson(Map<String, dynamic> json) =>
      _$Family$Query$Family$LocationFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() => _$Family$Query$Family$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Family$Query$Family extends JsonSerializable with EquatableMixin {
  Family$Query$Family();

  factory Family$Query$Family.fromJson(Map<String, dynamic> json) =>
      _$Family$Query$FamilyFromJson(json);

  late String familyId;

  late String familyCode;

  late String name;

  String? description;

  Family$Query$Family$Location? location;

  @override
  List<Object?> get props =>
      [familyId, familyCode, name, description, location];

  @override
  Map<String, dynamic> toJson() => _$Family$Query$FamilyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Family$Query extends JsonSerializable with EquatableMixin {
  Family$Query();

  factory Family$Query.fromJson(Map<String, dynamic> json) =>
      _$Family$QueryFromJson(json);

  Family$Query$Family? family;

  @override
  List<Object?> get props => [family];

  @override
  Map<String, dynamic> toJson() => _$Family$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location$Query$Location extends JsonSerializable with EquatableMixin {
  Location$Query$Location();

  factory Location$Query$Location.fromJson(Map<String, dynamic> json) =>
      _$Location$Query$LocationFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() => _$Location$Query$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location$Query extends JsonSerializable with EquatableMixin {
  Location$Query();

  factory Location$Query.fromJson(Map<String, dynamic> json) =>
      _$Location$QueryFromJson(json);

  Location$Query$Location? location;

  @override
  List<Object?> get props => [location];

  @override
  Map<String, dynamic> toJson() => _$Location$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Relationship$Query$Relationship extends JsonSerializable
    with EquatableMixin {
  Relationship$Query$Relationship();

  factory Relationship$Query$Relationship.fromJson(Map<String, dynamic> json) =>
      _$Relationship$Query$RelationshipFromJson(json);

  @JsonKey(
      unknownEnumValue: UserRelationshipRelationshipTypeChoices.artemisUnknown)
  late UserRelationshipRelationshipTypeChoices relationshipType;

  @override
  List<Object?> get props => [relationshipType];

  @override
  Map<String, dynamic> toJson() =>
      _$Relationship$Query$RelationshipToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Relationship$Query extends JsonSerializable with EquatableMixin {
  Relationship$Query();

  factory Relationship$Query.fromJson(Map<String, dynamic> json) =>
      _$Relationship$QueryFromJson(json);

  Relationship$Query$Relationship? relationship;

  @override
  List<Object?> get props => [relationship];

  @override
  Map<String, dynamic> toJson() => _$Relationship$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$BirthPlace extends JsonSerializable with EquatableMixin {
  User$Query$User$BirthPlace();

  factory User$Query$User$BirthPlace.fromJson(Map<String, dynamic> json) =>
      _$User$Query$User$BirthPlaceFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() => _$User$Query$User$BirthPlaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$BurialPlace extends JsonSerializable with EquatableMixin {
  User$Query$User$BurialPlace();

  factory User$Query$User$BurialPlace.fromJson(Map<String, dynamic> json) =>
      _$User$Query$User$BurialPlaceFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() => _$User$Query$User$BurialPlaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$Family$Location extends JsonSerializable
    with EquatableMixin {
  User$Query$User$Family$Location();

  factory User$Query$User$Family$Location.fromJson(Map<String, dynamic> json) =>
      _$User$Query$User$Family$LocationFromJson(json);

  late String id;

  late double latitude;

  late double longitude;

  String? address;

  @override
  List<Object?> get props => [id, latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$Family$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$Family extends JsonSerializable with EquatableMixin {
  User$Query$User$Family();

  factory User$Query$User$Family.fromJson(Map<String, dynamic> json) =>
      _$User$Query$User$FamilyFromJson(json);

  late String familyId;

  late String familyCode;

  late String name;

  String? description;

  User$Query$User$Family$Location? location;

  @override
  List<Object?> get props =>
      [familyId, familyCode, name, description, location];

  @override
  Map<String, dynamic> toJson() => _$User$Query$User$FamilyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User extends JsonSerializable with EquatableMixin {
  User$Query$User();

  factory User$Query$User.fromJson(Map<String, dynamic> json) =>
      _$User$Query$UserFromJson(json);

  late String id;

  late String username;

  late String firstName;

  late String lastName;

  late String email;

  late bool isStaff;

  late bool isActive;

  late DateTime dateJoined;

  DateTime? birthDate;

  DateTime? deathDate;

  String? milkName;

  User$Query$User$BirthPlace? birthPlace;

  User$Query$User$BurialPlace? burialPlace;

  late String phone;

  User$Query$User$Family? family;

  @JsonKey(unknownEnumValue: UserUserGenderChoices.artemisUnknown)
  late UserUserGenderChoices gender;

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        isStaff,
        isActive,
        dateJoined,
        birthDate,
        deathDate,
        milkName,
        birthPlace,
        burialPlace,
        phone,
        family,
        gender
      ];

  @override
  Map<String, dynamic> toJson() => _$User$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query extends JsonSerializable with EquatableMixin {
  User$Query();

  factory User$Query.fromJson(Map<String, dynamic> json) =>
      _$User$QueryFromJson(json);

  User$Query$User? user;

  @override
  List<Object?> get props => [user];

  @override
  Map<String, dynamic> toJson() => _$User$QueryToJson(this);
}

enum UserUserGenderChoices {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
  @JsonValue('OTHER')
  other,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UserRelationshipRelationshipTypeChoices {
  @JsonValue('PARENT')
  parent,
  @JsonValue('CHILD')
  child,
  @JsonValue('SIBLING')
  sibling,
  @JsonValue('SPOUSE')
  spouse,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

final FAMILIES_QUERY_DOCUMENT_OPERATION_NAME = 'families';
final FAMILIES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'families'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allFamilies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: IntValueNode(value: '10'),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: IntValueNode(value: '10'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'familyCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'familyId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class FamiliesQuery extends GraphQLQuery<Families$Query, JsonSerializable> {
  FamiliesQuery();

  @override
  final DocumentNode document = FAMILIES_QUERY_DOCUMENT;

  @override
  final String operationName = FAMILIES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];

  @override
  Families$Query parse(Map<String, dynamic> json) =>
      Families$Query.fromJson(json);
}

final USERS_QUERY_DOCUMENT_OPERATION_NAME = 'users';
final USERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'users'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allUsers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: IntValueNode(value: '10'),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: IntValueNode(value: '10'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'familyCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'familyId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'location'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isStaff'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class UsersQuery extends GraphQLQuery<Users$Query, JsonSerializable> {
  UsersQuery();

  @override
  final DocumentNode document = USERS_QUERY_DOCUMENT;

  @override
  final String operationName = USERS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];

  @override
  Users$Query parse(Map<String, dynamic> json) => Users$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateFamilyArguments extends JsonSerializable with EquatableMixin {
  CreateFamilyArguments({
    required this.familyCode,
    required this.name,
    this.description,
    this.locationId,
  });

  @override
  factory CreateFamilyArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateFamilyArgumentsFromJson(json);

  late String familyCode;

  late String name;

  final String? description;

  final String? locationId;

  @override
  List<Object?> get props => [familyCode, name, description, locationId];

  @override
  Map<String, dynamic> toJson() => _$CreateFamilyArgumentsToJson(this);
}

final CREATE_FAMILY_MUTATION_DOCUMENT_OPERATION_NAME = 'CreateFamily';
final CREATE_FAMILY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateFamily'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'description')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'locationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createFamily'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'familyCode'),
            value: VariableNode(name: NameNode(value: 'familyCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'description'),
            value: VariableNode(name: NameNode(value: 'description')),
          ),
          ArgumentNode(
            name: NameNode(value: 'locationId'),
            value: VariableNode(name: NameNode(value: 'locationId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'familyId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'familyCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'location'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateFamilyMutation
    extends GraphQLQuery<CreateFamily$Mutation, CreateFamilyArguments> {
  CreateFamilyMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_FAMILY_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_FAMILY_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateFamilyArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  CreateFamily$Mutation parse(Map<String, dynamic> json) =>
      CreateFamily$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateLocationArguments extends JsonSerializable with EquatableMixin {
  CreateLocationArguments({
    required this.latitude,
    required this.longitude,
    this.address,
  });

  @override
  factory CreateLocationArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateLocationArgumentsFromJson(json);

  late double latitude;

  late double longitude;

  final String? address;

  @override
  List<Object?> get props => [latitude, longitude, address];

  @override
  Map<String, dynamic> toJson() => _$CreateLocationArgumentsToJson(this);
}

final CREATE_LOCATION_MUTATION_DOCUMENT_OPERATION_NAME = 'CreateLocation';
final CREATE_LOCATION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'latitude')),
        type: NamedTypeNode(
          name: NameNode(value: 'Decimal'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'longitude')),
        type: NamedTypeNode(
          name: NameNode(value: 'Decimal'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'address')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createLocation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'latitude'),
            value: VariableNode(name: NameNode(value: 'latitude')),
          ),
          ArgumentNode(
            name: NameNode(value: 'longitude'),
            value: VariableNode(name: NameNode(value: 'longitude')),
          ),
          ArgumentNode(
            name: NameNode(value: 'address'),
            value: VariableNode(name: NameNode(value: 'address')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateLocationMutation
    extends GraphQLQuery<CreateLocation$Mutation, CreateLocationArguments> {
  CreateLocationMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_LOCATION_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_LOCATION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateLocationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  CreateLocation$Mutation parse(Map<String, dynamic> json) =>
      CreateLocation$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateUserArguments extends JsonSerializable with EquatableMixin {
  CreateUserArguments({
    required this.username,
    required this.password,
    this.firstName,
    this.lastName,
    this.email,
    this.birthDate,
    this.deathDate,
    this.milkName,
    this.phone,
    this.gender,
    this.birthPlaceId,
    this.burialPlaceId,
    this.familyId,
  });

  @override
  factory CreateUserArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateUserArgumentsFromJson(json);

  late String username;

  late String password;

  final String? firstName;

  final String? lastName;

  final String? email;

  final DateTime? birthDate;

  final DateTime? deathDate;

  final String? milkName;

  final String? phone;

  final String? gender;

  final String? birthPlaceId;

  final String? burialPlaceId;

  final String? familyId;

  @override
  List<Object?> get props => [
        username,
        password,
        firstName,
        lastName,
        email,
        birthDate,
        deathDate,
        milkName,
        phone,
        gender,
        birthPlaceId,
        burialPlaceId,
        familyId
      ];

  @override
  Map<String, dynamic> toJson() => _$CreateUserArgumentsToJson(this);
}

final CREATE_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'CreateUser';
final CREATE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'birthDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deathDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'milkName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gender')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'birthPlaceId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'burialPlaceId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
          ArgumentNode(
            name: NameNode(value: 'firstName'),
            value: VariableNode(name: NameNode(value: 'firstName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'lastName'),
            value: VariableNode(name: NameNode(value: 'lastName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'birthDate'),
            value: VariableNode(name: NameNode(value: 'birthDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'deathDate'),
            value: VariableNode(name: NameNode(value: 'deathDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'milkName'),
            value: VariableNode(name: NameNode(value: 'milkName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'phone'),
            value: VariableNode(name: NameNode(value: 'phone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'gender'),
            value: VariableNode(name: NameNode(value: 'gender')),
          ),
          ArgumentNode(
            name: NameNode(value: 'birthPlaceId'),
            value: VariableNode(name: NameNode(value: 'birthPlaceId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'burialPlaceId'),
            value: VariableNode(name: NameNode(value: 'burialPlaceId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'username'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'firstName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'birthDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deathDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'milkName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'birthPlace'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'burialPlace'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'family'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'familyId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'familyCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateUserMutation
    extends GraphQLQuery<CreateUser$Mutation, CreateUserArguments> {
  CreateUserMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  CreateUser$Mutation parse(Map<String, dynamic> json) =>
      CreateUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LoginWithPhoneArguments extends JsonSerializable with EquatableMixin {
  LoginWithPhoneArguments({
    required this.phone,
    required this.code,
  });

  @override
  factory LoginWithPhoneArguments.fromJson(Map<String, dynamic> json) =>
      _$LoginWithPhoneArgumentsFromJson(json);

  late String phone;

  late String code;

  @override
  List<Object?> get props => [phone, code];

  @override
  Map<String, dynamic> toJson() => _$LoginWithPhoneArgumentsToJson(this);
}

final LOGIN_WITH_PHONE_MUTATION_DOCUMENT_OPERATION_NAME = 'LoginWithPhone';
final LOGIN_WITH_PHONE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'LoginWithPhone'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'loginWithPhone'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'phone'),
            value: VariableNode(name: NameNode(value: 'phone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'username'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'firstName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class LoginWithPhoneMutation
    extends GraphQLQuery<LoginWithPhone$Mutation, LoginWithPhoneArguments> {
  LoginWithPhoneMutation({required this.variables});

  @override
  final DocumentNode document = LOGIN_WITH_PHONE_MUTATION_DOCUMENT;

  @override
  final String operationName =
      LOGIN_WITH_PHONE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final LoginWithPhoneArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  LoginWithPhone$Mutation parse(Map<String, dynamic> json) =>
      LoginWithPhone$Mutation.fromJson(json);
}

final LOGOUT_MUTATION_DOCUMENT_OPERATION_NAME = 'Logout';
final LOGOUT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Logout'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'logout'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class LogoutMutation extends GraphQLQuery<Logout$Mutation, JsonSerializable> {
  LogoutMutation();

  @override
  final DocumentNode document = LOGOUT_MUTATION_DOCUMENT;

  @override
  final String operationName = LOGOUT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];

  @override
  Logout$Mutation parse(Map<String, dynamic> json) =>
      Logout$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RegisterWithPhoneArguments extends JsonSerializable with EquatableMixin {
  RegisterWithPhoneArguments({
    required this.phone,
    required this.code,
    required this.password,
    this.username,
  });

  @override
  factory RegisterWithPhoneArguments.fromJson(Map<String, dynamic> json) =>
      _$RegisterWithPhoneArgumentsFromJson(json);

  late String phone;

  late String code;

  late String password;

  final String? username;

  @override
  List<Object?> get props => [phone, code, password, username];

  @override
  Map<String, dynamic> toJson() => _$RegisterWithPhoneArgumentsToJson(this);
}

final REGISTER_WITH_PHONE_MUTATION_DOCUMENT_OPERATION_NAME =
    'RegisterWithPhone';
final REGISTER_WITH_PHONE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RegisterWithPhone'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'registerWithPhone'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'phone'),
            value: VariableNode(name: NameNode(value: 'phone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'username'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'firstName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class RegisterWithPhoneMutation extends GraphQLQuery<RegisterWithPhone$Mutation,
    RegisterWithPhoneArguments> {
  RegisterWithPhoneMutation({required this.variables});

  @override
  final DocumentNode document = REGISTER_WITH_PHONE_MUTATION_DOCUMENT;

  @override
  final String operationName =
      REGISTER_WITH_PHONE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RegisterWithPhoneArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  RegisterWithPhone$Mutation parse(Map<String, dynamic> json) =>
      RegisterWithPhone$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SendVerificationCodeArguments extends JsonSerializable
    with EquatableMixin {
  SendVerificationCodeArguments({required this.phone});

  @override
  factory SendVerificationCodeArguments.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationCodeArgumentsFromJson(json);

  late String phone;

  @override
  List<Object?> get props => [phone];

  @override
  Map<String, dynamic> toJson() => _$SendVerificationCodeArgumentsToJson(this);
}

final SEND_VERIFICATION_CODE_MUTATION_DOCUMENT_OPERATION_NAME =
    'SendVerificationCode';
final SEND_VERIFICATION_CODE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendVerificationCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sendVerificationCode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'phone'),
            value: VariableNode(name: NameNode(value: 'phone')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class SendVerificationCodeMutation extends GraphQLQuery<
    SendVerificationCode$Mutation, SendVerificationCodeArguments> {
  SendVerificationCodeMutation({required this.variables});

  @override
  final DocumentNode document = SEND_VERIFICATION_CODE_MUTATION_DOCUMENT;

  @override
  final String operationName =
      SEND_VERIFICATION_CODE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final SendVerificationCodeArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  SendVerificationCode$Mutation parse(Map<String, dynamic> json) =>
      SendVerificationCode$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserArguments extends JsonSerializable with EquatableMixin {
  UpdateUserArguments({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.birthDate,
    this.deathDate,
    this.milkName,
    this.phone,
    this.gender,
    this.birthPlaceId,
    this.burialPlaceId,
    this.familyId,
  });

  @override
  factory UpdateUserArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserArgumentsFromJson(json);

  late String id;

  final String? firstName;

  final String? lastName;

  final String? email;

  final DateTime? birthDate;

  final DateTime? deathDate;

  final String? milkName;

  final String? phone;

  final String? gender;

  final String? birthPlaceId;

  final String? burialPlaceId;

  final String? familyId;

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        email,
        birthDate,
        deathDate,
        milkName,
        phone,
        gender,
        birthPlaceId,
        burialPlaceId,
        familyId
      ];

  @override
  Map<String, dynamic> toJson() => _$UpdateUserArgumentsToJson(this);
}

final UPDATE_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'UpdateUser';
final UPDATE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'birthDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deathDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'milkName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gender')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'birthPlaceId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'burialPlaceId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'firstName'),
            value: VariableNode(name: NameNode(value: 'firstName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'lastName'),
            value: VariableNode(name: NameNode(value: 'lastName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'birthDate'),
            value: VariableNode(name: NameNode(value: 'birthDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'deathDate'),
            value: VariableNode(name: NameNode(value: 'deathDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'milkName'),
            value: VariableNode(name: NameNode(value: 'milkName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'phone'),
            value: VariableNode(name: NameNode(value: 'phone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'gender'),
            value: VariableNode(name: NameNode(value: 'gender')),
          ),
          ArgumentNode(
            name: NameNode(value: 'birthPlaceId'),
            value: VariableNode(name: NameNode(value: 'birthPlaceId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'burialPlaceId'),
            value: VariableNode(name: NameNode(value: 'burialPlaceId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'username'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'firstName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'birthDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deathDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'milkName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'birthPlace'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'burialPlace'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'family'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'familyId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'familyCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class UpdateUserMutation
    extends GraphQLQuery<UpdateUser$Mutation, UpdateUserArguments> {
  UpdateUserMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  UpdateUser$Mutation parse(Map<String, dynamic> json) =>
      UpdateUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllFamiliesArguments extends JsonSerializable with EquatableMixin {
  AllFamiliesArguments({
    this.offset,
    this.limit,
  });

  @override
  factory AllFamiliesArguments.fromJson(Map<String, dynamic> json) =>
      _$AllFamiliesArgumentsFromJson(json);

  final int? offset;

  final int? limit;

  @override
  List<Object?> get props => [offset, limit];

  @override
  Map<String, dynamic> toJson() => _$AllFamiliesArgumentsToJson(this);
}

final ALL_FAMILIES_QUERY_DOCUMENT_OPERATION_NAME = 'AllFamilies';
final ALL_FAMILIES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllFamilies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '0')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '10')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allFamilies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'familyId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'familyCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class AllFamiliesQuery
    extends GraphQLQuery<AllFamilies$Query, AllFamiliesArguments> {
  AllFamiliesQuery({required this.variables});

  @override
  final DocumentNode document = ALL_FAMILIES_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_FAMILIES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllFamiliesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  AllFamilies$Query parse(Map<String, dynamic> json) =>
      AllFamilies$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllLocationsArguments extends JsonSerializable with EquatableMixin {
  AllLocationsArguments({
    this.offset,
    this.limit,
  });

  @override
  factory AllLocationsArguments.fromJson(Map<String, dynamic> json) =>
      _$AllLocationsArgumentsFromJson(json);

  final int? offset;

  final int? limit;

  @override
  List<Object?> get props => [offset, limit];

  @override
  Map<String, dynamic> toJson() => _$AllLocationsArgumentsToJson(this);
}

final ALL_LOCATIONS_QUERY_DOCUMENT_OPERATION_NAME = 'AllLocations';
final ALL_LOCATIONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllLocations'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '0')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '10')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allLocations'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'latitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'longitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class AllLocationsQuery
    extends GraphQLQuery<AllLocations$Query, AllLocationsArguments> {
  AllLocationsQuery({required this.variables});

  @override
  final DocumentNode document = ALL_LOCATIONS_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_LOCATIONS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllLocationsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  AllLocations$Query parse(Map<String, dynamic> json) =>
      AllLocations$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllRelationshipsArguments extends JsonSerializable with EquatableMixin {
  AllRelationshipsArguments({
    required this.userId,
    this.offset,
    this.limit,
  });

  @override
  factory AllRelationshipsArguments.fromJson(Map<String, dynamic> json) =>
      _$AllRelationshipsArgumentsFromJson(json);

  late String userId;

  final int? offset;

  final int? limit;

  @override
  List<Object?> get props => [userId, offset, limit];

  @override
  Map<String, dynamic> toJson() => _$AllRelationshipsArgumentsToJson(this);
}

final ALL_RELATIONSHIPS_QUERY_DOCUMENT_OPERATION_NAME = 'AllRelationships';
final ALL_RELATIONSHIPS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllRelationships'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '0')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '10')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allRelationships'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'relationshipType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class AllRelationshipsQuery
    extends GraphQLQuery<AllRelationships$Query, AllRelationshipsArguments> {
  AllRelationshipsQuery({required this.variables});

  @override
  final DocumentNode document = ALL_RELATIONSHIPS_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_RELATIONSHIPS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllRelationshipsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  AllRelationships$Query parse(Map<String, dynamic> json) =>
      AllRelationships$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllUsersArguments extends JsonSerializable with EquatableMixin {
  AllUsersArguments({
    this.offset,
    this.limit,
  });

  @override
  factory AllUsersArguments.fromJson(Map<String, dynamic> json) =>
      _$AllUsersArgumentsFromJson(json);

  final int? offset;

  final int? limit;

  @override
  List<Object?> get props => [offset, limit];

  @override
  Map<String, dynamic> toJson() => _$AllUsersArgumentsToJson(this);
}

final ALL_USERS_QUERY_DOCUMENT_OPERATION_NAME = 'AllUsers';
final ALL_USERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllUsers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '0')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '10')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allUsers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isStaff'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateJoined'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deathDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'milkName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthPlace'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'burialPlace'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'familyId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'familyCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'location'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class AllUsersQuery extends GraphQLQuery<AllUsers$Query, AllUsersArguments> {
  AllUsersQuery({required this.variables});

  @override
  final DocumentNode document = ALL_USERS_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_USERS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllUsersArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  AllUsers$Query parse(Map<String, dynamic> json) =>
      AllUsers$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FamilyArguments extends JsonSerializable with EquatableMixin {
  FamilyArguments({required this.id});

  @override
  factory FamilyArguments.fromJson(Map<String, dynamic> json) =>
      _$FamilyArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$FamilyArgumentsToJson(this);
}

final FAMILY_QUERY_DOCUMENT_OPERATION_NAME = 'Family';
final FAMILY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Family'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'family'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'familyId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'familyCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class FamilyQuery extends GraphQLQuery<Family$Query, FamilyArguments> {
  FamilyQuery({required this.variables});

  @override
  final DocumentNode document = FAMILY_QUERY_DOCUMENT;

  @override
  final String operationName = FAMILY_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FamilyArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Family$Query parse(Map<String, dynamic> json) => Family$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LocationArguments extends JsonSerializable with EquatableMixin {
  LocationArguments({required this.id});

  @override
  factory LocationArguments.fromJson(Map<String, dynamic> json) =>
      _$LocationArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$LocationArgumentsToJson(this);
}

final LOCATION_QUERY_DOCUMENT_OPERATION_NAME = 'Location';
final LOCATION_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Location'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'location'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'latitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'longitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class LocationQuery extends GraphQLQuery<Location$Query, LocationArguments> {
  LocationQuery({required this.variables});

  @override
  final DocumentNode document = LOCATION_QUERY_DOCUMENT;

  @override
  final String operationName = LOCATION_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final LocationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Location$Query parse(Map<String, dynamic> json) =>
      Location$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RelationshipArguments extends JsonSerializable with EquatableMixin {
  RelationshipArguments({required this.id});

  @override
  factory RelationshipArguments.fromJson(Map<String, dynamic> json) =>
      _$RelationshipArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$RelationshipArgumentsToJson(this);
}

final RELATIONSHIP_QUERY_DOCUMENT_OPERATION_NAME = 'Relationship';
final RELATIONSHIP_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Relationship'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'relationship'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'relationshipType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class RelationshipQuery
    extends GraphQLQuery<Relationship$Query, RelationshipArguments> {
  RelationshipQuery({required this.variables});

  @override
  final DocumentNode document = RELATIONSHIP_QUERY_DOCUMENT;

  @override
  final String operationName = RELATIONSHIP_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final RelationshipArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Relationship$Query parse(Map<String, dynamic> json) =>
      Relationship$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UserArguments extends JsonSerializable with EquatableMixin {
  UserArguments({required this.id});

  @override
  factory UserArguments.fromJson(Map<String, dynamic> json) =>
      _$UserArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$UserArgumentsToJson(this);
}

final USER_QUERY_DOCUMENT_OPERATION_NAME = 'User';
final USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isStaff'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateJoined'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deathDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'milkName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthPlace'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'burialPlace'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'familyId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'familyCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'location'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class UserQuery extends GraphQLQuery<User$Query, UserArguments> {
  UserQuery({required this.variables});

  @override
  final DocumentNode document = USER_QUERY_DOCUMENT;

  @override
  final String operationName = USER_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final UserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  User$Query parse(Map<String, dynamic> json) => User$Query.fromJson(json);
}
