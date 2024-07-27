class CharacterData {
  //Основные характеристики персонажа
  final String characterName; // Имя персонажа
  final String characterRace; // Раса персонажа
  final String characterClass; // Класс персонажа
  final String subClass; // Подкласс
  final String background; // Предыстория

  final int level; // Уровень
  final int experience; // Опыт

  final String diceHit; // Кость хитов
  final int maxHitPoints; // Максимальное количество хитов
  final int currentHitPoints; // Текущее количество хитов
  final int temporaryHitPoints; // Временные хиты

  final int initiative; // Инициатива
  final int speed; // Скорость
  final int armorClass; // Класс доспеха
  final bool inspyration; // Вдохновение
  final List<String> conditions; // Состояния
  final int exhaustion; // Истощение

  // Характеристики
  final Map<String, int> attributes; // Характеристики
  final List<String> savingThrows; // Спасброски
  final List<String> skills; // Навыки

  // Атаки и заклинания
  final int proficiencyBonus; // Бонус мастерства
  final List<Map<String, dynamic>> attacks; // Атаки
  final List<String> preparedSpells; // Подготовленные заклинания
  final List<String> abilities; // Способности

  // Владения
  final List<String> languages; // Языки
  final List<String> tools; // Инструменты
  final List<String> weapons; // Оружие

  //Личность и внешность
  final String alignment; // Мировоззрение
  final String biography; // Биография
  final String weight; // Вес
  final String height; // Рост
  final String age; // Возраст
  final String hairColor; // Цвет волос
  final String eyeColor; // Цвет глаз
  final String skinColor; // Цвет кожи

  final String alliesAndOrganizations; // Союзники и организации
  final String purpose; // Цель
  final String ideals; // Идеалы
  final String bonds; // Привязанности
  final String flaws; // Cлабости

  final String notes; // Заметки

  // Снаряжение
  final Map<String, int> coins; // Монеты
  final List<String> equipment; // Снаряжение
  final List<String> tresuares; // Сокровища

  CharacterData({
    this.characterName = 'name',
    this.characterRace = 'race',
    this.characterClass = 'class',
    this.level = 1,
    this.attributes = const {
      'strength': 10,
      'dexterity': 10,
      'constitution': 10,
      'intelligence': 10,
      'wisdom': 10,
      'charisma': 10,
    },
    this.experience = 0,
    this.subClass = 'subClass',
    this.background = '',
    this.diceHit = '',
    this.maxHitPoints = 0,
    this.currentHitPoints = 0,
    this.temporaryHitPoints = 0,
    this.initiative = 0,
    this.speed = 0,
    this.armorClass = 0,
    this.inspyration = false,
    this.conditions = const [],
    this.exhaustion = 0,
    this.savingThrows = const [],
    this.skills = const [],
    this.proficiencyBonus = 0,
    this.attacks = const [],
    this.preparedSpells = const [],
    this.abilities = const [],
    this.languages = const [],
    this.tools = const [],
    this.weapons = const [],
    this.alignment = '',
    this.biography = '',
    this.weight = '',
    this.height = '',
    this.age = '',
    this.hairColor = '',
    this.eyeColor = '',
    this.skinColor = '',
    this.alliesAndOrganizations = '',
    this.purpose = '',
    this.ideals = '',
    this.bonds = '',
    this.flaws = '',
    this.notes = '',
    this.coins = const {},
    this.equipment = const [],
    this.tresuares = const [],
  });

  CharacterData copyWith({
    String? characterName,
    String? characterRace,
    String? characterClass,
    String? subClass,
    String? background,
    int? level,
    int? experience,
    String? diceHit,
    int? maxHitPoints,
    int? currentHitPoints,
    int? temporaryHitPoints,
    int? initiative,
    int? speed,
    int? armorClass,
    bool? inspyration,
    List<String>? conditions,
    int? exhaustion,
    Map<String, int>? attributes,
    List<String>? savingThrows,
    List<String>? skills,
    int? proficiencyBonus,
    List<Map<String, dynamic>>? attacks,
    List<String>? preparedSpells,
    List<String>? abilities,
    List<String>? languages,
    List<String>? tools,
    List<String>? weapons,
    String? alignment,
    String? biography,
    String? weight,
    String? height,
    String? age,
    String? hairColor,
    String? eyeColor,
    String? skinColor,
    String? alliesAndOrganizations,
    String? purpose,
    String? ideals,
    String? bonds,
    String? flaws,
    String? notes,
    Map<String, int>? coins,
    List<String>? equipment,
    List<String>? tresuares,
  }) {
    return CharacterData(
      characterName: characterName ?? this.characterName,
      characterRace: characterRace ?? this.characterRace,
      characterClass: characterClass ?? this.characterClass,
      subClass: subClass ?? this.subClass,
      background: background ?? this.background,
      level: level ?? this.level,
      experience: experience ?? this.experience,
      diceHit: diceHit ?? this.diceHit,
      maxHitPoints: maxHitPoints ?? this.maxHitPoints,
      currentHitPoints: currentHitPoints ?? this.currentHitPoints,
      temporaryHitPoints: temporaryHitPoints ?? this.temporaryHitPoints,
      initiative: initiative ?? this.initiative,
      speed: speed ?? this.speed,
      armorClass: armorClass ?? this.armorClass,
      inspyration: inspyration ?? this.inspyration,
      conditions: conditions ?? this.conditions,
      exhaustion: exhaustion ?? this.exhaustion,
      attributes: attributes ?? this.attributes,
      savingThrows: savingThrows ?? this.savingThrows,
      skills: skills ?? this.skills,
      proficiencyBonus: proficiencyBonus ?? this.proficiencyBonus,
      attacks: attacks ?? this.attacks,
      preparedSpells: preparedSpells ?? this.preparedSpells,
      abilities: abilities ?? this.abilities,
      languages: languages ?? this.languages,
      tools: tools ?? this.tools,
      weapons: weapons ?? this.weapons,
      alignment: alignment ?? this.alignment,
      biography: biography ?? this.biography,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      age: age ?? this.age,
      hairColor: hairColor ?? this.hairColor,
      eyeColor: eyeColor ?? this.eyeColor,
      skinColor: skinColor ?? this.skinColor,
      alliesAndOrganizations:
          alliesAndOrganizations ?? this.alliesAndOrganizations,
      purpose: purpose ?? this.purpose,
      ideals: ideals ?? this.ideals,
      bonds: bonds ?? this.bonds,
      flaws: flaws ?? this.flaws,
      notes: notes ?? this.notes,
      coins: coins ?? this.coins,
      equipment: equipment ?? this.equipment,
      tresuares: tresuares ?? this.tresuares,
    );
  }

  // Метод для отображения информации о персонаже
  @override
  String toString() {
    return '''
      Character Name: $characterName
      Character Race: $characterRace
      Character Class: $characterClass
      Subclass: $subClass
      Background: $background
      Level: $level
      Experience: $experience
      Dice Hit: $diceHit
      Max Hit Points: $maxHitPoints
      Current Hit Points: $currentHitPoints
      Temporary Hit Points: $temporaryHitPoints
      Initiative: $initiative
      Speed: $speed
      Armor Class: $armorClass
      Inspyration: $inspyration
      Conditions: $conditions
      Exhaustion: $exhaustion
      Attributes: $attributes
      Saving Throws: $savingThrows
      Skills: $skills
      Proficiency Bonus: $proficiencyBonus
      Attacks: $attacks
      Prepared Spells: $preparedSpells
      Abilities: $abilities
      Languages: $languages
      Tools: $tools
      Weapons: $weapons
      Alignment: $alignment
      Biography: $biography
      Weight: $weight
      Height: $height
      Age: $age
      Hair Color: $hairColor
      Eye Color: $eyeColor
      Skin Color: $skinColor
      Allies and Organizations: $alliesAndOrganizations
      Purpose: $purpose
      Ideals: $ideals
      Bonds: $bonds
      Flaws: $flaws
      Notes: $notes
      Coins: $coins
      Equipment: $equipment
      Treasures: $tresuares
    ''';
  }
}
