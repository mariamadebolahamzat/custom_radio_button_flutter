enum GenderType { MALE, FEMALE, OTHER }

extension SelectedGenderType on GenderType {
  String get genderType {
    switch (this) {
      case GenderType.MALE:
        return 'MALE';
      case GenderType.FEMALE:
        return 'FEMALE';
      case GenderType.OTHER:
      default:
        return 'OTHER';
    }
  }
}

GenderType enumType(String genderType) {
  switch (genderType) {
    case 'MALE':
      return GenderType.MALE;
    case 'FEMALE':
      return GenderType.FEMALE;
    case 'OTHER':
    default:
      return GenderType.MALE;
  }
}