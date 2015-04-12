Answer.create!([
  {name: "North", scenario_id: 1, player_id: nil, link: "/tables"},
  {name: "East", scenario_id: 2, player_id: nil, link: nil},
  {name: "West", scenario_id: 3, player_id: 3, link: nil},
  {name: "East", scenario_id: 4, player_id: 2, link: nil},
  {name: "South", scenario_id: 5, player_id: nil, link: nil},
  {name: "South", scenario_id: 6, player_id: nil, link: nil},
  {name: "North", scenario_id: 7, player_id: nil, link: nil}
])
Location.create!([
  {city: "Chicago", country: "United State", woeid: "12784308", wikipedia_link: "http://en.wikipedia.org/wiki/File:Chicago_montage1.jpg"},
  {city: "Melbourne", country: "Austrailia", woeid: "1103816", wikipedia_link: "http://en.wikipedia.org/wiki/City_of_Melbourne"}
])
Player.create!([
  {last_name: "East", gender: "M", first_name: "Jack", image: "ManOne.jpg", tattoo_id: 1, occupation: "Candlestick Maker"},
  {last_name: "South", gender: "F", first_name: "Lady", image: "WomanOne.jpg", tattoo_id: 3, occupation: "Baker"},
  {last_name: "West", gender: "F", first_name: "Queen", image: "WomanTwo.jpg", tattoo_id: 2, occupation: "Villain"},
  {last_name: "North", gender: "M", first_name: "King", image: "ManTwo.jpg", tattoo_id: 4, occupation: "Butcher"}
])
PlayerAnswer.create!([
  {player_id: 1, answer_id: 1},
  {player_id: 2, answer_id: 2},
  {player_id: nil, answer_id: nil}
])
Scenario.create!([
  {scenario: "Select All", description: "Use the * with the table Players. ", descriptiontwo: "To select all records, type \"Select * from Players\"", short_description: "Scenario 1 Use *", choice_one: "Continue", choice_two: "Close", answer_id: 1, player_id: nil},
  {scenario: "Select First Name", description: "Try using the < sign with the tables Players. ", descriptiontwo: "Select the records where the First_Name is \"less than\" King.", short_description: "Scenario 2 Use <", choice_one: nil, choice_two: nil, answer_id: 2, player_id: 4},
  {scenario: "Select Last Name", description: "Use the >  sign to select the Players whose Last_Name is greater than \"Stark\".", descriptiontwo: nil, short_description: "Scenario 3 Use >", choice_one: nil, choice_two: nil, answer_id: 3, player_id: 3},
  {scenario: "Select First Name", description: "Use the = sign to select the Player whose First_Name is \"Jack\"", descriptiontwo: nil, short_description: "Scenario 4 Use =", choice_one: nil, choice_two: nil, answer_id: 4, player_id: nil},
  {scenario: "Select Last Name", description: "Use the % sign to select the Players whose Last_Name are like \"%h\"", descriptiontwo: nil, short_description: "Scenario 5 Use %", choice_one: nil, choice_two: nil, answer_id: 5, player_id: nil},
  {scenario: "Select Last Name and Gender", description: "Use the % sign and keyword AND ", descriptiontwo: "select the Player whose Last_Name is like \"%h\" and Gender is 'F'", short_description: "Scenario 6 Use 'And'", choice_one: nil, choice_two: nil, answer_id: 6, player_id: nil},
  {scenario: "Select From Tattos", description: "Your table is Players. Join on the Tattoos table on Tattoo_id. Select the record where the Tattoo name is \"Star\".", descriptiontwo: nil, short_description: "Scenario 7 Use Inner Join", choice_one: nil, choice_two: nil, answer_id: 7, player_id: nil},
  {scenario: "Select Between", description: "Use the Between keyword to select Players etc", descriptiontwo: nil, short_description: nil, choice_one: nil, choice_two: nil, answer_id: nil, player_id: nil},
  {scenario: "Select Occupation", description: "Your table is Players. Select the record where the occupation is not in \"Butcher\", \"Baker\" and \"Candlestick Maker\".", descriptiontwo: nil, short_description: nil, choice_one: nil, choice_two: nil, answer_id: nil, player_id: nil},
  {scenario: "Select Tattoo", description: "", descriptiontwo: nil, short_description: nil, choice_one: nil, choice_two: nil, answer_id: nil, player_id: nil}
])
Skill.create!([
  {name: "Asterisk", image_url: "asterisk.png", description: "Select All", detail: "Using * with Select returns all data, rows and columns. ", detailtwo: "It’s best not to use this when you have a lot of data.", detailthree: " It is useful when you know the table name but are unsure of the column names.", detailfour: "Use skill with Scenario 1.", detailfive: nil},
  {name: "Less Than", image_url: "LessThan.png", description: "Select <", detail: "Using \"<\" in a SQL statement returns all the values less than the value you are searching for. ", detailtwo: "You will need to provide a column name when you use <.", detailthree: "The value can be numeric or alphabetical.", detailfour: "Use skill with Scenario 2. ", detailfive: "Be sure to read \"What About Tables?\" at READ ME link above."},
  {name: "Greater Than", image_url: "GreaterThan.png", description: "Select >", detail: "As you would guess, using “>” in a SQL statement returns all the values less than the value you are searching for. ", detailtwo: "Provide the column name when using >.", detailthree: "Use skill with Scenario 3.\t", detailfour: nil, detailfive: nil},
  {name: "Equals", image_url: "Equals.png", description: "Select where column =", detail: "Using = in a SQL statement returns all the data equal to the value you are searching for. ", detailtwo: "Be sure to provide the column name when using =.", detailthree: "Use skill with Scenario 4.", detailfour: nil, detailfive: nil},
  {name: "Percentage Sign", image_url: "Percent.png", description: "Like using Wild Card", detail: "Using % as a wildcard lets you search for records that match part of your request.", detailtwo: "The % could be one character or more than one ", detailthree: "Use with Scenario 5.", detailfour: nil, detailfive: nil},
  {name: "'And'", image_url: "And.png", description: "Using More than One Criteria", detail: "Using the word 'AND' to match more than one value.", detailtwo: "Use with Scenario 6.", detailthree: nil, detailfour: nil, detailfive: nil},
  {name: "Joins", image_url: "joinCommonRecords.png", description: "Inner Join", detail: "Using Joins in a SQL allows you to connect tables with common keys (columns).", detailtwo: "The syntax is generally Select * from Table t ", detailthree: nil, detailfour: nil, detailfive: "Be sure to read \"What about Joins?\""},
  {name: "Dates", image_url: nil, description: "Dates", detail: nil, detailtwo: nil, detailthree: nil, detailfour: nil, detailfive: nil},
  {name: "Queries", image_url: "SQLquery.png", description: "Ask a question to read some data.", detail: nil, detailtwo: nil, detailthree: nil, detailfour: nil, detailfive: nil},
  {name: "Select", image_url: "SelectFromPlayers.png", description: "The SELECT statement is used to select data from a database.", detail: nil, detailtwo: nil, detailthree: nil, detailfour: nil, detailfive: nil},
  {name: "Numbers (integers Decimals)", image_url: "NumberSign.png", description: "Numbers", detail: nil, detailtwo: nil, detailthree: nil, detailfour: nil, detailfive: nil},
  {name: nil, image_url: nil, description: nil, detail: nil, detailtwo: nil, detailthree: nil, detailfour: nil, detailfive: nil}
])
SkillPlayer.create!([
  {player_id: 1, skill_id: 1},
  {player_id: 2, skill_id: 1},
  {player_id: 1, skill_id: 1}
])
Tattoo.create!([
  {name: "Heart", player_id: 1},
  {name: "Diamond", player_id: 3},
  {name: "Clover", player_id: 2},
  {name: "Star", player_id: 4}
])
Villain.create!([
  {name: "Baltan Sejin", tattoo_id: 4},
  {name: "The Shade", tattoo_id: 2},
  {name: "Veidt", tattoo_id: 3},
  {name: "Anti-Monitor", tattoo_id: 1}
])
