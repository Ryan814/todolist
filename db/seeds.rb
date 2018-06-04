# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.destroy_all

todo_list = [
{
	name: 'Train chest',
	due_date: '2018-05-31'
},
{
	name: '刻意練習-第六章',
	due_date: '2018-05-20'
},
{
	name: 'Joy\'s birthday',
	due_date: '2018-09-26'
}
]

todo_list.each do |todo|
	Todo.create(
		name:     todo[:name],
		due_date: todo[:due_date]
	)
end
