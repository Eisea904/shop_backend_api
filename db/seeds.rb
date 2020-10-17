# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Party.destroy_all
Party.reset_pk_sequence
Item.destroy_all
Item.reset_pk_sequence
Inventory.destroy_all
Inventory.reset_pk_sequence

# Party

party = Party.create(party_name: "The Party", roses: 0, electrum: 0)


# Items

chalk = Item.create(item_name: "Chalk", description: "1 piece", price: 1, magical: false, weight: 0)
crowbar = Item.create(item_name: "Crowbar", description: "Crowbar: Break open or break locks, door jamb", price: 2, magical: false, weight: 5)
dungeoneers_pack = Item.create(item_name: "Dungeoneer's Pack", description: "Usefull Equipment, PHB151", price: 25, magical: false, weight: 60)
explorers_pack = Item.create(item_name: "Explorer's Pack", description: "Usefull Equipment, PHB151", price: 10, magical: false, weight: 60)
grappling_hook = Item.create(item_name: "Grappling Hook", description: "Climbing, pull, reach", price: 2, magical: false, weight: 4)
healers_kit = Item.create(item_name: "Healer's Kit", description: "First Aid: PHB151 Additionally if... Proficiency: Conscious at 1HP. Healer Feat: 2d4 + 2 once per target per long rest", price: 5, magical: false, weight: 3)
healing_1 = Item.create(item_name: "Potion of Healing", description: "You regain 2d4 + 2 hit points when you drink this potion. The potion's red liquid glimmers when agitated.", price: 50, magical: true, weight: 0.5)
healing_2 = Item.create(item_name: "Potion of Greater Healing", description: "You regain 4d4 + 4 hit points when you drink this potion. The potion's red liquid glimmers when agitated.", price: 50, magical: true, weight: 0.5)
hourglass = Item.create(item_name: "Hourglass/Timer", description: "'Sincronize your watches!' Can be set to ring or trigger event. Rotate to adjust volume & weight", price: 50, magical: true, weight: 1)
lanturn = Item.create(item_name: "Lanturn", description: "Same as Light Cantrip... combustable, see 'Oil Flask", price: 2, magical: false, weight: 4)
oil_flask = Item.create(item_name: "Oil Flask", description: "Spill 5' area. Alt: ranged weapon attack, action, +5 damage if contact with flame", price: 1, magical: false, weight: 1)
oil_flask_holy = Item.create(item_name: "Oil Flask, Holy", description: "Action: Spill or throw to cover 5ft diameter.  Turn Undead effect, but Constitution Check. +10 radiant damage if contact with flame or radiant", price: 50, magical: false, weight: 1)
priests_pack = Item.create(item_name: "Priest's Pack", description: "Usefull Equipment, PHB151", price: 19, magical: false, weight: 25)
thieves_tools = Item.create(item_name: "Thieves' Tools", description: "PHB154", price: 25, magical: false, weight: 1)
 

# Inventory

p_i_1 = Inventory.create(party_id: 1, item_id: 2)
p_i_2 = Inventory.create(party_id: 1, item_id: 5)
p_i_3 = Inventory.create(party_id: 1, item_id: 6)
p_i_4 = Inventory.create(party_id: 1, item_id: 7)
p_i_5 = Inventory.create(party_id: 1, item_id: 10)
p_i_6 = Inventory.create(party_id: 1, item_id: 14)