# k3
Dice.find_or_create_by(number: 3, plus: 0)
# k4 - k12
(2..6).each { |no| Dice.find_or_create_by(number: no * 2, plus: 0) }

# k12+1 - k12+10
(1..10).each { |no| Dice.find_or_create_by(number: 12, plus: no) }