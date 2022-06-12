# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
ExamResult.destroy_all
Questionnaire.destroy_all
Question.destroy_all
Record.destroy_all

user = User.create(role: "admin", email: 'jemuelfontila1@gmail.com', password: 'test1234')
subjects = Questionnaire.subjects
english_questionnaire = Questionnaire.create(subject: subjects[:english], name: '2018-2019')
math_questionnaire = Questionnaire.create(subject: subjects[:math], name: '2018-2019')
filipino_questionnaire = Questionnaire.create(subject: subjects[:filipino], name: '2018-2019')
science_questionnaire = Questionnaire.create(subject: subjects[:science], name: '2018-2019')

test_taker = User.create(role: "test_taker", email: 'jyfontila2018@plm.edu.ph', password: 'test1234', first_name: 'Jemuel', middle_name:'Y.', last_name: 'Fontila', contact_number: "09196022579")
test_taker1 = User.create(role: "test_taker", email: 'mj.lagarta00@gmail.com', password: 'test1234', first_name: 'Jiro Mark', middle_name:'G.', last_name: 'Garcia', contact_number: "09395295519")
test_taker2 = User.create(role: "test_taker", email: 'jmggarcia2018@plm.edu.ph', password: 'test1234', first_name: 'Mark Jimwell', middle_name:'L.', last_name: 'Lagarta', contact_number: "09295292279")

Record.create(user: test_taker, questionnaire: english_questionnaire)
Record.create(user: test_taker, questionnaire: math_questionnaire)
Record.create(user: test_taker, questionnaire: filipino_questionnaire)
Record.create(user: test_taker, questionnaire: science_questionnaire)

#english
Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:medium], text: "One dollar and eighty-seven cents. That was all. And sixty cents of it was in pennies. Pennies saved one and two at a time by bulldozing the grocer and the vegetable man and the butcher until one’s cheeks burned with the silent imputation of parsimony that such close dealing implied. One dollar and eighty-seven cents. And the next day would be Christmas. I am sure I would have regretted it if I ________ to take the job." , choices: ["was", "have", "had", "has"], correct_answer: "had", questionnaire: english_questionnaire)

Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:easy], text: "Suzie and John are planning to get married and ________ a lot of children." , choices: ["have", "was", "had", "has"], correct_answer: "have", questionnaire: english_questionnaire)

Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:easy], text: "We ________ a lovely three weeks in the south of Spain last year." , choices: ["spent", "took", "did", "passed"], correct_answer: "spent", questionnaire: english_questionnaire)

Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:medium], text: "Please do not forget to ring me when you ________ home." , choices: ["get", "are going to get", "are getting", "will get"], correct_answer: "get", questionnaire: english_questionnaire)

Question.create(subcategory: "Grammar", difficulty: Question.difficulties[:easy], text: "Did you have any problems ________ our house?" , choices: ["to find", "finding", "for finding", "find"], correct_answer: "finding", questionnaire: english_questionnaire)

Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:hard], text: "What is a synonym for Voracious?" , choices: ["Insatiable", "Satisfied", "Suplement", "Quenched"], correct_answer: "Insatiable", questionnaire: english_questionnaire)

Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:easy], text: "What is a synonym for Tenacious?" , choices: ["Yielding", "Satisfied", "Relentless", "Kind"], correct_answer: "Relentless", questionnaire: english_questionnaire)

Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:hard], text: "What is a synonym for Terse?", choices: ["Brusque", "Polite", "Relentless", "Wordy"], correct_answer: "Brusque", questionnaire: english_questionnaire)

Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:medium], text: "What is a synonym for Repellent?" , choices: ["Repugnant", "Resistant", "Lovely", "Wordy"], correct_answer: "Resistant", questionnaire: english_questionnaire)

Question.create(subcategory: "Synonyms", difficulty: Question.difficulties[:medium], text: "What is a synonym for Tenacity?" , choices: ["Fear", "Grit", "Indolence", "Perseverance"], correct_answer: "Perseverance", questionnaire: english_questionnaire)

Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:medium], text: "What is a antonym for Derelict?" , choices: ["Delinquent", "Careful", "Improved", "Unreliable"], correct_answer: "Delinquent", questionnaire: english_questionnaire)

Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:medium], text: "What is a antonym for Abolish?" , choices: ["Establish", "Abrogate", "Vitiate", "Uphold"], correct_answer: "Abrogate", questionnaire: english_questionnaire)

Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:hard], text: "What is a antonym for Fetid?" , choices: ["Putrid", "Strong", "Pure", "Good"], correct_answer: "Putrid", questionnaire: english_questionnaire)

Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:hard], text: "What is a antonym for Invective?" , choices: ["Exoneration", "Vituperation", "Denunciation", "Exculpation"], correct_answer: "Denunciation", questionnaire: english_questionnaire)

