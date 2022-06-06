# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Questionnaire.destroy_all
Question.destroy_all
Record.destroy_all

user = User.create(role: "admin", email: 'jemuelfontila1@gmail.com', password: 'test1234')
subjects = Questionnaire.subjects
english_questionnaire = Questionnaire.create(subject: subjects[:english], name: '2018-2019')
math_questionnaire = Questionnaire.create(subject: subjects[:math], name: '2018-2019')
filipino_questionnaire = Questionnaire.create(subject: subjects[:filipino], name: '2018-2019')
science_questionnaire = Questionnaire.create(subject: subjects[:science], name: '2018-2019')
abstract_questionnaire=  Questionnaire.create(subject: subjects[:abstract], name: '2018-2019')

test_taker = User.create(role: "test_taker", email: 'jemuelfontila123@gmail.com', password: 'test1234')
Record.create(user: test_taker, questionnaire: english_questionnaire)
Record.create(user: test_taker, questionnaire: math_questionnaire)
Record.create(user: test_taker, questionnaire: filipino_questionnaire)
Record.create(user: test_taker, questionnaire: abstract_questionnaire)
Record.create(user: test_taker, questionnaire: science_questionnaire)

#english
Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:medium], text: "One dollar and eighty-seven cents. That was all. And sixty cents of it was in pennies. Pennies saved one and two at a time by bulldozing the grocer and the vegetable man and the butcher until one’s cheeks burned with the silent imputation of parsimony that such close dealing implied. One dollar and eighty-seven cents. And the next day would be Christmas. I am sure I would have regretted it if I ________ to take the job." , choices: ["was", "have", "had", "has"],questionnaire: english_questionnaire)
Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:easy], text: "Suzie and John are planning to get married and ________ a lot of children. They told her that this was her once chance to show the world what she was made of. She believed them at the time. It was the big stage and she knew the world would be there to see. The only one who had disagreed with this sentiment was her brother. He had told her that you don't show the world what you're made of when they are all watching, you show that in your actions when nobody was looking. It was looking more and more like her brother was correct." , questionnaire: english_questionnaire)
Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:easy], text: "We ________ a lovely three weeks in the south of Spain last year. It was their secret fortress hidden high in the branches of a huge oak that only they knew existed. " , questionnaire: english_questionnaire)
Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:medium], text: "Welcome to my world. You will be greeted by the unexpected here and your mind will be challenged and expanded in ways that you never thought possible. That is if you are able to survive...
Please do not forget to ring me when you ________ home. " , questionnaire: english_questionnaire)
Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:easy], text: "Did you have any problems ________ our house?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:hard], text: "What is a synonym for Voracious?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:easy], text: "What is a synonym for Tenacious?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:hard], text: "What is a synonym for Terse?", questionnaire: english_questionnaire)
Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:medium], text: "What is a synonym for Repellent?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:medium], text: "What is a synonym for Tenacity?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:medium], text: "What is a antonym for Derelict?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:medium], text: "What is a antonym for Abolish?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:hard], text: "What is a antonym for Fetid?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:hard], text: "What is a antonym for Invective?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:hard], text: "What is a antonym for Resuscitate?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Verb", difficulty: Question.difficulties[:easy], text: "What is a verb?" , questionnaire: english_questionnaire)
Question.create(subcategory: "Verb", difficulty: Question.difficulties[:easy], text: "What does an action verb denote?", questionnaire: english_questionnaire)
Question.create(subcategory: "Verb", difficulty: Question.difficulties[:medium], text: "Identify the action verb(s) in the following sentence: Michael always reads a book while taking the bus to work." , questionnaire: english_questionnaire)
Question.create(subcategory: "Verb", difficulty: Question.difficulties[:easy], text: "Identify the action verb(s) in the phrase: While I worked, my dogs whined and howled for attention." , questionnaire: english_questionnaire)
Question.create(subcategory: "Verb", difficulty: Question.difficulties[:medium], text: "Identify the action verbs in the following phrase: The children talked to each other all night instead of staying asleep." , questionnaire: english_questionnaire)

