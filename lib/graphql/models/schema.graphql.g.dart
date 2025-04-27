// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Families$Query$AllFamilies$Location
    _$Families$Query$AllFamilies$LocationFromJson(Map<String, dynamic> json) =>
        Families$Query$AllFamilies$Location()
          ..address = json['address'] as String?
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble();

Map<String, dynamic> _$Families$Query$AllFamilies$LocationToJson(
        Families$Query$AllFamilies$Location instance) =>
    <String, dynamic>{
      'address': instance.address,
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Families$Query$AllFamilies _$Families$Query$AllFamiliesFromJson(
        Map<String, dynamic> json) =>
    Families$Query$AllFamilies()
      ..description = json['description'] as String?
      ..familyCode = json['familyCode'] as String
      ..familyId = json['familyId'] as String
      ..location = json['location'] == null
          ? null
          : Families$Query$AllFamilies$Location.fromJson(
              json['location'] as Map<String, dynamic>)
      ..name = json['name'] as String;

Map<String, dynamic> _$Families$Query$AllFamiliesToJson(
        Families$Query$AllFamilies instance) =>
    <String, dynamic>{
      'description': instance.description,
      'familyCode': instance.familyCode,
      'familyId': instance.familyId,
      'location': instance.location?.toJson(),
      'name': instance.name,
    };

Families$Query _$Families$QueryFromJson(Map<String, dynamic> json) =>
    Families$Query()
      ..allFamilies = (json['allFamilies'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Families$Query$AllFamilies.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Families$QueryToJson(Families$Query instance) =>
    <String, dynamic>{
      'allFamilies': instance.allFamilies?.map((e) => e?.toJson()).toList(),
    };

Users$Query$AllUsers$Family$Location
    _$Users$Query$AllUsers$Family$LocationFromJson(Map<String, dynamic> json) =>
        Users$Query$AllUsers$Family$Location()
          ..address = json['address'] as String?
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble();

Map<String, dynamic> _$Users$Query$AllUsers$Family$LocationToJson(
        Users$Query$AllUsers$Family$Location instance) =>
    <String, dynamic>{
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Users$Query$AllUsers$Family _$Users$Query$AllUsers$FamilyFromJson(
        Map<String, dynamic> json) =>
    Users$Query$AllUsers$Family()
      ..description = json['description'] as String?
      ..familyCode = json['familyCode'] as String
      ..familyId = json['familyId'] as String
      ..location = json['location'] == null
          ? null
          : Users$Query$AllUsers$Family$Location.fromJson(
              json['location'] as Map<String, dynamic>)
      ..name = json['name'] as String;

Map<String, dynamic> _$Users$Query$AllUsers$FamilyToJson(
        Users$Query$AllUsers$Family instance) =>
    <String, dynamic>{
      'description': instance.description,
      'familyCode': instance.familyCode,
      'familyId': instance.familyId,
      'location': instance.location?.toJson(),
      'name': instance.name,
    };

Users$Query$AllUsers _$Users$Query$AllUsersFromJson(
        Map<String, dynamic> json) =>
    Users$Query$AllUsers()
      ..email = json['email'] as String
      ..family = json['family'] == null
          ? null
          : Users$Query$AllUsers$Family.fromJson(
              json['family'] as Map<String, dynamic>)
      ..firstName = json['firstName'] as String
      ..id = json['id'] as String
      ..isActive = json['isActive'] as bool
      ..isStaff = json['isStaff'] as bool
      ..lastName = json['lastName'] as String
      ..username = json['username'] as String;

Map<String, dynamic> _$Users$Query$AllUsersToJson(
        Users$Query$AllUsers instance) =>
    <String, dynamic>{
      'email': instance.email,
      'family': instance.family?.toJson(),
      'firstName': instance.firstName,
      'id': instance.id,
      'isActive': instance.isActive,
      'isStaff': instance.isStaff,
      'lastName': instance.lastName,
      'username': instance.username,
    };

Users$Query _$Users$QueryFromJson(Map<String, dynamic> json) => Users$Query()
  ..allUsers = (json['allUsers'] as List<dynamic>?)
      ?.map((e) => e == null
          ? null
          : Users$Query$AllUsers.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$Users$QueryToJson(Users$Query instance) =>
    <String, dynamic>{
      'allUsers': instance.allUsers?.map((e) => e?.toJson()).toList(),
    };

CreateFamily$Mutation$CreateFamily$Family$Location
    _$CreateFamily$Mutation$CreateFamily$Family$LocationFromJson(
            Map<String, dynamic> json) =>
        CreateFamily$Mutation$CreateFamily$Family$Location()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$CreateFamily$Mutation$CreateFamily$Family$LocationToJson(
        CreateFamily$Mutation$CreateFamily$Family$Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

CreateFamily$Mutation$CreateFamily$Family
    _$CreateFamily$Mutation$CreateFamily$FamilyFromJson(
            Map<String, dynamic> json) =>
        CreateFamily$Mutation$CreateFamily$Family()
          ..familyId = json['familyId'] as String
          ..familyCode = json['familyCode'] as String
          ..name = json['name'] as String
          ..description = json['description'] as String?
          ..location = json['location'] == null
              ? null
              : CreateFamily$Mutation$CreateFamily$Family$Location.fromJson(
                  json['location'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateFamily$Mutation$CreateFamily$FamilyToJson(
        CreateFamily$Mutation$CreateFamily$Family instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'familyCode': instance.familyCode,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location?.toJson(),
    };

CreateFamily$Mutation$CreateFamily _$CreateFamily$Mutation$CreateFamilyFromJson(
        Map<String, dynamic> json) =>
    CreateFamily$Mutation$CreateFamily()
      ..family = json['family'] == null
          ? null
          : CreateFamily$Mutation$CreateFamily$Family.fromJson(
              json['family'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateFamily$Mutation$CreateFamilyToJson(
        CreateFamily$Mutation$CreateFamily instance) =>
    <String, dynamic>{
      'family': instance.family?.toJson(),
    };

CreateFamily$Mutation _$CreateFamily$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateFamily$Mutation()
      ..createFamily = json['createFamily'] == null
          ? null
          : CreateFamily$Mutation$CreateFamily.fromJson(
              json['createFamily'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateFamily$MutationToJson(
        CreateFamily$Mutation instance) =>
    <String, dynamic>{
      'createFamily': instance.createFamily?.toJson(),
    };

CreateLocation$Mutation$CreateLocation$Location
    _$CreateLocation$Mutation$CreateLocation$LocationFromJson(
            Map<String, dynamic> json) =>
        CreateLocation$Mutation$CreateLocation$Location()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$CreateLocation$Mutation$CreateLocation$LocationToJson(
        CreateLocation$Mutation$CreateLocation$Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

CreateLocation$Mutation$CreateLocation
    _$CreateLocation$Mutation$CreateLocationFromJson(
            Map<String, dynamic> json) =>
        CreateLocation$Mutation$CreateLocation()
          ..location = json['location'] == null
              ? null
              : CreateLocation$Mutation$CreateLocation$Location.fromJson(
                  json['location'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateLocation$Mutation$CreateLocationToJson(
        CreateLocation$Mutation$CreateLocation instance) =>
    <String, dynamic>{
      'location': instance.location?.toJson(),
    };

CreateLocation$Mutation _$CreateLocation$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateLocation$Mutation()
      ..createLocation = json['createLocation'] == null
          ? null
          : CreateLocation$Mutation$CreateLocation.fromJson(
              json['createLocation'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateLocation$MutationToJson(
        CreateLocation$Mutation instance) =>
    <String, dynamic>{
      'createLocation': instance.createLocation?.toJson(),
    };

CreateUser$Mutation$CreateUser$User$BirthPlace
    _$CreateUser$Mutation$CreateUser$User$BirthPlaceFromJson(
            Map<String, dynamic> json) =>
        CreateUser$Mutation$CreateUser$User$BirthPlace()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$CreateUser$Mutation$CreateUser$User$BirthPlaceToJson(
        CreateUser$Mutation$CreateUser$User$BirthPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

CreateUser$Mutation$CreateUser$User$BurialPlace
    _$CreateUser$Mutation$CreateUser$User$BurialPlaceFromJson(
            Map<String, dynamic> json) =>
        CreateUser$Mutation$CreateUser$User$BurialPlace()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$CreateUser$Mutation$CreateUser$User$BurialPlaceToJson(
        CreateUser$Mutation$CreateUser$User$BurialPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

CreateUser$Mutation$CreateUser$User$Family
    _$CreateUser$Mutation$CreateUser$User$FamilyFromJson(
            Map<String, dynamic> json) =>
        CreateUser$Mutation$CreateUser$User$Family()
          ..familyId = json['familyId'] as String
          ..familyCode = json['familyCode'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$CreateUser$Mutation$CreateUser$User$FamilyToJson(
        CreateUser$Mutation$CreateUser$User$Family instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'familyCode': instance.familyCode,
      'name': instance.name,
    };

CreateUser$Mutation$CreateUser$User
    _$CreateUser$Mutation$CreateUser$UserFromJson(Map<String, dynamic> json) =>
        CreateUser$Mutation$CreateUser$User()
          ..id = json['id'] as String
          ..username = json['username'] as String
          ..firstName = json['firstName'] as String
          ..lastName = json['lastName'] as String
          ..email = json['email'] as String
          ..phone = json['phone'] as String
          ..birthDate = json['birthDate'] == null
              ? null
              : DateTime.parse(json['birthDate'] as String)
          ..deathDate = json['deathDate'] == null
              ? null
              : DateTime.parse(json['deathDate'] as String)
          ..milkName = json['milkName'] as String?
          ..gender = $enumDecode(_$UserUserGenderChoicesEnumMap, json['gender'],
              unknownValue: UserUserGenderChoices.artemisUnknown)
          ..birthPlace = json['birthPlace'] == null
              ? null
              : CreateUser$Mutation$CreateUser$User$BirthPlace.fromJson(
                  json['birthPlace'] as Map<String, dynamic>)
          ..burialPlace = json['burialPlace'] == null
              ? null
              : CreateUser$Mutation$CreateUser$User$BurialPlace.fromJson(
                  json['burialPlace'] as Map<String, dynamic>)
          ..family = json['family'] == null
              ? null
              : CreateUser$Mutation$CreateUser$User$Family.fromJson(
                  json['family'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateUser$Mutation$CreateUser$UserToJson(
        CreateUser$Mutation$CreateUser$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'birthDate': instance.birthDate?.toIso8601String(),
      'deathDate': instance.deathDate?.toIso8601String(),
      'milkName': instance.milkName,
      'gender': _$UserUserGenderChoicesEnumMap[instance.gender]!,
      'birthPlace': instance.birthPlace?.toJson(),
      'burialPlace': instance.burialPlace?.toJson(),
      'family': instance.family?.toJson(),
    };

const _$UserUserGenderChoicesEnumMap = {
  UserUserGenderChoices.male: 'MALE',
  UserUserGenderChoices.female: 'FEMALE',
  UserUserGenderChoices.other: 'OTHER',
  UserUserGenderChoices.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

CreateUser$Mutation$CreateUser _$CreateUser$Mutation$CreateUserFromJson(
        Map<String, dynamic> json) =>
    CreateUser$Mutation$CreateUser()
      ..user = json['user'] == null
          ? null
          : CreateUser$Mutation$CreateUser$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateUser$Mutation$CreateUserToJson(
        CreateUser$Mutation$CreateUser instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

CreateUser$Mutation _$CreateUser$MutationFromJson(Map<String, dynamic> json) =>
    CreateUser$Mutation()
      ..createUser = json['createUser'] == null
          ? null
          : CreateUser$Mutation$CreateUser.fromJson(
              json['createUser'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateUser$MutationToJson(
        CreateUser$Mutation instance) =>
    <String, dynamic>{
      'createUser': instance.createUser?.toJson(),
    };

LoginWithPhone$Mutation$LoginWithPhone$User
    _$LoginWithPhone$Mutation$LoginWithPhone$UserFromJson(
            Map<String, dynamic> json) =>
        LoginWithPhone$Mutation$LoginWithPhone$User()
          ..id = json['id'] as String
          ..username = json['username'] as String
          ..firstName = json['firstName'] as String
          ..lastName = json['lastName'] as String
          ..email = json['email'] as String
          ..phone = json['phone'] as String
          ..gender = $enumDecode(_$UserUserGenderChoicesEnumMap, json['gender'],
              unknownValue: UserUserGenderChoices.artemisUnknown);

Map<String, dynamic> _$LoginWithPhone$Mutation$LoginWithPhone$UserToJson(
        LoginWithPhone$Mutation$LoginWithPhone$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'gender': _$UserUserGenderChoicesEnumMap[instance.gender]!,
    };

LoginWithPhone$Mutation$LoginWithPhone
    _$LoginWithPhone$Mutation$LoginWithPhoneFromJson(
            Map<String, dynamic> json) =>
        LoginWithPhone$Mutation$LoginWithPhone()
          ..token = json['token'] as String?
          ..user = json['user'] == null
              ? null
              : LoginWithPhone$Mutation$LoginWithPhone$User.fromJson(
                  json['user'] as Map<String, dynamic>)
          ..success = json['success'] as bool?
          ..errors = (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList();

Map<String, dynamic> _$LoginWithPhone$Mutation$LoginWithPhoneToJson(
        LoginWithPhone$Mutation$LoginWithPhone instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user?.toJson(),
      'success': instance.success,
      'errors': instance.errors,
    };

LoginWithPhone$Mutation _$LoginWithPhone$MutationFromJson(
        Map<String, dynamic> json) =>
    LoginWithPhone$Mutation()
      ..loginWithPhone = json['loginWithPhone'] == null
          ? null
          : LoginWithPhone$Mutation$LoginWithPhone.fromJson(
              json['loginWithPhone'] as Map<String, dynamic>);

Map<String, dynamic> _$LoginWithPhone$MutationToJson(
        LoginWithPhone$Mutation instance) =>
    <String, dynamic>{
      'loginWithPhone': instance.loginWithPhone?.toJson(),
    };

Logout$Mutation$Logout _$Logout$Mutation$LogoutFromJson(
        Map<String, dynamic> json) =>
    Logout$Mutation$Logout()..success = json['success'] as bool?;

Map<String, dynamic> _$Logout$Mutation$LogoutToJson(
        Logout$Mutation$Logout instance) =>
    <String, dynamic>{
      'success': instance.success,
    };

Logout$Mutation _$Logout$MutationFromJson(Map<String, dynamic> json) =>
    Logout$Mutation()
      ..logout = json['logout'] == null
          ? null
          : Logout$Mutation$Logout.fromJson(
              json['logout'] as Map<String, dynamic>);

Map<String, dynamic> _$Logout$MutationToJson(Logout$Mutation instance) =>
    <String, dynamic>{
      'logout': instance.logout?.toJson(),
    };

RegisterWithPhone$Mutation$RegisterWithPhone$User
    _$RegisterWithPhone$Mutation$RegisterWithPhone$UserFromJson(
            Map<String, dynamic> json) =>
        RegisterWithPhone$Mutation$RegisterWithPhone$User()
          ..id = json['id'] as String
          ..username = json['username'] as String
          ..firstName = json['firstName'] as String
          ..lastName = json['lastName'] as String
          ..email = json['email'] as String
          ..phone = json['phone'] as String
          ..gender = $enumDecode(_$UserUserGenderChoicesEnumMap, json['gender'],
              unknownValue: UserUserGenderChoices.artemisUnknown);

Map<String, dynamic> _$RegisterWithPhone$Mutation$RegisterWithPhone$UserToJson(
        RegisterWithPhone$Mutation$RegisterWithPhone$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'gender': _$UserUserGenderChoicesEnumMap[instance.gender]!,
    };

RegisterWithPhone$Mutation$RegisterWithPhone
    _$RegisterWithPhone$Mutation$RegisterWithPhoneFromJson(
            Map<String, dynamic> json) =>
        RegisterWithPhone$Mutation$RegisterWithPhone()
          ..token = json['token'] as String?
          ..user = json['user'] == null
              ? null
              : RegisterWithPhone$Mutation$RegisterWithPhone$User.fromJson(
                  json['user'] as Map<String, dynamic>)
          ..success = json['success'] as bool?
          ..errors = (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList();

Map<String, dynamic> _$RegisterWithPhone$Mutation$RegisterWithPhoneToJson(
        RegisterWithPhone$Mutation$RegisterWithPhone instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user?.toJson(),
      'success': instance.success,
      'errors': instance.errors,
    };

RegisterWithPhone$Mutation _$RegisterWithPhone$MutationFromJson(
        Map<String, dynamic> json) =>
    RegisterWithPhone$Mutation()
      ..registerWithPhone = json['registerWithPhone'] == null
          ? null
          : RegisterWithPhone$Mutation$RegisterWithPhone.fromJson(
              json['registerWithPhone'] as Map<String, dynamic>);

Map<String, dynamic> _$RegisterWithPhone$MutationToJson(
        RegisterWithPhone$Mutation instance) =>
    <String, dynamic>{
      'registerWithPhone': instance.registerWithPhone?.toJson(),
    };

SendVerificationCode$Mutation$SendVerificationCode
    _$SendVerificationCode$Mutation$SendVerificationCodeFromJson(
            Map<String, dynamic> json) =>
        SendVerificationCode$Mutation$SendVerificationCode()
          ..success = json['success'] as bool?
          ..errors = (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList();

Map<String, dynamic> _$SendVerificationCode$Mutation$SendVerificationCodeToJson(
        SendVerificationCode$Mutation$SendVerificationCode instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errors': instance.errors,
    };

SendVerificationCode$Mutation _$SendVerificationCode$MutationFromJson(
        Map<String, dynamic> json) =>
    SendVerificationCode$Mutation()
      ..sendVerificationCode = json['sendVerificationCode'] == null
          ? null
          : SendVerificationCode$Mutation$SendVerificationCode.fromJson(
              json['sendVerificationCode'] as Map<String, dynamic>);

Map<String, dynamic> _$SendVerificationCode$MutationToJson(
        SendVerificationCode$Mutation instance) =>
    <String, dynamic>{
      'sendVerificationCode': instance.sendVerificationCode?.toJson(),
    };

UpdateUser$Mutation$UpdateUser$User$BirthPlace
    _$UpdateUser$Mutation$UpdateUser$User$BirthPlaceFromJson(
            Map<String, dynamic> json) =>
        UpdateUser$Mutation$UpdateUser$User$BirthPlace()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUser$User$BirthPlaceToJson(
        UpdateUser$Mutation$UpdateUser$User$BirthPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

UpdateUser$Mutation$UpdateUser$User$BurialPlace
    _$UpdateUser$Mutation$UpdateUser$User$BurialPlaceFromJson(
            Map<String, dynamic> json) =>
        UpdateUser$Mutation$UpdateUser$User$BurialPlace()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUser$User$BurialPlaceToJson(
        UpdateUser$Mutation$UpdateUser$User$BurialPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

UpdateUser$Mutation$UpdateUser$User$Family
    _$UpdateUser$Mutation$UpdateUser$User$FamilyFromJson(
            Map<String, dynamic> json) =>
        UpdateUser$Mutation$UpdateUser$User$Family()
          ..familyId = json['familyId'] as String
          ..familyCode = json['familyCode'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUser$User$FamilyToJson(
        UpdateUser$Mutation$UpdateUser$User$Family instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'familyCode': instance.familyCode,
      'name': instance.name,
    };

UpdateUser$Mutation$UpdateUser$User
    _$UpdateUser$Mutation$UpdateUser$UserFromJson(Map<String, dynamic> json) =>
        UpdateUser$Mutation$UpdateUser$User()
          ..id = json['id'] as String
          ..username = json['username'] as String
          ..firstName = json['firstName'] as String
          ..lastName = json['lastName'] as String
          ..email = json['email'] as String
          ..phone = json['phone'] as String
          ..birthDate = json['birthDate'] == null
              ? null
              : DateTime.parse(json['birthDate'] as String)
          ..deathDate = json['deathDate'] == null
              ? null
              : DateTime.parse(json['deathDate'] as String)
          ..milkName = json['milkName'] as String?
          ..gender = $enumDecode(_$UserUserGenderChoicesEnumMap, json['gender'],
              unknownValue: UserUserGenderChoices.artemisUnknown)
          ..birthPlace = json['birthPlace'] == null
              ? null
              : UpdateUser$Mutation$UpdateUser$User$BirthPlace.fromJson(
                  json['birthPlace'] as Map<String, dynamic>)
          ..burialPlace = json['burialPlace'] == null
              ? null
              : UpdateUser$Mutation$UpdateUser$User$BurialPlace.fromJson(
                  json['burialPlace'] as Map<String, dynamic>)
          ..family = json['family'] == null
              ? null
              : UpdateUser$Mutation$UpdateUser$User$Family.fromJson(
                  json['family'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUser$UserToJson(
        UpdateUser$Mutation$UpdateUser$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'birthDate': instance.birthDate?.toIso8601String(),
      'deathDate': instance.deathDate?.toIso8601String(),
      'milkName': instance.milkName,
      'gender': _$UserUserGenderChoicesEnumMap[instance.gender]!,
      'birthPlace': instance.birthPlace?.toJson(),
      'burialPlace': instance.burialPlace?.toJson(),
      'family': instance.family?.toJson(),
    };

UpdateUser$Mutation$UpdateUser _$UpdateUser$Mutation$UpdateUserFromJson(
        Map<String, dynamic> json) =>
    UpdateUser$Mutation$UpdateUser()
      ..user = json['user'] == null
          ? null
          : UpdateUser$Mutation$UpdateUser$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUserToJson(
        UpdateUser$Mutation$UpdateUser instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

UpdateUser$Mutation _$UpdateUser$MutationFromJson(Map<String, dynamic> json) =>
    UpdateUser$Mutation()
      ..updateUser = json['updateUser'] == null
          ? null
          : UpdateUser$Mutation$UpdateUser.fromJson(
              json['updateUser'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateUser$MutationToJson(
        UpdateUser$Mutation instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser?.toJson(),
    };

AllFamilies$Query$AllFamilies$Location
    _$AllFamilies$Query$AllFamilies$LocationFromJson(
            Map<String, dynamic> json) =>
        AllFamilies$Query$AllFamilies$Location()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$AllFamilies$Query$AllFamilies$LocationToJson(
        AllFamilies$Query$AllFamilies$Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

AllFamilies$Query$AllFamilies _$AllFamilies$Query$AllFamiliesFromJson(
        Map<String, dynamic> json) =>
    AllFamilies$Query$AllFamilies()
      ..familyId = json['familyId'] as String
      ..familyCode = json['familyCode'] as String
      ..name = json['name'] as String
      ..description = json['description'] as String?
      ..location = json['location'] == null
          ? null
          : AllFamilies$Query$AllFamilies$Location.fromJson(
              json['location'] as Map<String, dynamic>);

Map<String, dynamic> _$AllFamilies$Query$AllFamiliesToJson(
        AllFamilies$Query$AllFamilies instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'familyCode': instance.familyCode,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location?.toJson(),
    };

AllFamilies$Query _$AllFamilies$QueryFromJson(Map<String, dynamic> json) =>
    AllFamilies$Query()
      ..allFamilies = (json['allFamilies'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AllFamilies$Query$AllFamilies.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllFamilies$QueryToJson(AllFamilies$Query instance) =>
    <String, dynamic>{
      'allFamilies': instance.allFamilies?.map((e) => e?.toJson()).toList(),
    };

AllLocations$Query$AllLocations _$AllLocations$Query$AllLocationsFromJson(
        Map<String, dynamic> json) =>
    AllLocations$Query$AllLocations()
      ..id = json['id'] as String
      ..latitude = (json['latitude'] as num).toDouble()
      ..longitude = (json['longitude'] as num).toDouble()
      ..address = json['address'] as String?;

Map<String, dynamic> _$AllLocations$Query$AllLocationsToJson(
        AllLocations$Query$AllLocations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

AllLocations$Query _$AllLocations$QueryFromJson(Map<String, dynamic> json) =>
    AllLocations$Query()
      ..allLocations = (json['allLocations'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AllLocations$Query$AllLocations.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllLocations$QueryToJson(AllLocations$Query instance) =>
    <String, dynamic>{
      'allLocations': instance.allLocations?.map((e) => e?.toJson()).toList(),
    };

AllRelationships$Query$AllRelationships
    _$AllRelationships$Query$AllRelationshipsFromJson(
            Map<String, dynamic> json) =>
        AllRelationships$Query$AllRelationships()
          ..relationshipType = $enumDecode(
              _$UserRelationshipRelationshipTypeChoicesEnumMap,
              json['relationshipType'],
              unknownValue:
                  UserRelationshipRelationshipTypeChoices.artemisUnknown);

Map<String, dynamic> _$AllRelationships$Query$AllRelationshipsToJson(
        AllRelationships$Query$AllRelationships instance) =>
    <String, dynamic>{
      'relationshipType': _$UserRelationshipRelationshipTypeChoicesEnumMap[
          instance.relationshipType]!,
    };

const _$UserRelationshipRelationshipTypeChoicesEnumMap = {
  UserRelationshipRelationshipTypeChoices.parent: 'PARENT',
  UserRelationshipRelationshipTypeChoices.child: 'CHILD',
  UserRelationshipRelationshipTypeChoices.sibling: 'SIBLING',
  UserRelationshipRelationshipTypeChoices.spouse: 'SPOUSE',
  UserRelationshipRelationshipTypeChoices.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

AllRelationships$Query _$AllRelationships$QueryFromJson(
        Map<String, dynamic> json) =>
    AllRelationships$Query()
      ..allRelationships = (json['allRelationships'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AllRelationships$Query$AllRelationships.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllRelationships$QueryToJson(
        AllRelationships$Query instance) =>
    <String, dynamic>{
      'allRelationships':
          instance.allRelationships?.map((e) => e?.toJson()).toList(),
    };

AllUsers$Query$AllUsers$BirthPlace _$AllUsers$Query$AllUsers$BirthPlaceFromJson(
        Map<String, dynamic> json) =>
    AllUsers$Query$AllUsers$BirthPlace()
      ..id = json['id'] as String
      ..latitude = (json['latitude'] as num).toDouble()
      ..longitude = (json['longitude'] as num).toDouble()
      ..address = json['address'] as String?;

Map<String, dynamic> _$AllUsers$Query$AllUsers$BirthPlaceToJson(
        AllUsers$Query$AllUsers$BirthPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

AllUsers$Query$AllUsers$BurialPlace
    _$AllUsers$Query$AllUsers$BurialPlaceFromJson(Map<String, dynamic> json) =>
        AllUsers$Query$AllUsers$BurialPlace()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$AllUsers$Query$AllUsers$BurialPlaceToJson(
        AllUsers$Query$AllUsers$BurialPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

AllUsers$Query$AllUsers$Family$Location
    _$AllUsers$Query$AllUsers$Family$LocationFromJson(
            Map<String, dynamic> json) =>
        AllUsers$Query$AllUsers$Family$Location()
          ..id = json['id'] as String
          ..latitude = (json['latitude'] as num).toDouble()
          ..longitude = (json['longitude'] as num).toDouble()
          ..address = json['address'] as String?;

Map<String, dynamic> _$AllUsers$Query$AllUsers$Family$LocationToJson(
        AllUsers$Query$AllUsers$Family$Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

AllUsers$Query$AllUsers$Family _$AllUsers$Query$AllUsers$FamilyFromJson(
        Map<String, dynamic> json) =>
    AllUsers$Query$AllUsers$Family()
      ..familyId = json['familyId'] as String
      ..familyCode = json['familyCode'] as String
      ..name = json['name'] as String
      ..description = json['description'] as String?
      ..location = json['location'] == null
          ? null
          : AllUsers$Query$AllUsers$Family$Location.fromJson(
              json['location'] as Map<String, dynamic>);

Map<String, dynamic> _$AllUsers$Query$AllUsers$FamilyToJson(
        AllUsers$Query$AllUsers$Family instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'familyCode': instance.familyCode,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location?.toJson(),
    };

AllUsers$Query$AllUsers _$AllUsers$Query$AllUsersFromJson(
        Map<String, dynamic> json) =>
    AllUsers$Query$AllUsers()
      ..id = json['id'] as String
      ..username = json['username'] as String
      ..firstName = json['firstName'] as String
      ..lastName = json['lastName'] as String
      ..email = json['email'] as String
      ..isStaff = json['isStaff'] as bool
      ..isActive = json['isActive'] as bool
      ..dateJoined = DateTime.parse(json['dateJoined'] as String)
      ..birthDate = json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String)
      ..deathDate = json['deathDate'] == null
          ? null
          : DateTime.parse(json['deathDate'] as String)
      ..milkName = json['milkName'] as String?
      ..birthPlace = json['birthPlace'] == null
          ? null
          : AllUsers$Query$AllUsers$BirthPlace.fromJson(
              json['birthPlace'] as Map<String, dynamic>)
      ..burialPlace = json['burialPlace'] == null
          ? null
          : AllUsers$Query$AllUsers$BurialPlace.fromJson(
              json['burialPlace'] as Map<String, dynamic>)
      ..phone = json['phone'] as String
      ..family = json['family'] == null
          ? null
          : AllUsers$Query$AllUsers$Family.fromJson(
              json['family'] as Map<String, dynamic>)
      ..gender = $enumDecode(_$UserUserGenderChoicesEnumMap, json['gender'],
          unknownValue: UserUserGenderChoices.artemisUnknown);

Map<String, dynamic> _$AllUsers$Query$AllUsersToJson(
        AllUsers$Query$AllUsers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'isStaff': instance.isStaff,
      'isActive': instance.isActive,
      'dateJoined': instance.dateJoined.toIso8601String(),
      'birthDate': instance.birthDate?.toIso8601String(),
      'deathDate': instance.deathDate?.toIso8601String(),
      'milkName': instance.milkName,
      'birthPlace': instance.birthPlace?.toJson(),
      'burialPlace': instance.burialPlace?.toJson(),
      'phone': instance.phone,
      'family': instance.family?.toJson(),
      'gender': _$UserUserGenderChoicesEnumMap[instance.gender]!,
    };

AllUsers$Query _$AllUsers$QueryFromJson(Map<String, dynamic> json) =>
    AllUsers$Query()
      ..allUsers = (json['allUsers'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AllUsers$Query$AllUsers.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllUsers$QueryToJson(AllUsers$Query instance) =>
    <String, dynamic>{
      'allUsers': instance.allUsers?.map((e) => e?.toJson()).toList(),
    };

Family$Query$Family$Location _$Family$Query$Family$LocationFromJson(
        Map<String, dynamic> json) =>
    Family$Query$Family$Location()
      ..id = json['id'] as String
      ..latitude = (json['latitude'] as num).toDouble()
      ..longitude = (json['longitude'] as num).toDouble()
      ..address = json['address'] as String?;

Map<String, dynamic> _$Family$Query$Family$LocationToJson(
        Family$Query$Family$Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

Family$Query$Family _$Family$Query$FamilyFromJson(Map<String, dynamic> json) =>
    Family$Query$Family()
      ..familyId = json['familyId'] as String
      ..familyCode = json['familyCode'] as String
      ..name = json['name'] as String
      ..description = json['description'] as String?
      ..location = json['location'] == null
          ? null
          : Family$Query$Family$Location.fromJson(
              json['location'] as Map<String, dynamic>);

Map<String, dynamic> _$Family$Query$FamilyToJson(
        Family$Query$Family instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'familyCode': instance.familyCode,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location?.toJson(),
    };

Family$Query _$Family$QueryFromJson(Map<String, dynamic> json) => Family$Query()
  ..family = json['family'] == null
      ? null
      : Family$Query$Family.fromJson(json['family'] as Map<String, dynamic>);

Map<String, dynamic> _$Family$QueryToJson(Family$Query instance) =>
    <String, dynamic>{
      'family': instance.family?.toJson(),
    };

Location$Query$Location _$Location$Query$LocationFromJson(
        Map<String, dynamic> json) =>
    Location$Query$Location()
      ..id = json['id'] as String
      ..latitude = (json['latitude'] as num).toDouble()
      ..longitude = (json['longitude'] as num).toDouble()
      ..address = json['address'] as String?;

Map<String, dynamic> _$Location$Query$LocationToJson(
        Location$Query$Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

Location$Query _$Location$QueryFromJson(Map<String, dynamic> json) =>
    Location$Query()
      ..location = json['location'] == null
          ? null
          : Location$Query$Location.fromJson(
              json['location'] as Map<String, dynamic>);

Map<String, dynamic> _$Location$QueryToJson(Location$Query instance) =>
    <String, dynamic>{
      'location': instance.location?.toJson(),
    };

Relationship$Query$Relationship _$Relationship$Query$RelationshipFromJson(
        Map<String, dynamic> json) =>
    Relationship$Query$Relationship()
      ..relationshipType = $enumDecode(
          _$UserRelationshipRelationshipTypeChoicesEnumMap,
          json['relationshipType'],
          unknownValue: UserRelationshipRelationshipTypeChoices.artemisUnknown);

Map<String, dynamic> _$Relationship$Query$RelationshipToJson(
        Relationship$Query$Relationship instance) =>
    <String, dynamic>{
      'relationshipType': _$UserRelationshipRelationshipTypeChoicesEnumMap[
          instance.relationshipType]!,
    };

Relationship$Query _$Relationship$QueryFromJson(Map<String, dynamic> json) =>
    Relationship$Query()
      ..relationship = json['relationship'] == null
          ? null
          : Relationship$Query$Relationship.fromJson(
              json['relationship'] as Map<String, dynamic>);

Map<String, dynamic> _$Relationship$QueryToJson(Relationship$Query instance) =>
    <String, dynamic>{
      'relationship': instance.relationship?.toJson(),
    };

User$Query$User$BirthPlace _$User$Query$User$BirthPlaceFromJson(
        Map<String, dynamic> json) =>
    User$Query$User$BirthPlace()
      ..id = json['id'] as String
      ..latitude = (json['latitude'] as num).toDouble()
      ..longitude = (json['longitude'] as num).toDouble()
      ..address = json['address'] as String?;

Map<String, dynamic> _$User$Query$User$BirthPlaceToJson(
        User$Query$User$BirthPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

User$Query$User$BurialPlace _$User$Query$User$BurialPlaceFromJson(
        Map<String, dynamic> json) =>
    User$Query$User$BurialPlace()
      ..id = json['id'] as String
      ..latitude = (json['latitude'] as num).toDouble()
      ..longitude = (json['longitude'] as num).toDouble()
      ..address = json['address'] as String?;

Map<String, dynamic> _$User$Query$User$BurialPlaceToJson(
        User$Query$User$BurialPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

User$Query$User$Family$Location _$User$Query$User$Family$LocationFromJson(
        Map<String, dynamic> json) =>
    User$Query$User$Family$Location()
      ..id = json['id'] as String
      ..latitude = (json['latitude'] as num).toDouble()
      ..longitude = (json['longitude'] as num).toDouble()
      ..address = json['address'] as String?;

Map<String, dynamic> _$User$Query$User$Family$LocationToJson(
        User$Query$User$Family$Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

User$Query$User$Family _$User$Query$User$FamilyFromJson(
        Map<String, dynamic> json) =>
    User$Query$User$Family()
      ..familyId = json['familyId'] as String
      ..familyCode = json['familyCode'] as String
      ..name = json['name'] as String
      ..description = json['description'] as String?
      ..location = json['location'] == null
          ? null
          : User$Query$User$Family$Location.fromJson(
              json['location'] as Map<String, dynamic>);

Map<String, dynamic> _$User$Query$User$FamilyToJson(
        User$Query$User$Family instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'familyCode': instance.familyCode,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location?.toJson(),
    };

User$Query$User _$User$Query$UserFromJson(Map<String, dynamic> json) =>
    User$Query$User()
      ..id = json['id'] as String
      ..username = json['username'] as String
      ..firstName = json['firstName'] as String
      ..lastName = json['lastName'] as String
      ..email = json['email'] as String
      ..isStaff = json['isStaff'] as bool
      ..isActive = json['isActive'] as bool
      ..dateJoined = DateTime.parse(json['dateJoined'] as String)
      ..birthDate = json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String)
      ..deathDate = json['deathDate'] == null
          ? null
          : DateTime.parse(json['deathDate'] as String)
      ..milkName = json['milkName'] as String?
      ..birthPlace = json['birthPlace'] == null
          ? null
          : User$Query$User$BirthPlace.fromJson(
              json['birthPlace'] as Map<String, dynamic>)
      ..burialPlace = json['burialPlace'] == null
          ? null
          : User$Query$User$BurialPlace.fromJson(
              json['burialPlace'] as Map<String, dynamic>)
      ..phone = json['phone'] as String
      ..family = json['family'] == null
          ? null
          : User$Query$User$Family.fromJson(
              json['family'] as Map<String, dynamic>)
      ..gender = $enumDecode(_$UserUserGenderChoicesEnumMap, json['gender'],
          unknownValue: UserUserGenderChoices.artemisUnknown);

Map<String, dynamic> _$User$Query$UserToJson(User$Query$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'isStaff': instance.isStaff,
      'isActive': instance.isActive,
      'dateJoined': instance.dateJoined.toIso8601String(),
      'birthDate': instance.birthDate?.toIso8601String(),
      'deathDate': instance.deathDate?.toIso8601String(),
      'milkName': instance.milkName,
      'birthPlace': instance.birthPlace?.toJson(),
      'burialPlace': instance.burialPlace?.toJson(),
      'phone': instance.phone,
      'family': instance.family?.toJson(),
      'gender': _$UserUserGenderChoicesEnumMap[instance.gender]!,
    };

User$Query _$User$QueryFromJson(Map<String, dynamic> json) => User$Query()
  ..user = json['user'] == null
      ? null
      : User$Query$User.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$User$QueryToJson(User$Query instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

CreateFamilyArguments _$CreateFamilyArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateFamilyArguments(
      familyCode: json['familyCode'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      locationId: json['locationId'] as String?,
    );

Map<String, dynamic> _$CreateFamilyArgumentsToJson(
        CreateFamilyArguments instance) =>
    <String, dynamic>{
      'familyCode': instance.familyCode,
      'name': instance.name,
      'description': instance.description,
      'locationId': instance.locationId,
    };

CreateLocationArguments _$CreateLocationArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateLocationArguments(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$CreateLocationArgumentsToJson(
        CreateLocationArguments instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

CreateUserArguments _$CreateUserArgumentsFromJson(Map<String, dynamic> json) =>
    CreateUserArguments(
      username: json['username'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      deathDate: json['deathDate'] == null
          ? null
          : DateTime.parse(json['deathDate'] as String),
      milkName: json['milkName'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      birthPlaceId: json['birthPlaceId'] as String?,
      burialPlaceId: json['burialPlaceId'] as String?,
      familyId: json['familyId'] as String?,
    );

Map<String, dynamic> _$CreateUserArgumentsToJson(
        CreateUserArguments instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'birthDate': instance.birthDate?.toIso8601String(),
      'deathDate': instance.deathDate?.toIso8601String(),
      'milkName': instance.milkName,
      'phone': instance.phone,
      'gender': instance.gender,
      'birthPlaceId': instance.birthPlaceId,
      'burialPlaceId': instance.burialPlaceId,
      'familyId': instance.familyId,
    };

LoginWithPhoneArguments _$LoginWithPhoneArgumentsFromJson(
        Map<String, dynamic> json) =>
    LoginWithPhoneArguments(
      phone: json['phone'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$LoginWithPhoneArgumentsToJson(
        LoginWithPhoneArguments instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'code': instance.code,
    };

RegisterWithPhoneArguments _$RegisterWithPhoneArgumentsFromJson(
        Map<String, dynamic> json) =>
    RegisterWithPhoneArguments(
      phone: json['phone'] as String,
      code: json['code'] as String,
      password: json['password'] as String,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$RegisterWithPhoneArgumentsToJson(
        RegisterWithPhoneArguments instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'code': instance.code,
      'password': instance.password,
      'username': instance.username,
    };

SendVerificationCodeArguments _$SendVerificationCodeArgumentsFromJson(
        Map<String, dynamic> json) =>
    SendVerificationCodeArguments(
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$SendVerificationCodeArgumentsToJson(
        SendVerificationCodeArguments instance) =>
    <String, dynamic>{
      'phone': instance.phone,
    };

UpdateUserArguments _$UpdateUserArgumentsFromJson(Map<String, dynamic> json) =>
    UpdateUserArguments(
      id: json['id'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      deathDate: json['deathDate'] == null
          ? null
          : DateTime.parse(json['deathDate'] as String),
      milkName: json['milkName'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      birthPlaceId: json['birthPlaceId'] as String?,
      burialPlaceId: json['burialPlaceId'] as String?,
      familyId: json['familyId'] as String?,
    );

Map<String, dynamic> _$UpdateUserArgumentsToJson(
        UpdateUserArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'birthDate': instance.birthDate?.toIso8601String(),
      'deathDate': instance.deathDate?.toIso8601String(),
      'milkName': instance.milkName,
      'phone': instance.phone,
      'gender': instance.gender,
      'birthPlaceId': instance.birthPlaceId,
      'burialPlaceId': instance.burialPlaceId,
      'familyId': instance.familyId,
    };

AllFamiliesArguments _$AllFamiliesArgumentsFromJson(
        Map<String, dynamic> json) =>
    AllFamiliesArguments(
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AllFamiliesArgumentsToJson(
        AllFamiliesArguments instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
    };

AllLocationsArguments _$AllLocationsArgumentsFromJson(
        Map<String, dynamic> json) =>
    AllLocationsArguments(
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AllLocationsArgumentsToJson(
        AllLocationsArguments instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
    };

AllRelationshipsArguments _$AllRelationshipsArgumentsFromJson(
        Map<String, dynamic> json) =>
    AllRelationshipsArguments(
      userId: json['userId'] as String,
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AllRelationshipsArgumentsToJson(
        AllRelationshipsArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AllUsersArguments _$AllUsersArgumentsFromJson(Map<String, dynamic> json) =>
    AllUsersArguments(
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AllUsersArgumentsToJson(AllUsersArguments instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
    };

FamilyArguments _$FamilyArgumentsFromJson(Map<String, dynamic> json) =>
    FamilyArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$FamilyArgumentsToJson(FamilyArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

LocationArguments _$LocationArgumentsFromJson(Map<String, dynamic> json) =>
    LocationArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$LocationArgumentsToJson(LocationArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

RelationshipArguments _$RelationshipArgumentsFromJson(
        Map<String, dynamic> json) =>
    RelationshipArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$RelationshipArgumentsToJson(
        RelationshipArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserArguments _$UserArgumentsFromJson(Map<String, dynamic> json) =>
    UserArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$UserArgumentsToJson(UserArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
