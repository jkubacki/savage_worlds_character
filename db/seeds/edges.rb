bac = EdgeType.find_or_create_by(id: 1, name: 'Background')
com = EdgeType.find_or_create_by(id: 2, name: 'Combat')
lea = EdgeType.find_or_create_by(id: 3, name: 'Leadership')
pow = EdgeType.find_or_create_by(id: 4, name: 'Power')
pro = EdgeType.find_or_create_by(id: 5, name: 'Professional')
soc = EdgeType.find_or_create_by(id: 6, name: 'Social')
wei = EdgeType.find_or_create_by(id: 7, name: 'Weird')
wil = EdgeType.find_or_create_by(id: 8, name: 'Wild Card')
leg = EdgeType.find_or_create_by(id: 9, name: 'Legendary')


novice = Rank.novice
e = Edge.find_or_create_by(name: 'Alertness', edge_type: bac, rank: novice, description: "Not much gets by your hero. He’s very observant and perceptive, and adds +2 to his Notice rolls to hear, see, or otherwise sense the world around him.")
e.add_modifier Modifier.find_or_create_by(mod: ModSkill.find_or_create_by(skill: Skill.notice, mod: 2))

e = Edge.find_or_create_by(name: 'Ambidextrous', edge_type: bac, rank: novice, description: "Your hero is as deft with his left hand as he is with his right. Characters normally suffer a –2 penalty when performing physical tasks with the off-hand (characters are assumed to be right-handed). With this Edge, your warrior ignores the –2 penalty for using his off-hand")
e.add_requirement Requirement.find_or_create_by(req: ReqAttrib.find_or_create_by(attrib: Attrib.agility, dice: Dice.d8))

e = Edge.find_or_create_by(name: 'Arcane Background', edge_type: bac, rank: novice, description: "This is the Edge your character must purchase to have any sort of magical, psionic, or other supernatural ability.")

e = Edge.find_or_create_by(name: 'Arcane Resistance', edge_type: bac, rank: novice, description: "This individual is particularly resistant to magic (including psionics, weird science, etc.), whether by nature or by heritage. He acts as if he had 2 points of Armor when hit by damage-causing arcane powers, and adds +2 to his Trait rolls when resisting opposed powers. Even friendly arcane powers must subtract this modifier to affect the resistant hero.")
e.add_requirement Requirement.find_or_create_by(req: ReqAttrib.find_or_create_by(attrib: Attrib.spirit, dice: Dice.d8))

e = Edge.find_or_create_by(name: 'Improved Arcane Resistance', edge_type: bac, rank: novice, description: "As Arcane Resistance but Armor and resistance are increased to 4.")
e.add_requirement Requirement.find_or_create_by(req: ReqEdge.find_or_create_by(edge: Edge.arcane_resistance))
#
#
# e = Edge.find_or_create_by(name: 'Arcane Background', edge_type: bac, rank: Rank.novice, description: "")
# e.add_modifier Modifier.find_or_create_by(mod: ModSkill.find_or_create_by(skill: Skill.notice, mod: 2))
# e.add_requirement Requirement.find_or_create_by(req: ReqAttrib.find_or_create_by(attrib: Attrib.agility))
#
#
# e = Edge.find_or_create_by(name: 'Arcane Background', edge_type: bac, rank: Rank.novice, description: "")
# e.add_modifier Modifier.find_or_create_by(mod: ModSkill.find_or_create_by(skill: Skill.notice, mod: 2))
# e.add_requirement Requirement.find_or_create_by(req: ReqAttrib.find_or_create_by(attrib: Attrib.agility))
#
#
# e = Edge.find_or_create_by(name: 'Arcane Background', edge_type: bac, rank: Rank.novice, description: "")
# e.add_modifier Modifier.find_or_create_by(mod: ModSkill.find_or_create_by(skill: Skill.notice, mod: 2))
# e.add_requirement Requirement.find_or_create_by(req: ReqAttrib.find_or_create_by(attrib: Attrib.agility))





