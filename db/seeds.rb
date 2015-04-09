Answer.create!([
  {name: "Queen", scenario_id: 1, player_id: 4},
  {name: "Queen", scenario_id: 2, player_id: 4},
  {name: "East", scenario_id: 3, player_id: 3},
  {name: "East", scenario_id: 4, player_id: 2}
])
Location.create!([
  {city: "Chicago", country: "United State", woeid: "12784308", wikipedia_link: "http://en.wikipedia.org/wiki/File:Chicago_montage1.jpg"},
  {city: "Melbourne", country: "Austrailia", woeid: "1103816", wikipedia_link: "http://en.wikipedia.org/wiki/City_of_Melbourne"}
])
Player.create!([
  {last_name: "West", gender: "M", first_name: "Jack", image: "ManOne.jpg", tattoo_id: 1, occupation: "Candlestick Maker"},
  {last_name: "South", gender: "F", first_name: "Lady", image: "WomanOne.jpg", tattoo_id: 3, occupation: "Baker"},
  {last_name: "East", gender: "F", first_name: "Queen", image: "WomanTwo.jpg", tattoo_id: 2, occupation: "Villain"},
  {last_name: "North", gender: "M", first_name: "King", image: "ManTwo.jpg", tattoo_id: 4, occupation: "Butcher"},
  {last_name: "Queen", gender: "M", first_name: "Blah", image: nil, tattoo_id: nil, occupation: nil}
])
PlayerAnswer.create!([
  {player_id: 1, answer_id: 1},
  {player_id: 2, answer_id: 2},
  {player_id: nil, answer_id: nil}
])
Scenario.create!([
  {scenario: "Select All", description: "Your table is Players. To select all records, type \"Select * from Players\"", short_description: "To get started, you need to know the name of the table you are searching.", choice_one: "Continue", choice_two: "Close", answer_id: 1, player_id: nil},
  {scenario: "Select First Name", description: "Your table is Players. Select the record where the first name is Queen.", short_description: "Scenario 2", choice_one: nil, choice_two: nil, answer_id: 2, player_id: 4},
  {scenario: "Select Last Name", description: "Your table is Players. Select the record where the last name is East.", short_description: "Scenario 3", choice_one: nil, choice_two: nil, answer_id: 3, player_id: 3},
  {scenario: "Select Tattoo", description: "Your table is Players. Join on the Tattoos table on Tattoo_id. Select the record where the tattoo is \"Diamond\"", short_description: "Scenario 4", choice_one: nil, choice_two: nil, answer_id: 4, player_id: nil},
  {scenario: "Select Occupation", description: "Your table is Players. Select the record where the occupation is not in \"Butcher\", \"Baker\" and \"Candlestick Maker\".", short_description: "Scenario 5", choice_one: nil, choice_two: nil, answer_id: nil, player_id: nil},
  {scenario: "Welcome Select \"All\"", description: "You have one minute to find all the Players. Start Now.", short_description: "Welcome to Stratequal. You will learn SQL.", choice_one: "Continue", choice_two: "Close", answer_id: nil, player_id: nil}
])
Skill.create!([
  {name: "Asterisk", image_url: "asterisk.png", description: "Select All"},
  {name: "Less Than", image_url: "LessThan.png", description: "Less Than"},
  {name: "Greater Than", image_url: "GreaterThan.png", description: "Greater Than"},
  {name: "Equals", image_url: "Equals.png", description: "Equals"},
  {name: "Percentage Sign", image_url: "Percent.png", description: "Like"},
  {name: "Strings (Varchar)", image_url: nil, description: "Strings"},
  {name: "Numbers (integers Decimals)", image_url: "NumberSign.png", description: "Numbers"},
  {name: "Dates", image_url: nil, description: "Dates"},
  {name: "Queries", image_url: "SQLquery.png", description: "Ask a question to read some data."},
  {name: "Select", image_url: "SelectFromPlayers.png", description: "The SELECT statement is used to select data from a database."}
])
SkillPlayer.create!([
  {player_id: 1, skill_id: 1},
  {player_id: 2, skill_id: 1},
  {player_id: 1, skill_id: 1}
])
Tattoo.create!([
  {name: "Heart"},
  {name: "Diamond"},
  {name: "Clover"},
  {name: "Star"}
])
Villain.create!([
  {name: "Baltan Sejin", tattoo_id: 4},
  {name: "The Shade", tattoo_id: 2},
  {name: "Veidt", tattoo_id: 3},
  {name: "Anti-Monitor", tattoo_id: 1}
])
