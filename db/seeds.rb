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
    'utilubung',
    'reichweite',
    'reformers',
    'varianten',
    'nutzenmaximierung.html.erb',
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
)

Course.create(
 title: "Deontologie",
 description: "Pflichten?",
 topic: "ethics",
 order: 3,
)

Course.create(
 title: "Tugendethik",
 description: "Was sind Tugende und Tugendethik?",
 topic: "ethics",
 order: 4,
)

Course.create(
 title: "Kontraktualismus",
 description: "Kontraktualismus",
 topic: "ethics",
 order: 5,
)

Course.create(
 title: "Feministische Ethik",
 description: "Feministische Ethik",
 topic: "ethics",
 order: 6,
)

Course.create(
 title: "Tierethik",
 description: "Wie dürfen wir mit Tieren umgehen? Dürfen wir alles mit ihnen tun? Oder kann man Tiere auch falsch behandeln?",
 topic: "ethics",
 order: 7,
)

Course.create(
 title: "Angewandte Ethik",
 description: "Angewandte Ethik",
 topic: "ethics",
 order: 8,
)

Course.create(
 title: "Metaethik",
 description: "Metaethik",
 topic: "ethics",
 order: 9,
)

Course.create(
 title: "Gegenwärtige Ethik",
 description: "Gegenwärtige Ethik",
 topic: "ethics",
 order: 10,
)
