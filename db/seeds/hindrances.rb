min = HindranceType.find_or_create_by(id: 1, name: 'Minor')
maj = HindranceType.find_or_create_by(id: 2, name: 'Major')
rac = HindranceType.find_or_create_by(id: 3, name: 'Racial')

# Racial
h = Hindrance.find_or_create_by(name: 'Slow', hindrance_type: rac, description: 'You have a Pace of 5')
h.add_modifier Modifier.find_or_create_by(mod: ModSecondary.find_or_create_by(mods: ModsPace.find_or_create_by(mod: -1)))