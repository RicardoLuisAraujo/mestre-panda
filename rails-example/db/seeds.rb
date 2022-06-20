# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Exercise.destroy_all

# exercise = Exercise.create([
#     { category: "Geometria", number: 1, statement: '1+1?'},
#     { category: "Trignometria", number: 2, statement: 'Angulo Reto tem quantos graus?'}, 
#     { category: "Limites", number: 3, statement: 'Número Divido por zero tende para o quê?'},
# ])

exercise = Exercise.create([
    { 
        category: "Geometria", 
        number: 1, 
        statement: '1+1?',
        answers_attributes: [
            { 
                answer: '1',
                true_answer: false,
            }, 
            { 
                answer: '2',
                true_answer: true,
            }, 
            { 
                answer: '3',
                true_answer: false,
            }, 
            { 
                answer: '4',
                true_answer: false,
            }, 
        ],
    },
    { 
        category: "Trignometria", 
        number: 2, 
        statement: 'Angulo Reto tem quantos graus?', 
        answers_attributes: [
            { 
                answer: '45',
                true_answer: false,
            }, 
            { 
                answer: '90',
                true_answer: true,
            }, 
            { 
                answer: '180',
                true_answer: false,
            }, 
            { 
                answer: '360',
                true_answer: false,
            },
        ]
    },
    { 
        category: "Limites", 
        number: 3, 
        statement: 'Número Divido por zero tende para o quê?', 
        answers_attributes: [
        { 
            answer: '45',
            true_answer: false,
        }, 
        { 
            answer: '90',
            true_answer: true,
        }, 
        { 
            answer: '180',
            true_answer: false,
        }, 
        { 
            answer: '360',
            true_answer: false,
        },
    ]
    },
])

puts "Finished!"