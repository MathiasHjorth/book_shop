Author.create([{full_name: 'Brian Cox', date_of_birth: Date.current}])
Author.create([{full_name: 'Ernest Hemmingway', date_of_birth: Date.current}])
Author.create([{full_name: 'J.K. Rowling', date_of_birth: Date.current}])


Category.create([{name: 'Horror'}])
Category.create([{name: 'Science'}])
Category.create([{name: 'Fiction'}])
Category.create([{name: 'Factual'}])
Category.create([{name: 'Fantasy'}])

Book.create([{title: 'Astronomy by Brian Cox', description: 'Take a tour of the solar system with..', release_date: Date.current, rating: 4, author_id: 1}])
book1 = Book.find_by(id: 1)
book1.categories << Category.find_by(id: 2)
book1.categories << Category.find_by(id: 4)

Book.create([{title: 'Harry Potter: De vises sten', description: 'Troldmandslærlingen Harry finder ud af..', release_date: Date.current, rating: 2, author_id: 3}])
book2 = Book.find_by(id: 2)
book2.categories << Category.find_by(id: 1)
book2.categories << Category.find_by(id: 3)
book2.categories << Category.find_by(id: 5)

Book.create([{title: 'De gamle mænd og havet', description: 'Ernest hemmingways greatest..', release_date: Date.current, rating: 5, author_id: 2}])
book3 = Book.find_by(id: 3)
book3.categories << Category.find_by(id: 3)
book3.categories << Category.find_by(id: 5)