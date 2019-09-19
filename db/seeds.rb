# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
'Home', '/', nil,
'Settings', 'settings', 'Home',
'Company profile', 'company_profile', 'Settings',
'Switches', 'switches', 'Settings',
'Help', 'help', 'Home',
'Tickets', 'tickets', 'Help',
'Create a Ticket', 'create', 'Tickets',
'FAQ', 'faqs', 'Help'
].in_groups_of(3) do |group|
  parent = group[2] && SiteMapNode.find_by_link_name(group[2])
  SiteMapNode.create!(
    link_name: group[0],
    link_path: group[1],
    parent: parent
  )
end