Question.create(subcategory: "Antonyms", difficulty: Question.difficulties[:hard], text: "What is a antonym for Resuscitate?" , choices: ["Invigorate", "Bring", "Destroy", "Exculpation"], correct_answer: "Invigorate", questionnaire: english_questionnaire)

Question.create(subcategory: "Verb", difficulty: Question.difficulties[:easy], text: "What is a verb?" , choices: ["A verb describes a noun.", "A verb denotes the action taking place in a sentence.", "A verb describes what the subject of the sentence did", "B & C"], correct_answer: "B & C", questionnaire: english_questionnaire)

Question.create(subcategory: "Verb", difficulty: Question.difficulties[:easy], text: "What does an action verb denote?", choices: ["Action verbs are used to denote physical actions only.", "Action verbs are used to denote thoughts as well as actions.", "Action verbs describe what the subject of the sentence is.", "All of the above."], correct_answer: "Action verbs are used to denote thoughts as well as actions.", questionnaire: english_questionnaire)

Question.create(subcategory: "Verb", difficulty: Question.difficulties[:medium], text: "Identify the action verb(s) in the following sentence: Michael always reads a book while taking the bus to work." , choices: ["reads", "taking", "work", "A & B"], correct_answer: "", questionnaire: english_questionnaire)

Question.create(subcategory: "Verb", difficulty: Question.difficulties[:easy], text: "Identify the action verb(s) in the phrase: While I worked, my dogs whined and howled for attention." , choices: ["howled", "whined", "worked", "All of the above"], correct_answer: "", questionnaire: english_questionnaire)

Question.create(subcategory: "Verb", difficulty: Question.difficulties[:medium], text: "Identify the action verbs in the following phrase: The children talked to each other all night instead of staying asleep." , choices: ["asleep", "talked", "staying", "All of the above"], correct_answer: "", questionnaire: english_questionnaire)

