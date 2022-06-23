# TODO: implement your seeds
User.destroy_all
Tree.destroy_all

puts "Creating Users..."

john = User.create!(first_name: 'John', last_name: 'Doe',
email: 'john@gmail.com', password: 'secret')

claude = User.create!(first_name: 'claude', last_name: 'Dae',
email: 'claude@gmail.com', password: 'secret')

mac = User.create!(first_name: 'mac', last_name: 'Due',
email: 'mac@gmail.com', password: 'secret')

lele = User.create!(first_name: 'lele', last_name: 'Die',
email: 'lele@gmail.com', password: 'secret')

puts "Creating Trees..."

Tree.create!(name: 'John’s apple tree', adress: '20 rue des Capucins 69001 Lyon',
description: 'This apple tree produces both sweet and sour apples. They will be
perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
price_per_year: 175, quantity_by_year: 5, fruits: 'Apple', user: john)

Tree.create!(name: 'Claude’s pear tree', adress: '22 rue des Capucins 69001 Lyon',
description: 'This pear tree produces both sweet and sour pears. They will be
perfect to cut a little hunger, or enjoy a juicy pear for the dessert.',
price_per_year: 185, quantity_by_year: 6, fruits: 'Pear', user: claude)

Tree.create!(name: 'mac’s orange tree', adress: '24 rue des Capucins 69001 Lyon',
description: 'This orange tree produces both sweet and sour oranges. They will be
perfect to cut a little hunger, or enjoy a juicy orange for the dessert.',
price_per_year: 195, quantity_by_year: 7, fruits: 'Orange', user: mac)

Tree.create!(name: 'lele’s mango tree', adress: '26 rue des Capucins 69001 Lyon',
description: 'This mango tree produces both sweet and sour mangos. They will be
perfect to cut a little hunger, or enjoy a juicy mango for the dessert.',
price_per_year: 205, quantity_by_year: 8, fruits: 'Mango', user: lele)

puts "db well created"