#Filipino

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "Ito ay isang sangay ng linggwistika na sumasaklaw sa pag-aaral ng kayarian o istruktura ng salita.", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "'Lumilindol.' Anong uri ito ng pangungusap na walang tiyak na paksa?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "'Nahulog ang bata!' Anong uri ng pangungusap ayon sa kayarian ang pangungusap na ito?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "Sa ponemang segmental, ano ang tinataglay ng mga salitang galaw, baliw, lamay, kahoy?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "Kararating lang ni tatay mula sa trabaho. Ano ang aspekto ng pandiwa sa pangungusap?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:easy], text: "Ibigay ang panlapi na ginamit sa mga sumusunod na salita: kaligayahan, pagmamahalan, pagkatiwalaan.", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:easy], text: "Anong bantas ang siyang inilalagay sa pagitan ng unlaping 'ika' at 'tambilang'?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:medium], text: "Ang 'pangarap' ay isang pangngalang _____.", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:medium], text: "Si Fe ay masayang naghihintay sa kanyang ina. Paano ginamit ang salitang sinalangguhitan sa pangungusap?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:hard], text: "Aling salita ang may diptonggo?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:easy], text: "Ayon kay Gleason, ang wika ay pinagkakasunduan ng isang lahi at kaya naman ay naunawaan ng lahat ng kasapi ng lahi.", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:easy], text: "Anong teorya ng wika ang nagsasabing ang wika ay nailikha bunga ng masidhing damdamin ng tao?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:medium], text: "Hangarin nitong makapagbigay nang wasto at epektibong pakikipag-ugnayan gamit ang mga sagisag pangwika?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:medium], text: "Anong uri ng pangungusap ang 'Magandang araw po'?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:hard], text: "Sa pananaliksik, saang kabanata matatagpuan ang tungkol sa suliranin at ang kaligiran nito?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:easy], text: "Isang akda ni Padre Modesto de Castro na binubuo ng palitan ng liham ng dalawang magkapatid.", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:easy], text: "Sa kasaysayan ng ating panitikan, ang kinikilalang Gintong Panahon ng Panitikan ng Pilipinas ay ang panahon ng ______.", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:easy], text: "Alin sa mga sumusunod ay sadyang isinulat upang ibigkas sa harap ng madla?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:average], text: "Anong titulo sa panitikan ng Pilipinas ang ibinigay sa manunulat ng akdang pinamagatang 'Isang Dipang Langit'?", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:average], text: "Siya ay kilala bilang ang 'dakilang mananalumpati' ng kilusang propaganda.", questionnaire: filipino_questionnaire)

#Math
Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:easy], text: "5x-3 = 7x-1,find x")
Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:hard], text: "In a right triangle ABC, tan(A) = 3/4, find sin(A) and cos(A).", questionnaire: math_questionnaire)
Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:easy], text: "12t-10 = 14t -2, find t", questionnaire: math_questionnaire)
Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:medium], text: "16t - 10 = 14t -2, find t", questionnaire: math_questionnaire)
Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "What is the sum of the measures of the interior angles of a hexagon?", questionnaire: math_questionnaire)
Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:easy], text: "17x - 22 = 7x -2", questionnaire: math_questionnaire)
Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:easy], text: "length of the hypotenuse in a unit circle is?", questionnaire: math_questionnaire)
Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:hard], text: "A straight angle has a measurement of?", questionnaire: math_questionnaire)
Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:hard], text: "What is the area of a circle with a diameter of 16?", questionnaire: math_questionnaire)
Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "The angle which is less than 90 degrees is called?", questionnaire: math_questionnaire)
Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:medium], text: "The three primary functions of trigonometry are", questionnaire: math_questionnaire)
Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "The angle which is less than 90 degrees is called?", questionnaire: math_questionnaire)
Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:easy], text: "x - y (x+y)", questionnaire: math_questionnaire)
Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:easy], text: "If cos A = 4/5, then tan A = ?", questionnaire: math_questionnaire)
Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:medium], text: "If the angle is formed in a counterclockwise direction from the start point in an x-y plane, then it is", questionnaire: math_questionnaire)
Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "A line, plane, ray, and line segment all have", questionnaire: math_questionnaire)
Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:hard], text: "Find the value of 3abc, where a = 2, b = 3 and c = 4.", questionnaire: math_questionnaire)
Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:easy], text: "A square pyramid how many number of faces?", questionnaire: math_questionnaire)
Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:medium], text: "5a + 2b - b + 4a =", questionnaire: math_questionnaire)
Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "Three noncollinear points determine", questionnaire: math_questionnaire)

