Actor.create!([
  {first_name: "Heath", last_name: "Ledger", known_for: "The Dark Knight", gender: "male", age: 30, movie_id: 6}
])
Genre.create!([
  {name: "romance"},
  {name: "fantasy"},
  {name: "comedy"}
])
Movie.create!([
  {title: "Ready Player One", year: 2018, plot: "The world is on the brink of chaos, but people have found salvation in a virtual reality universe called the OASIS", director: nil, english: true},
  {title: "Her", year: 2013, plot: "A man falls in love with an A.I", director: nil, english: true},
  {title: "La La Land", year: 2016, plot: "A story about two people who try to pursue their dreams in L.A.", director: nil, english: true},
  {title: "Frozen", year: 2013, plot: "A story of a queen and a princess.", director: nil, english: true},
  {title: "The Dark Knight", year: 2008, plot: "Let's put a smile on that face.", director: "Christopher Nolan", english: false},
  {title: "Chef", year: 2014, plot: "man cooks food", director: "Jon Favreau", english: nil}
])
MovieGenre.create!([
  {genre_id: 1, movie_id: 2},
  {genre_id: 1, movie_id: 3},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 4},
  {genre_id: 2, movie_id: 6},
  {genre_id: 3, movie_id: 7}
])
User.create!([
  {name: "Benji", email: "benji@gmail.com", password_digest: "$2a$12$foN7DnI2.CgslPod.boM9OIvxkW1rvf1ovFIPDYvcKqC3XfrSj0FW", admin: true},
  {name: "Enji", email: "enji@gmail.com", password_digest: "$2a$12$tQ5KycBANgKYzEtpP1Ymxec8PhJwMu5Gf4lTwiUPGPuvC5luqO0Ky", admin: true}
])
