# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(
  title: "Designed for Digital: How to Architect Your Business for Sustained Success",
  description: "In the digital economy, technologies and customer demands are changing rapidly. As a result, business strategies are constantly evolving. Only agile companies will survive! Most business leaders rely on organizational structure to implement strategy, unaware that structure inhibits, rather than enables, agility. To execute digital strategies, companies must abandon structure and instead rely on business design.",
  price: 0.0
)
Book.create(
  title: "Artificial Intelligence: The Insights You Need from Harvard Business Review",
  description: "Companies that don’t use AI will soon be obsolete. From making faster, better decisions to automating rote work to enabling robots to respond to emotions, AI and machine learning are already reshaping business and society. What should you and your company be doing today to ensure that you’re poised for success and keeping up with your competitors in the age of AI?",
  price: 0.0
)
Book.create(
  title: "The Future Is Faster Than You Think: How Converging Technologies Are Transforming Business, Industries, and Our Lives",
  description: "In their book Abundance, bestselling authors and futurists Peter Diamandis and Steven Kotler tackled grand global challenges, such as poverty, hunger, and energy. Then, in Bold, they chronicled the use of exponential technologies that allowed the emergence of powerful new entrepreneurs. Now the bestselling authors are back with The Future Is Faster Than You Think, a blueprint for how our world will change in response to the next ten years of rapid technological disruption",
  price: 3.0
)
Tag.create(name: "The Relationshipper Book")
Tag.create(name: "Life in Books")
Tag.create(name: "Fall Book")
Tag.create(name: "The Adventure book")
Tag.create(name: "Beauty and the Beast Book")