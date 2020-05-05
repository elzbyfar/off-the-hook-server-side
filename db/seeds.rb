# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.delete_all
Level.delete_all
User.delete_all
Statistic.delete_all

nemo = Character.create(
  name: "Nemo",
  image: "client-side/App/assets/img/nemo.png",
)
ignatius = Character.create(
  name: "Ignatius",
  image: "client-side/App/assets/img/ignatius.png",
)
tummy_rub = Character.create(
  name: "Tummy Rub",
  image: "client-side/App/assets/img/tummy_rub.png",
)
ariana = Character.create(
  name: "Ariana",
  image: "client-side/App/assets/img/ariana.png",
)
loquacious = Character.create(
  name: "Loquacious",
  image: "client-side/App/assets/img/loquacious.png",
)
garrett = Character.create(
  name: "Garrett",
  image: "client-side/App/assets/img/garrett.png",
)
doug = Character.create(
  name: "Doug",
  image: "client-side/App/assets/img/doug.png",
)
roger_stan_smith = Character.create(
  name: "Roger Stan Smith",
  image: "client-side/App/assets/img/roger_stan_smith.png",
)

la_palma = Level.create(
  name: "Level One: La Palma", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background08.jpg"
)
el_hierro = Level.create(
  name: "Level Two: El Hierro", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background07.jpg"
)
el_gomera = Level.create(
  name: "Level Three: El Gomera", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background06.jpg"
)
tenerife = Level.create(
  name: "Level Four: Tenerife", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background05.jpg"
)
gran_canaria = Level.create(
  name: "Level Five: Gran Canaria", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background04.jpg"
)
fuerteventura = Level.create(
  name: "Level Six: Fuerteventura", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background03.jpg"
)
lanzarote = Level.create(
  name: "Level Seven: Lanzarote", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background02.jpg"
)


lou = User.create(
  name: "Lou",
  password: "123", 
  unlocked_characters: ["Nemo", "Ignatius"], 
  unlocked_levels: ["Level One: La Palma", "Level Two: El Hierro"],
  keys: 1
)

claudia = User.create(
  name: "Clau",
  password: "123", 
  unlocked_characters: ["Nemo", "Ariana"], 
  unlocked_levels: ["Level One: La Palma"],
  keys: 0
)

lou_stat = Statistic.create(
  score: 101, 
  time_remaining: 24, 
  captured_key: true, 
  completed: true, 
  user_id: 1, 
  level_id: 1, 
  character_id: 1
)
lou_stat2 = Statistic.create(
  score: 140, 
  time_remaining: 18, 
  captured_key: false, 
  completed: false, 
  user_id: 1, 
  level_id: 1, 
  character_id: 2
)