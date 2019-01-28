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
  description: "In diesem Einführungskurs lernst du die wichtigsten Theorien, Begriffe und Argumente der Ethik kennen!",
  topic: "ethics",
  duration: "15 Minuten",
  language: "de",
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
    'vintroduction.html.erb',
    'vexample.html.erb',
    'allocateconceptsintroduction.html.erb',
    'allocateconcepts.html.erb',
    'dorkintroduction.html.erb',
    'dork.html.erb',
    'abschluss',
    'sources.html.erb'
   ]
)

Course.create(
 title: "Konsequentialismus",
 description: "Darf man etwas Schlimmes tun, um etwas Gutes zu erreichen? Sollen wir Handlungen danach beurteilen, wie viel Glück sie in die Welt bringen? Heiligt der Zweck die Mittel?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 2,
 name_of_picture: "domino.jpg",
 slides: [
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
   'utilubung1',
   'utilubung2',
   'kproblems',
   'kkritiknutzen',
   'kkritikanwendbarkeit',
   'kkritikungleichheit',
   'kkritikfreundschaft',
   'nichtutilitaristischetheorien',
   'utilubung3',
   'utilubung4',
   'abschluss',
 ]
)

Course.create(
 title: "Deontologie",
 description: "Soll man seine Versprechen immer halten? Ist Lügen auch dann schlecht, wenn man gute Absichten hat? Gibt es Regeln, die wir immer befolgen sollten?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 3,
 name_of_picture: "kant.jpg",
 slides: [
   'deontologie',
   'kantianismus',
   'dlugen',
   'dlugen1',
   'dlugen2',
  'dschwarzfahren',
  'deontologists',
  'deonubung',
  'deonubung1',
 'dproblems',
   'dkritikkonflikt',
   'dkritiktragik',
   'deonubung3',
   'deonubung4',
 ]
)

Course.create(
 title: "Tugendethik",
 description: "Was für eine Person soll ich sein? Welche Charaktereigenschaften sind gut und welche schlecht? Gibt es so was wie ein gutes Leben?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 4,
 name_of_picture: "aristotle.jpg",
 slides: [
   'tugendethik',
   'aristoteles',
   'aristoteles1',
   'aristoteles2',
   'aristoteles3',
   'aristoteles4',
   'aristoteles5',
   'vubung',
   'vubung1',
   'vproblems',
   'vkritikvagheit',
   'vkritikorientierung',
   'vubung3',
   'vubung4',
 ]
)

Course.create(
 title: "Kontraktualismus",
 description: "Sind ethische Normen ein Produkt von Verhandlungen? Spielen bei ethischen Fragen unsere Vorlieben und persönlichen Interessen eine Rolle?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 5,
 name_of_picture: "contract.jpg",
 slides: [
   "einfuehrung"
 ]
)

Course.create(
 title: "Feministische Ethik",
 description: "Spielen Unterschiede zwischen den Geschlechtern eine ethische Rolle? Sind traditionelle Ethiken unfair gegenüber Frauen? Gibt es so was wie \"männliche\" und \"weibliche\" Werte?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 8,
 name_of_picture: "equity.jpg",
 slides: [
   "feminismus",
 ]
)

Course.create(
 title: "Tierethik",
 description: "Wie sollen wir mit Tieren umgehen? Dürfen wir alles mit ihnen machen? Oder kann man Tiere auch falsch behandeln?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 6,
 name_of_picture: "fox.jpg",
 slides: [
   "einfuehrung"
 ]
)

Course.create(
 title: "Angewandte Ethik",
 description: "Dürfen wir in Luxus leben, während andere Hunger leiden? Dürfen wir Fleisch aus der Massentierhaltung kaufen? Ist Prostitution immer moralisch verwerflich?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 7,
 name_of_picture: "clima.jpg",
 slides: [
   "einfuehrung"
 ]
)

Course.create(
 title: "Metaethik",
 description: "Ist Ethik eine Wissenschaft? Kann man ethische Fragen jemals wirklich beantworten? Was machen wir, wenn wir ethische Urteile fällen?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 9,
 name_of_picture: "organization.jpg",
 slides: [
   "einfuehrung"
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
