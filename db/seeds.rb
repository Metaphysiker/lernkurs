# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Course.create(
  title: "Einführung in die Ethik",
  #description: "Dieser Kurs führt dich in die Ethik ein. Darin lernst du die wichtigsten Theorien, Argumente und Begriffe der Ethik kennen.",
  description: "In diesem Kurs lernst du die wichtigsten Theorien, Begriffe und Argumente kennen.",
  topic: "ethics",
  order: 1,
  name_of_picture: "landscape.jpg",
  slides: [
    'introduction.html.erb',
    'ethicaltheories.html.erb',
    'kintroduction.html.erb',
    'kexample.html.erb',
    'dintroduction.html.erb',
    'dintroduction1.html.erb',
    'dexample.html.erb',
    'dorkintroduction.html.erb',
    'dork.html.erb',
    'vintroduction.html.erb',
    'vexample.html.erb',
    'allocateconceptsintroduction.html.erb',
    'allocateconcepts.html.erb',
    'further.html.erb',
    'konsequentialismus',
    'utilitarismus',
    'nutzen',
    'nutzen1',
    'nutzen2',
    'nutzen3',
    'nutzen4',
    'nutzen5',
    'nutzen6',
    'reichweite',
    'reformers',
    'utilubung',
    'kproblems',
    'kkritiknutzen',
    'kkritikanwendbarkeit',
    'kkritikungleichheit',
    'criticismsintroduction',
    'kinstrument.html.erb',
    'kinstrument1.html.erb',
    'dconflicts.html.erb',
    'vformal.html.erb',
    'moral.html.erb',
    'sources.html.erb'
   ]
)

Course.create(
 title: "Konsequentialismus",
 description: "Kommt es auf die Folgen drauf an?",
 topic: "ethics",
 order: 2,
 name_of_picture: "domino.jpg",
)

Course.create(
 title: "Deontologie",
 description: "Pflichten?",
 topic: "ethics",
 order: 3,
 name_of_picture: "kant.jpg",
)

Course.create(
 title: "Tugendethik",
 description: "Was sind Tugende und Tugendethik?",
 topic: "ethics",
 order: 4,
 name_of_picture: "aristotle.jpg",
)

Course.create(
 title: "Kontraktualismus",
 description: "Kontraktualismus",
 topic: "ethics",
 order: 5,
 name_of_picture: "contract.jpg",
)

Course.create(
 title: "Feministische Ethik",
 description: "Feministische Ethik",
 topic: "ethics",
 order: 6,
 name_of_picture: "equity.jpg",
)

Course.create(
 title: "Tierethik",
 description: "Wie dürfen wir mit Tieren umgehen? Dürfen wir alles mit ihnen tun? Oder kann man Tiere auch falsch behandeln?",
 topic: "ethics",
 order: 7,
 name_of_picture: "fox.jpg",
)

Course.create(
 title: "Angewandte Ethik",
 description: "Angewandte Ethik",
 topic: "ethics",
 order: 8,
 name_of_picture: "clima.jpg",
)

Course.create(
 title: "Metaethik",
 description: "Metaethik",
 topic: "ethics",
 order: 9,
 name_of_picture: "organization.jpg",
)

Course.create(
 title: "Gegenwärtige Ethik",
 description: "Gegenwärtige Ethik",
 topic: "ethics",
 order: 10,
 name_of_picture: "grell.jpg",
)