#Filipino
Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "Ito ay isang sangay ng linggwistika na sumasaklaw sa pag-aaral ng kayarian o istruktura ng salita.", choices: ["Ortograpiya", "Semantika", "Morpolohiya", "Sintaksi"], correct_answer: "Sintaksi", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "'Lumilindol.' Anong uri ito ng pangungusap na walang tiyak na paksa?", choices: ["Temporal", "Eksistensyal", "Penomenal", "Modal"], correct_answer: "Temporal", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "'Nahulog ang bata!' Anong uri ng pangungusap ayon sa kayarian ang pangungusap na ito?", choices: ["Padamdam", "Pasalaysay", "Payak", "Tambalan"], correct_answer: "Padamdam", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "Sa ponemang segmental, ano ang tinataglay ng mga salitang galaw, baliw, lamay, kahoy?", choices: ["Ponema", "Klaster", "Diptonggo", "Pares Minimal"], correct_answer: "Ponema", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Linggwistika", difficulty: Question.difficulties[:easy], text: "Kararating lang ni tatay mula sa trabaho. Ano ang aspekto ng pandiwa sa pangungusap?", choices: ["Pangnagdaan", "Pangkasalukuyan", "Panghinaharap", "Katatapos"], correct_answer: "Pangkasalukuyan", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:easy], text: "Ibigay ang panlapi na ginamit sa mga sumusunod na salita: kaligayahan, pagmamahalan, pagkatiwalaan.", choices: ["Hulapi", "Tambalan", "Kabilaan", "Laguhan"], correct_answer: "Hulapi", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:easy], text: "Anong bantas ang siyang inilalagay sa pagitan ng unlaping 'ika' at 'tambilang'?", choices: ["Tuldok", "Panaklong", "Kuwit", "Gitling"], correct_answer: "Gitling", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:medium], text: "Ang 'pangarap' ay isang pangngalang _____.", choices: ["Pantangin", "Palansak", "Tahas", "Basal"], correct_answer: "Palansak", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:medium], text: "Si Fe ay masayang naghihintay sa kanyang ina. Paano ginamit ang salitang sinalangguhitan sa pangungusap?", choices: ["Pang-ukol", "Pang-uri", "Pang-abay", "Pandiwa"], correct_answer: "Pang-abay", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Grammatika", difficulty: Question.difficulties[:hard], text: "Aling salita ang may diptonggo?", choices: ["bawal", "bahay", "sibuyas", "lahat ng nabanggit"], correct_answer: "bahay", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:easy], text: "Ayon kay Gleason, ang wika ay pinagkakasunduan ng isang lahi at kaya naman ay naunawaan ng lahat ng kasapi ng lahi.", choices: ["masistema", "dinamiko", "likas", "arbitraryo"], correct_answer: "masistema", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:easy], text: "Anong teorya ng wika ang nagsasabing ang wika ay nailikha bunga ng masidhing damdamin ng tao?", choices: ["Bow-wow", "Pooh-pooh", "Ding-dong", "Yoheho"], correct_answer: "Yoheho", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:medium], text: "Hangarin nitong makapagbigay nang wasto at epektibong pakikipag-ugnayan gamit ang mga sagisag pangwika?", choices: ["Talastasan", "Bokabularyo", "Talasanggunian", "Linggwistika"], correct_answer: "Talastasan", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:medium], text: "Anong uri ng pangungusap ang 'Magandang araw po'?", choices: ["Temporal", "Pormulasyong Panlipunan", "Sambitla", "Pamanahon"], correct_answer: "Pormulasyong Panlipunan", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Wika", difficulty: Question.difficulties[:hard], text: "Sa pananaliksik, saang kabanata matatagpuan ang tungkol sa suliranin at ang kaligiran nito?", choices: ["Kabanata I", "Kabanata III", "Kabanata II", "Kabanata IV"], correct_answer: "Kabanata I", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:easy], text: "Isang akda ni Padre Modesto de Castro na binubuo ng palitan ng liham ng dalawang magkapatid.", choices: ["Urbana at Feliza", "Barlaan at Josaphat", "Dasalan at Tocsohan", "Indarapatra at Sulayman"], correct_answer: "Urbana at Feliza", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:easy], text: "Sa kasaysayan ng ating panitikan, ang kinikilalang Gintong Panahon ng Panitikan ng Pilipinas ay ang panahon ng ______.", choices: ["Amerikano", "Hapones", "Kastila", "Kontemporaryo"], correct_answer: "Hapones", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:easy], text: "Alin sa mga sumusunod ay sadyang isinulat upang ibigkas sa harap ng madla?", choices: ["anekdota", "pabula", "talambuhay", "talumpati"], correct_answer: "talumpati", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:average], text: "Anong titulo sa panitikan ng Pilipinas ang ibinigay sa manunulat ng akdang pinamagatang 'Isang Dipang Langit'?", choices: ["Makata ng Pag-ibig", "Makata ng Manggagawa", "Makata ng Masa", "Ama ng Wikang Pambansa"], correct_answer: "Makata ng Manggagawa", questionnaire: filipino_questionnaire)

Question.create(subcategory: "Panitikan", difficulty: Question.difficulties[:average], text: "Siya ay kilala bilang ang 'dakilang mananalumpati' ng kilusang propaganda.", choices: ["Graciano Lopez Jaena", "Jose Rizal", "Marcelo H. Del Pilar", "Gregorio Del Pilar"], correct_answer: "Jose Rizal", questionnaire: filipino_questionnaire)

