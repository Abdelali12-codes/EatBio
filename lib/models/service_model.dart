class ServiceModel {
  final int id;
  final String label;
  final int totalSalon;
  final String icon;
  bool isSelected;
  List<ServiceModel> services;

  ServiceModel({
    this.id,
    this.label,
    this.totalSalon,
    this.icon,
    this.isSelected,
    this.services,
  });
}

List<ServiceModel> allServiceList = [
  ServiceModel(
    id: 3,
    label: 'Gluten',
    totalSalon: 7,
    icon: 'assets/icons/plate.svg',
    isSelected: false,
    services: [
      ServiceModel(
        id: 32,
        label: 'Styling 1',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 33,
        label: 'Styling 2',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 34,
        label: 'Styling 3',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 35,
        label: 'Styling 4',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
    ],
  ),
  ServiceModel(
    id: 2,
    label: 'Diabetec',
    totalSalon: 4,
    icon: 'assets/icons/breakfast.svg',
    isSelected: false,
    services: [
      ServiceModel(
        id: 21,
        label: 'Hairstyle 1',
        isSelected: false,
        icon: 'assets/icons/haircut.svg',
      ),
      ServiceModel(
        id: 22,
        label: 'Hairstyle 2',
        isSelected: false,
        icon: 'assets/icons/haircut.svg',
      ),
      ServiceModel(
        id: 23,
        label: 'Hairstyle 3',
        isSelected: false,
        icon: 'assets/icons/haircut.svg',
      ),
      ServiceModel(
        id: 24,
        label: 'Hairstyle 4',
        isSelected: false,
        icon: 'assets/icons/haircut.svg',
      ),
    ],
  ),
  ServiceModel(
    id: 3,
    label: 'Wheat',
    totalSalon: 7,
    icon: 'assets/icons/salad.svg',
    isSelected: false,
    services: [
      ServiceModel(
        id: 32,
        label: 'Styling 1',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 33,
        label: 'Styling 2',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 34,
        label: 'Styling 3',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 35,
        label: 'Styling 4',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
    ],
  ),
  ServiceModel(
    id: 3,
    label: 'Lemonds',
    totalSalon: 7,
    icon: 'assets/icons/lunch.svg',
    isSelected: false,
    services: [
      ServiceModel(
        id: 32,
        label: 'Styling 1',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 33,
        label: 'Styling 2',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 34,
        label: 'Styling 3',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 35,
        label: 'Styling 4',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
    ],
  ),
  ServiceModel(
    id: 3,
    label: 'Walnets',
    totalSalon: 7,
    icon: 'assets/icons/meat.svg',
    isSelected: false,
    services: [
      ServiceModel(
        id: 32,
        label: 'Styling 1',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 33,
        label: 'Styling 2',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 34,
        label: 'Styling 3',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
      ServiceModel(
        id: 35,
        label: 'Styling 4',
        totalSalon: 7,
        icon: 'assets/icons/styling.svg',
        isSelected: false,
      ),
    ],
  )
];
