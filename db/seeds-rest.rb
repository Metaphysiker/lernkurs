# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create(
 id: 5,
 title: "Kontraktualismus",
 description: "Sind ethische Normen ein Produkt von Verhandlungen? Spielen bei ethischen Fragen unsere Vorlieben und persönlichen Interessen eine Rolle?",
 topic: "ethics",
 duration: "10 Minuten",
 language: "de",
 order: 5,
 name_of_picture: "contract.jpg",
 slides: [
   "kontraktualismus",
   "vertrag",
   "vertrag1",
   "vertrag2",
   "vertrag3",
   "vertrag4",
   "hobbes",
   "hobbes1",
   "hobbes2",
   "rawls",
   "rawls1",
   "rawls2",
   "rawls3",
   "ktproblems",
   "ktkritikmoralvsinteresse",
   "ktkritikpartnersincrime",
   'abschluss',
   'sources'
 ]
)

Course.create(
 id: 8,
 title: "Feministische Ethik",
 description: "Spielen Unterschiede zwischen den Geschlechtern eine ethische Rolle? Sind traditionelle Ethiken unfair gegenüber Frauen? Gibt es so was wie \"männliche\" und \"weibliche\" Werte?",
 topic: "ethics",
 duration: "10 Minuten",
 language: "de",
 order: 8,
 name_of_picture: "equity.jpg",
 slides: [
   "feminismus",
   "benachteiligung",
   "benachteiligung1",
   "benachteiligung2",
   "benachteiligung3",
   "benachteiligung4",
   "benachteiligung5",
   "benachteiligung6",
   "benachteiligung7",
   "benachteiligung8",
   "benachteiligung9",
   "benachteiligung10",
   'abschluss',
   'sources'
 ]
)

Course.create(
 id: 6,
 title: "Tierethik",
 description: "Wie sollen wir mit Tieren umgehen? Dürfen wir alles mit ihnen machen? Oder kann man Tiere auch falsch behandeln?",
 topic: "ethics",
 duration: "10 Minuten",
 language: "de",
 order: 6,
 name_of_picture: "fox.jpg",
 slides: [
   "tierethik",
   "anthropologischedifferenz",
   "anthropozentrismus",
   "anthropologischedifferenz1",
   "anthropologischedifferenz2",
   "extensionsmodell",
   "extensionsmodell1",
   "pathozentrismus",
   "pathozentrismus1",
   "biozentrismus",
   "biozentrismus1",
   "aquin",
   "aquin1",
   "singer",
   "singer1",
   "singer2",
   "anthropologischedifferenz3",
   'abschluss',
   'sources'
 ]
)

Course.create(
 id: 7,
 title: "Angewandte Ethik",
 description: "Dürfen wir in Luxus leben, während andere Hunger leiden? Dürfen wir Fleisch aus der Massentierhaltung kaufen? Ist Prostitution immer moralisch verwerflich?",
 topic: "ethics",
 duration: "10 Minuten",
 language: "de",
 order: 7,
 name_of_picture: "clima.jpg",
 slides: [
   "angewandteethik",
   "gleichheit",
   "gleichheit1",
   "gleichheit2",
   "gleichheit3",
   "luxus",
   "luxus1",
   "luxus2",
   "luxus3",
   "luxus4",
   "sterbehilfe",
   "sterbehilfe1",
   "sterbehilfe2",
   "sterbehilfe3",
   'abschluss',
   'sources'
  ]
)

Course.create(
 id: 9,
 title: "Abschlussprüfung",
 description: "Prüfe dein Wissen! Nach Bestehen dieser Prüfung erhältst du ein Diplom!",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 9,
 name_of_picture: "organization.jpg",
 slides: [
   "introduction",
   "grundbegriffe",
   "grundbegriffe1",
   "brand1",
   "brand2",
   "brand3",
   "brand4",
   'abschluss',
   'sources'
 ]
)

Course.all.each do |course|
  course.update(slug: course.title.parameterize)
end

=begin
Course.create(
 title: "Gegenwärtige Ethik",
 description: "Gegenwärtige Ethik",
 topic: "ethics",
 order: 10,
 name_of_picture: "grell.jpg",
 slides: [
   "einfuehrung"
 ]
)

=end