#Math
Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:easy], text: "5x-3 = 7x-1,find x", choices: ["2", "7", "8", "10"], correct_answer: "2", questionnaire: math_questionnaire)

Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:hard], text: "In a right triangle ABC, tan(A) = 3/4, find sin(A) and cos(A).", choices: ["sin(A) = 0.9 AND cos(A) = 0.3", "sin(A) = 0.6 AND cos(A) = 0.8", "sin(A) = 0.7 AND cos(A) = 0.7", "sin(A) = 0.3 AND cos(A) = 0.1"], correct_answer: "sin(A) = 0.3 AND cos(A) = 0.1", questionnaire: math_questionnaire)

Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:easy], text: "12t-10 = 14t -2, find t", choices: ["1", "6", "8", "10"], correct_answer: "6", questionnaire: math_questionnaire)

Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:medium], text: "16t - 10 = 14t -2, find t", choices: ["5", "9", "-4", "-6"], correct_answer: "5", questionnaire: math_questionnaire)

Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "What is the sum of the measures of the interior angles of a hexagon?", choices: ["180", "360", "720", "1080"], correct_answer: "360", questionnaire: math_questionnaire)

Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:easy], text: "17x - 22 = 7x -2", choices: ["2", "5", "8", "10"], correct_answer: "8", questionnaire: math_questionnaire)

Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:easy], text: "The length of the hypotenuse in a unit circle is?", choices: ["0", "1", "5", "8"], correct_answer: "1", questionnaire: math_questionnaire)

Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:hard], text: "A straight angle has a measurement of?", choices: ["180", "360", "720", "1080"], correct_answer: "180", questionnaire: math_questionnaire)

Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:hard], text: "What is the area of a circle with a diameter of 16?", choices: ["150", "180.45", "190.98", "201.06"], correct_answer: "201.06", questionnaire: math_questionnaire)

Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "The angle which is less than 90 degrees is called?", choices: ["cutie angle", "acute angle", "obtuse angle", "right angle"], correct_answer: "acute angle", questionnaire: math_questionnaire)

Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:medium], text: "The three primary functions of trigonometry are", choices: ["Acute", "Obtuse", "Right", "None of the above"], correct_answer: "None of the above", questionnaire: math_questionnaire)

Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "The angle which is more than 90 degrees is called?", choices: ["acute angle", "obtuse angle", "right angle", "straight angle"], correct_answer: "obtuse angle", questionnaire: math_questionnaire)

Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:easy], text: "x - y (x+y)", choices: ["2x", "0", "2x-2y", "-2y"], correct_answer: "2x-2y", questionnaire: math_questionnaire)

Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:easy], text: "If cos A = 4/5, then tan A = ?", choices: ["2/3", "3/4", "1/4", "5/4"], correct_answer: "5/4", questionnaire: math_questionnaire)

Question.create(subcategory: "Trigonometry", difficulty: Question.difficulties[:medium], text: "If the angle is formed in a counterclockwise direction from the start point in an x-y plane, then it is", choices: ["Positive", "Negative", "Positive or negative", "None of the above"], correct_answer: "Negative", questionnaire: math_questionnaire)

Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "A line, plane, ray, and line segment all have", choices: ["length and depth", "points", "endpoints", "no dimension"], correct_answer: "points", questionnaire: math_questionnaire)

Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:hard], text: "Find the value of 3abc, where a = 2, b = 3 and c = 4.", choices: ["12", "27", "72", "82"], correct_answer: "72", questionnaire: math_questionnaire)

Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:easy], text: "A square pyramid how many number of faces?", choices: ["5", "6", "7", "8"], correct_answer: "5", questionnaire: math_questionnaire)

Question.create(subcategory: "Algebra", difficulty: Question.difficulties[:medium], text: "5a + 2b - b + 4a =", choices: ["9a + b", "a+b", "7a-3b", "6a"], correct_answer: "9a + b", questionnaire: math_questionnaire)

Question.create(subcategory: "Geometry", difficulty: Question.difficulties[:medium], text: "Three noncollinear points determine", choices: ["a ray", "a plane", "a line segment", "No determination can be made"], correct_answer: "a plane", questionnaire: math_questionnaire)

#Science
Question.create(subcategory: "Physics", difficulty: Question.difficulties[:hard], text: "For the hydrogen atom, which series describes electron transitions to the N=1 orbit, the lowest energy electron orbit?", choices: ["Lyman series", "Balmer series", "Paschen series", "Pfund series"], correct_answer: "Lyman series", questionnaire: science_questionnaire)

Question.create(subcategory: "Physics", difficulty: Question.difficulties[:hard], text: "Electric current may be expressed in which one of the following units?", choices: ["coulombs/volt", "joules/coulomb", "coulombs/second", "ohms/second"], correct_answer: "coulombs/second", questionnaire: science_questionnaire)

Question.create(subcategory: "Physics", difficulty: Question.difficulties[:medium], text: "A Newton is equal to which of the following?", choices: ["kilogram-meter per second", "meter per second squared", "kilogram-meter per second squared", "kilogram per meter-second"], correct_answer: "kilogram-meter per second squared", questionnaire: science_questionnaire)

Question.create(subcategory: "Physics", difficulty: Question.difficulties[:hard], text: "For an object moving in uniform circular motion, the direction of the instantaneous acceleration vector is _______", choices: ["tangent to the path of motion", "equal to zero", "directed radially outward", "directed radially inward"], correct_answer: "directed radially inward", questionnaire: science_questionnaire)

