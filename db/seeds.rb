# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Course.create(
  id: 1,
  title: "Einführung in die Ethik",
  #description: "Dieser Kurs führt dich in die Ethik ein. Darin lernst du die wichtigsten Theorien, Argumente und Begriffe der Ethik kennen.",
  description: "In diesem Einführungskurs lernst du die wichtigsten Theorien, Begriffe und Argumente der Ethik kennen!",
  keywords: "Ethik, Ethische Theorien, Ethisch, Moral, Moralphilosophie, Philosophie, Konsequentialismus, Utilitarismus, Deontologie, Pflichtethik, Tugendethik",
  topic: "ethics",
  duration: "15 Minuten",
  language: "de",
  order: 1,
  modul: "Einführungsmodul",
  name_of_picture: "landscape.jpg",
  slides: [
    'why',
    'why1',
    'kompetenzen',
    'introduction',
    'introduction1',
    'ethicaltheories',
    'ethicaltheories1',
    'ethicaltheories2',
    'kintroduction',
    'kintroduction1',
    'kexample',
    'kexample1',
    'dintroduction',
    'dintroduction1',
    'dexample',
    'vintroduction',
    'vexample',
    'allocateconceptsintroduction',
    'allocateconcepts',
    'zuordnen',
    'bank',
    'bank1',
    'bank2',
    'bank2s',
    'bank3',
    'bank3s',
    'bank4',
    'bank4s',
    'abschluss',
    'sources'
   ]
)

Course.create(
 id: 2,
 title: "Konsequentialismus",
 description: "Darf man etwas Schlimmes tun, um etwas Gutes zu erreichen? Sollen wir Handlungen danach beurteilen, wie viel Glück sie in die Welt bringen? Heiligt der Zweck die Mittel?",
 keywords: "Konsequentialismus, Utilitarismus, Nutzen, Glück, konsequentialistisch, utilitaristisch, Folgen, Konsequenzen",
 topic: "ethics",
 duration: "20 Minuten",
 language: "de",
 order: 2,
 modul: "Vertiefungsmodul",
 name_of_picture: "domino.jpg",
 slides: [
   'why',
   'kompetenzen',
   'konsequentialismus',
   'konsequentialismus1',
   'konstheorie',
   'konstheories',
   'konstheorie1',
   'konstheorie1s',
   'utilitarismus',
   'utilitarismus1',
   'nutzen',
   'nutzen1',
   'nutzen2intro',
   'nutzen2intro1',
   'nutzen2',
   'nutzen3',
   'nutzen4',
   'reichweite',
   'utilubung5',
   'utilubung1',
   'utilubung2',
   'herausforderung',
   'herausforderung1',
   'kstaerken',
   'kstaerkeanwendbar',
   'kstaerkewissenschaft',
   'kstaerkenutzen',
   'kproblems',
   'kkritiknutzen',
   'kkritikanwendbarkeit',
   'kkritikungleichheit',
   'kkritikfreundschaft',
   'utilubung3',
   'utilubung4',
   'porgintro',
   'porg',
   'abschluss',
 ]
)

Course.create(
 id: 3,
 title: "Deontologie",
 description: "Soll man seine Versprechen immer halten? Ist Lügen auch dann schlecht, wenn man gute Absichten hat? Gibt es Regeln, die wir immer befolgen sollten?",
 keywords: "Deontologie, Pflichtethik, Kantianismus, Kant, Immanuel Kant, Pflicht, kategorischer Imperativ",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 3,
 modul: "Vertiefungsmodul",
 name_of_picture: "kant.jpg",
 slides: [
   'why',
   'kompetenzen',
   'deontologie',
   'deontologischetheorien',
   'kantianismus',
   'kategorischerimperativ',
   'kategorischerimperativ1',
   'kategorischerimperativ2',
  'vernunft1',
  'vernunft2',
  'dschwarzfahren',
  'deontologists',
  'deonubung',
  'deonubung1',
  'deonubung5',
  'dproblems',
   'dkritikkonflikt',
   'dkritiktragik',
   'deonubung3',
   'deonubung4',
   'universalisiererintro',
   'universalisierer',
   'abschluss',
 ]
)

Course.create(
 id: 4,
 title: "Tugendethik",
 description: "Was für eine Person soll ich sein? Welche Charaktereigenschaften sind gut und welche schlecht? Gibt es so was wie ein gutes Leben?",
 keywords: "Tugendethik, Tugend, Tugenden, Aristoteles, Laster, Eudaimonia",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 4,
 modul: "Vertiefungsmodul",
 name_of_picture: "aristotle.jpg",
 slides: [
   'why',
   'kompetenzen',
   'tugendethik',
   'aristoteles',
   'aristoteles1',
   'aristoteles2',
   'aristoteles3',
   'aristoteles4',
   'aristoteles5',
   'vubung',
   'vubung1',
   'vubung2',
    'vproblems',
   'vkritikvagheit',
   'vkritikorientierung',
   'vubung3',
    'abschluss',
 ]
)

Course.create(
 id: 5,
 title: "Kontraktualismus",
 description: "Sind ethische Normen ein Produkt von Verhandlungen? Spielen bei ethischen Fragen unsere Vorlieben und persönlichen Interessen eine Rolle?",
 topic: "ethics",
 duration: "15 Minuten",
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
 ]
)

Course.create(
 id: 8,
 title: "Feministische Ethik",
 description: "Spielen Unterschiede zwischen den Geschlechtern eine ethische Rolle? Sind traditionelle Ethiken unfair gegenüber Frauen? Gibt es so was wie \"männliche\" und \"weibliche\" Werte?",
 topic: "ethics",
 duration: "15 Minuten",
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
 ]
)

Course.create(
 id: 6,
 title: "Tierethik",
 description: "Wie sollen wir mit Tieren umgehen? Dürfen wir alles mit ihnen machen? Oder kann man Tiere auch falsch behandeln?",
 topic: "ethics",
 duration: "15 Minuten",
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
 ]
)

Course.create(
 id: 7,
 title: "Angewandte Ethik",
 description: "Dürfen wir in Luxus leben, während andere Hunger leiden? Dürfen wir Fleisch aus der Massentierhaltung kaufen? Ist Prostitution immer moralisch verwerflich?",
 topic: "ethics",
 duration: "15 Minuten",
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
  ]
)

Course.create(
 id: 9,
 title: "Metaethik",
 description: "Ist Ethik eine Wissenschaft? Kann man ethische Fragen jemals wirklich beantworten? Was machen wir, wenn wir ethische Urteile fällen?",
 topic: "ethics",
 duration: "15 Minuten",
 language: "de",
 order: 9,
 name_of_picture: "organization.jpg",
 slides: [
   "metaethik",
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
