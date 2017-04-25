# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.destroy_all
House.destroy_all

lannister = House.create(name:"Lannister", img_url:"https://s-media-cache-ak0.pinimg.com/736x/d0/b2/c1/d0b2c1070a34ff44acf356b86bb6be64.jpg")
tyrell = House.create(name:"Tyrell", img_url:"https://s-media-cache-ak0.pinimg.com/originals/94/01/3f/94013f53e379a044bf64654b3431c495.jpg")
tully = House.create(name:"Tully", img_url:"https://mir-s3-cdn-cf.behance.net/project_modules/disp/6f89047933845.560b452f50b32.jpg")

characters = Character.create([
  {name: "Margaery Tyrell", img_url: "http://screenprism.com/assets/img/article/o57_1fsvLoZl.jpg", house_id: tyrell.id},
  {name: "Jaime Lannister", img_url: "http://screenprism.com/assets/img/article/jaime-lannister.jpg", house_id: lannister.id},
  {name: "Brynden Tully", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/6/61/6x07_Blackfish.png/revision/latest/scale-to-width-down/350?cb=20160601191023", house_id: tully.id}
  ])
