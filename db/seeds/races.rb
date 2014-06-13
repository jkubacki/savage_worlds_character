r = Race.find_or_create_by(name: 'Human')
r.add_modifier Modifier.find_or_create_by(mod: ModHindrance.find_or_create_by(hindrance: Hindrance.slow))
r.add_modifier Modifier.find_or_create_by(mod: ModEdge.find_or_create_by(edge: Edge.low_light_vision))
r.add_modifier Modifier.find_or_create_by(mod: ModEdge.find_or_create_by(edge: Edge.tough))