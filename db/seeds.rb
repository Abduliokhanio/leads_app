# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Owner.create(name: "abby")
Owner.create(name: "joe")
Lead.create(owner_id: 1, lead_name: "FBISD", lead_number:"123-456-1234", lead_email:"fake@fbisd.com", lead_web:"fbisd.com", lead_temp:"warm")
Note.create(lead_id:1, owner_id: 1, title:"called", description:"did not answer")