Question.create(subcategory: "Physics", difficulty: Question.difficulties[:medium], text: "Work is equal to which of the following?", choices: ["the cross product of force and displacement", "the product of force times time", "force divided by time", "the dot product of force and displacement"], correct_answer: "the dot product of force and displacement", questionnaire: science_questionnaire)

Question.create(subcategory: "Physics", difficulty: Question.difficulties[:easy], text: "The work done by a friction force is _______", choices: ["always positive", "always negative", "always zero", "either positive or negative depending upon the situation"], correct_answer: "always negative", questionnaire: science_questionnaire)

Question.create(subcategory: "Physics", difficulty: Question.difficulties[:medium], text: "Two forces have magnitudes of 11 newtons and 5 newtons. The magnitude of their sum could NOT be equal to which of the following values?", choices: ["16 newtons", "5 newtons", "9 newtons", "7 newtons"], correct_answer: "5 newtons", questionnaire: science_questionnaire)

Question.create(subcategory: "Biology", difficulty: Question.difficulties[:medium], text: "When a human donor gives a pint of blood, it usually requires how many weeks for the body RESERVE of red corpuscles to be replaced?", choices: ["1 week", "3 weeks", "7 weeks", "21 weeks"], correct_answer: "7 weeks", questionnaire: science_questionnaire)

Question.create(subcategory: "Biology", difficulty: Question.difficulties[:hard], text: "The adult human of average age and size has approximately how many quarts of blood?", choices: ["4", "6", "8", "10"], correct_answer: "6", questionnaire: science_questionnaire)

Question.create(subcategory: "Biology", difficulty: Question.difficulties[:medium], text: "Once the erythrocytes enter the blood in humans, how many days is its estimated average lifetime?", choices: ["10 days", "120 days", "200 days", "360 days"], correct_answer: "120 days", questionnaire: science_questionnaire)

Question.create(subcategory: "Biology", difficulty: Question.difficulties[:hard], text: "Which mechanisms are important in the death of erythrocytes in human blood?", choices: ["phagocytosis", "hemolysis", "mechanical damage", "All of the above"],correct_answer: "All of the above", questionnaire: science_questionnaire)

Question.create(subcategory: "Biology", difficulty: Question.difficulties[:easy], text: "Surplus red blood cells, needed to meet an emergency, are MAINLY stored in what organ of the human body?", choices: ["pancreas", "spleen", "liver", "kidneys"], correct_answer: "spleen", questionnaire: science_questionnaire)

Question.create(subcategory: "Biology", difficulty: Question.difficulties[:medium], text: "The several types of white blood cells are sometime collectively referred to as _______", choices: ["erythrocytes", "leukocytes", "erythroblasts", " thrombocytes"], correct_answer: "leukocytes", questionnaire: science_questionnaire)

Question.create(subcategory: "Biology", difficulty: Question.difficulties[:easy], text: "What is the smallest of the formed elements of the blood?", choices: ["white cells", "red cells", "platelets", "erythrocytes"], correct_answer: "platelets", questionnaire: science_questionnaire)

Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:average], text: "What is the lightest element in the periodic table?", choices: ["lithium", "fluorine", "hydrogen", "helium"], correct_answer: "hydrogen", questionnaire: science_questionnaire)

Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:easy], text: "The nucleus of an atom consists of _______", choices: ["electrons and neutrons", "electrons and protons", "protons and neutrons", "All of the above"], correct_answer: "protons and neutrons", questionnaire: science_questionnaire)

Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:average], text: "What is the number of moles of solute present in 1 kg of a solvent is called?", choices: ["molality", "molarity", "normality", "formality"], correct_answer: "molality", questionnaire: science_questionnaire)

Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:hard], text: "What is the metal used to recover copper from a solution of copper sulphate?", choices: ["Sodium", "Silver", "Gold", "Iron"], correct_answer: "Iron", questionnaire: science_questionnaire)

Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:easy], text: "What is the metallurgical process in which a metal is obtained in a fused state is called?", choices: ["Smelting", "Roasting", "Calcination", "Froth floatation"], correct_answer: "Smelting", questionnaire: science_questionnaire)

Question.create(subcategory: "Chemistry", difficulty: Question.difficulties[:hard], text: "The molecules of which gas have the highest speed?", choices: ["Hydrogen at -50C", "Methane at 298 K", "Nitrogen at  1000C", "Oxygen at 0C"], correct_answer: "Hydrogen at -50C", questionnaire: science_questionnaire)