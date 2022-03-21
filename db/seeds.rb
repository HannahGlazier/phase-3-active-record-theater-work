puts "Seeding..."

r1 = Role.create(character_name: "Fred")
r2 = Role.create(character_name: "Tina")
r3 = Role.create(character_name: "Sam")

Audition.create(actor: "Robert", location: "LA", phone: 111, hired: true, role_id: r1.id)
Audition.create(actor: "Tim", location: "NY", phone: 222, hired: false, role_id: r2.id)
Audition.create(actor: "Helena", location: "CO", phone: 333, hired: true, role_id: r3.id)
Audition.create(actor: "Jeane", location: "WA", phone: 444, hired: false, role_id: r1.id)

puts "Seeding done!"