#Science
Question.create(subcategory: "Physics", difficulty: Question.difficulties[:hard], text: "For the hydrogen atom, which series describes electron transitions to the N=1 orbit, the lowest energy electron orbit?", questionnaire: science_questionnaire)
Question.create(subcategory: "Physics", difficulty: Question.difficulties[:hard], text: "Electric current may be expressed in which one of the following units?", questionnaire: science_questionnaire)
Question.create(subcategory: "Physics", difficulty: Question.difficulties[:medium], text: "A Newton is equal to which of the following?", questionnaire: science_questionnaire)
Question.create(subcategory: "Physics", difficulty: Question.difficulties[:hard], text: "For an object moving in uniform circular motion, the direction of the instantaneous acceleration vector is _______", questionnaire: science_questionnaire)
Question.create(subcategory: "Physics", difficulty: Question.difficulties[:medium], text: "Work is equal to which of the following?", questionnaire: science_questionnaire)
Question.create(subcategory: "Physics", difficulty: Question.difficulties[:easy], text: "The work done by a friction force is _______", questionnaire: science_questionnaire)
Question.create(subcategory: "Physics", difficulty: Question.difficulties[:medium], text: "Two forces have magnitudes of 11 newtons and 5 newtons. The magnitude of their sum could NOT be equal to which of the following values?", questionnaire: science_questionnaire)

Question.create(subcategory: "Biology", difficulty: Question.difficulties[:medium], text: "What is the history of the evolution of a species or group?", questionnaire: science_questionnaire)
Question.create(subcategory: "Biology", difficulty: Question.difficulties[:hard], text: "The adult human of average age and size has approximately how many quarts of blood?", questionnaire: science_questionnaire)
Question.create(subcategory: "Biology", difficulty: Question.difficulties[:medium], text: "Once the erythrocytes enter the blood in humans, how many days is its estimated average lifetime?", questionnaire: science_questionnaire)
Question.create(subcategory: "Biology", difficulty: Question.difficulties[:hard], text: "Which mechanisms are important in the death of erythrocytes in human blood?", questionnaire: science_questionnaire)
Question.create(subcategory: "Biology", difficulty: Question.difficulties[:easy], text: "Surplus red blood cells, needed to meet an emergency, are MAINLY stored in what organ of the human body?", questionnaire: science_questionnaire)
Question.create(subcategory: "Biology", difficulty: Question.difficulties[:medium], text: "The several types of white blood cells are sometime collectively referred to as _______", questionnaire: science_questionnaire)
Question.create(subcategory: "Biology", difficulty: Question.difficulties[:easy], text: "What is the condition in which there is a DECREASE in the number of white blood cells in humans?", questionnaire: science_questionnaire)

Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:average], text: "What is the lightest element in the periodic table?", questionnaire: science_questionnaire)
Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:easy], text: "The nucleus of an atom consists of _______", questionnaire: science_questionnaire)
Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:average], text: "What is the number of moles of solute present in 1 kg of a solvent is called?", questionnaire: science_questionnaire)
Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:hard], text: "What is the metal used to recover copper from a solution of copper sulphate?", questionnaire: science_questionnaire)
Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:easy], text: "What is the metallurgical process in which a metal is obtained in a fused state is called?", questionnaire: science_questionnaire)
Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:hard], text: "The molecules of which gas have the highest speed?", questionnaire: science_questionnaire)
