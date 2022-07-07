# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Exercise.destroy_all

# Learn how to set the exercise_id for the list of answers
file = File.join(Rails.root, 'db', 'exercises.json')
exercise_list = JSON.parse(File.read(file))
file = File.join(Rails.root, 'db', 'answers.json')
answer_list = JSON.parse(File.read(file))

exercise_list.each do |exercise|
  exercise = Exercise.create(exercise.to_h)

  answer_list.each do |answer|
    if answer['exercise_number'] == exercise['exercise_number']
      puts answer['exercise_number']
      exercise.answers.create(answer.to_h)
    end
  end

end


# answer_list.each do |answer|
#   puts answer.to_h.keys
#   Answer.create(answer.to_h)
# end


# exercise = Exercise.create([
#     { 
#         category: "Geometria",
#         sub_category: "Pontos, retas e planos",
#         year: 10,
#         statement: "Na figura ao lado, está representada, num referencial o.n. xOy, a reta AB.

#         Sabe-se que:
#         • o ponto A pertence ao semieixo negativo Ox e o ponto B pertence ao semieixo positivo Oy
#         • a reta AB tem equação y=2x+4
#         Seja M o ponto médio do segmento de reta [AB].
        
#         Quais são as coordenadas do ponto M ?",
#         image: "image_pergunta_1.png",
#         multiple_choice: true, 
#         resolution: "Como o ponto B pertence ao semieixo positivo Oy e à reta de equação y = 2x + 4, as suas coordenadas são (0,4)

#         Como o ponto A pertence ao semieixo negativo Ox, tem ordenada nula, pelo que a sua abcissa é: 0 = 2x + 4 ⇔ −4 = 2x ⇔ −42 = x ⇔ −2 = x
        
#         Assim, as coordenadas do ponto médio, M, do segmento de reta [AB], são: 
#         ((𝑥𝐴+𝑥𝐵)/2  ,  (𝑦𝐴+𝑦𝐵)/2)= ((−2+0)/2,  (0+4)/2) = (-1,2)",
#         image_resolution: "NO",
#         source: "Exame - 2019, 2ª fase", 
#         answers_attributes: [
#             { 
#                 answer: '(-1/2, 2)',
#                 true_answer: false,
#             }, 
#             { 
#                 answer: '(-1,2)',
#                 true_answer: true,
#             }, 
#             { 
#                 answer: '(-1/4, 1/2)',
#                 true_answer: false,
#             }, 
#             { 
#                 answer: '(-2,4)',
#                 true_answer: false,
#             }, 
#         ]
    # }
    # { 
    #     category: "Trignometria", 
    #     number: 2, 
    #     statement: 'Angulo Reto tem quantos graus?', 
    #     answers_attributes: [
    #         { 
    #             answer: '45',
    #             true_answer: false,
    #         }, 
    #         { 
    #             answer: '90',
    #             true_answer: true,
    #         }, 
    #         { 
    #             answer: '180',
    #             true_answer: false,
    #         }, 
    #         { 
    #             answer: '360',
    #             true_answer: false,
    #         },
    #     ]
    # },
    # { 
    #     category: "Limites", 
    #     number: 3, 
    #     statement: 'Número Divido por zero tende para o quê?', 
    #     answers_attributes: [
    #     { 
    #         answer: '45',
    #         true_answer: false,
    #     }, 
    #     { 
    #         answer: '90',
    #         true_answer: true,
    #     }, 
    #     { 
    #         answer: '180',
    #         true_answer: false,
    #     }, 
    #     { 
    #         answer: '360',
    #         true_answer: false,
    #     },
    # ]
    # },
# ])

puts "Finished!"