mockData = [
  {
    name: 'Spiderman',
    age: 17,
    super_power: 'All things spider',
    description: 'Your friendly neighborhood Spiderman.'
  },
  {
    name: 'Blackwidow',
    age: 32,
    super_power: 'Badass',
    description: 'Loyal to my family.'
  },
  {
    name: 'Hulk',
    age: 41,
    super_power: 'Super angry',
    description: 'I smash.'
  },
  {
    name: 'Ironman',
    age: 48,
    super_power: 'Too smart',
    description: 'I am Ironman.'
  },
  {
    name: 'Batman',
    age: 35,
    super_power: 'Too rich',
    description: 'Wanna ride in my bat mobile?'
  },
  {
    name: 'Doctor Strange',
    age: 40,
    super_power: 'Time operator',
    description: 'You\'re one in a million.'
  }
]

mockData.each do | attributes |
  Hero.create attributes
end