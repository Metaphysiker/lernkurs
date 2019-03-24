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
    'ethicaltheories3intro',
    'ethicaltheories3',
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
   'utilubung8',
   'utilubung3',
   'utilubung4',
   'geldausleihe',
   'utilubung6',
   'abschluss',
   'sources'
 ]
)

Course.create(
 id: 3,
 title: "Pflichtenethik / Deontologie",
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
   'kantianismus1',
   'kategorischerimperativ',
   'dschwarzfahren',
   'deonubung5',
   'deonubung5s',
  'vernunft1',
  'vernunft2',
  'deonubung1',
  'vernunft3',
  'vernunft4',
  'deonubung6',
  'dstaerken',
  'dstaerkeanwendbar',
  'dstaerkeintuition',
  'dstaerkevernunft',
  'dproblems',
   'dkritikkonflikt',
   'dkritiktragik',
   'dkritikgefuhl',
 'deonubung',
  'deonubung3',
   'deonubung4',
   'deonubung7',
   'deonubung7s',
   'universalisiererintro',
   'universalisierer',
   'abschluss',
   'sources'
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
  'grundmerkmale',
  'eudaimonia',
  'lebensform',
  'tugenden',
   'mitte',
   'krieg',
   'spenden',
   'besonnenheit',
   'vubung',
   'vubung1',
   'vubung2',
   'vubung4',
   'erwerb',
   'erwerb1',
   'erwerb2',
   'grundmerkmalevubung',
   'staerken',
   'motivation',
   'komplexitaet',
   'gutesleben',
  'vproblems',
   'vkritikvagheit',
  'vkritikrelativismus',
   'vkritikorientierung',
    'vubung5',
   'vubung3',
   'vubung6intro',
   'vubung6',
   'vubung7',
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
