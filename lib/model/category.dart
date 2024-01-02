class Category {
  const Category(this.icon, this.title, this.id);

  final String icon;
  final String title;
  final String id;
}

final homeCategories = <Category>[
  const Category('assets/icons/category_face@2x.png', 'Face', 'face'),
  const Category('assets/icons/category_eyes@2x.png', 'Eyes', 'eyes'),
  const Category('assets/icons/category_lips@2x.png', 'Lips', 'lips'),
  const Category('assets/icons/category_others@2x.png', 'Others', 'others'),
];
