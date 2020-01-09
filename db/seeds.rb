# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create(id: 4, name: "Edvard Munch", age: '81', style: "Painting and Graphics", img:'https://m.dw.com/image/17276191_102.jpg')
Artist.create(name: "Michelangelo", age: '98', style: "Fresco Painting", img: 'http://scihi.org/wp-content/uploads/2017/03/Miguel_A%CC%81ngel_por_Daniele_da_Volterra_detalle_brightened-518x600.jpg')
Artist.create(name: "Vincent Van Gogh", age: '37', style: "Impasto", img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/VanGogh_1887_Selbstbildnis.jpg/475px-VanGogh_1887_Selbstbildnis.jpg')


#Artwork.create([{ title: 'The Sream'}, { type: "paintings and pastel" }, { date: '1893' }, { price: '$119.9m' }, { artist_id: 1 }])

Artwork.create(title: 'The Scream', date: '1893', price: '$119.9m',artwork_type:"paintings and pastel", Artist_id: 1, img:'https://upload.wikimedia.org/wikipedia/commons/f/f4/The_Scream.jpg')
Artwork.create(title: 'Post-Impressionism', date: '1886', price: '$78.1m',artwork_type:"Oil Pastel", Artist_id: 3, img:'https://www.oxfordartonline.com/fileasset/SubGuide_Impress_Cezanne.jpg')
Artwork.create(title: 'Head of a Faun', date: '1489', price: '$69.5m',artwork_type:"Marble", Artist_id: 2, img:'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Calco_della_testa_di_satiro_attr._al_buonarroti_e_rubato_dal_bargello_nel_1944.JPG/1024px-Calco_della_testa_di_satiro_attr._al_buonarroti_e_rubato_dal_bargello_nel_1944.JPG')
Artwork.create(title: 'Horse and Cart on a Country Road', date: '1880', price: '$102m',artwork_type:"Oil Painting", Artist_id: 1, img:'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Horse_and_Cart_on_a_Country_Road.jpg/966px-Horse_and_Cart_on_a_Country_Road.jpg')
Artist.create(id: 7, name: "Edvard Munch", age: 81, style: "Painting and Graphics", created_at: "2019-12-25 06:56:41", updated_at: "2019-12-25 06:56:41", img: "https://m.dw.com/image/17276191_102.jpg")
