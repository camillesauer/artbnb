# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "suppression des artworks et des users"
Artwork.destroy_all
User.destroy_all
puts "création des users"

user_1 = User.create(name: "camille", last_name: "sauer", email: "camille-sauer@hotmail.fr", password: "123456")
user_2 = User.create(name: "martin", last_name: "sapier", email: "martin@hotmail.fr", password: "123456")
user_3 = User.create(name: "john", last_name: "klein", email: "john@hotmail.fr", password: "123456")
user_4 = User.create(name: "will", last_name: "juthier", email: "will@hotmail.fr", password: "123456")
user_5 = User.create(name: "mike", last_name: "ferson", email: "mike@hotmail.fr", password: "123456")

puts "création des artworks"

Artwork.create( title: "Mona Lisa", description: "La Joconde, ou Portrait de Mona Lisa, est un tableau de l'artiste Léonard de Vinci, réalisé entre 1503 et 1506 ou entre 1513 et 15161,2, et peut-être jusqu'à 1519 (l'artiste étant mort cette année-là, le 2 mai)3, qui représente un portrait mi-corps, probablement celui de la Florentine Lisa Gherardini, épouse de Francesco del Giocondo. ", price: "3000/per day", dimension: "40 x 40cm", category: "painting", user: user_1, address: '16 Villa Gaudelet, Paris')
Artwork.create( title: "BAL DU MOULIN DE LA GALETTE", description: "Elle est exposée au musée d'Orsay à Paris et est l'un des chefs-d'oeuvre les plus célèbres de l'impressionnisme. La peinture dépeint un dimanche après-midi typique au Moulin de la Galette, dans le quartier de Montmartre, à Paris. Vers la fin du 19e siècle, les Parisiens de la classe ouvrière se déguisaient et passaient du temps à danser, boire et manger des galettes dans la soirée. ", price: "8000/per day", dimension: "40 x 40cm", category: "painting", user: user_2, address: '62 rue julien lacroix, Paris')
Artwork.create( title: "LA NUIT ÉTOILÉE", description: "Cette peinture de Vincent Van Gogh, montre la vue de la fenêtre du sanatorium de Saint-Rémy-de-Provence (situé dans le Sud de la France), durant la nuit. Elle a cependant été peinte de mémoire, au cours de la journée. Elle est conservée dans la collection permanente du Museum of Modern Art à New York, léguée par Lillie P. Bliss en 1941. L’une des oeuvres les plus populaires de Van Gogh, la peinture est largement considérée comme son « opus magnum ».. ", price: "60000/per day", dimension: "40 x 40cm", category: "painting", user: user_3, address: '2 rue buisson, Paris')
Artwork.create( title: "LA GRANDE VAGUE DE KANAGAWA", description: "Cette gravure sur bois est l'un des ouvrages les plus reconnus de l'art japonais dans le monde. Elle représente une énorme vague qui menace des bateaux près de la préfecture japonaise de Kanagawa. Bien que parfois considérée comme un tsunami, la vague est, comme le mentionne le titre de l'image, plus susceptible d'être un grand okinami (littéralement « vague de la Haute Mer »). Comme dans toutes les estampes de la série, elle représente la région autour du mont Fuji dans des conditions particulières et la montagne elle-même apparaît dans le fond. ", price: "3000/per day", dimension: "40 x 40cm", category: "painting", user: user_1, address: '3 avenue foch, Paris')
Artwork.create( title: "LE FILS DE L'HOMME", description: "René Magritte l’a peinte comme un autoportrait. La peinture est composée d'un homme vêtu d'un manteau et d'un chapeau melon, debout, en face d'un petit mur, au-delà duquel on devine la mer et un ciel nuageux. Le visage de l'homme est en grande partie masqué par une pomme verte qui semble flotter dans le vide. ", price: "9000/per day", dimension: "40 x 40cm", category: "painting", user: user_1, address: '16 Avenue des champs-elysées, Paris')
Artwork.create( title: "GUERNICA", description: "Guernica est un tableau de Pablo Picasso. Cette oeuvre d'art a été créée en réponse au bombardement de Guernica par l'aviation allemande et italienne, à la demande des forces espagnoles nationalistes, le 26 avril 1937, durant la guerre civile espagnole. ", price: "7000/per day", dimension: "40 x 40cm", category: "painting", user:user_3, address: '16 avenue du montparnasse, Paris')
Artwork.create( title: "LA RONDE NUIT ", description: "Il s’agit d’un portrait militaire peint en 1642 et commandé par le capitaine Banning Cocq pour être suspendu dans la Maison des Arquebusiers récemment construite à Amsterdam, ou peut-être pour honorer la visite de la reine française en exil Marie de Médicis. ", price: "10000/per day", dimension: "40 x 40cm", category: "painting", user:user_1, address: '16 rue de Belleville, Paris')
