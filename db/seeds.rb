require 'faker'

# create some sample grapes
Grape.create(name: 'Carmenere')
Grape.create(name: 'Cabernet Sauvignon')
Grape.create(name: 'Malbec')
Grape.create(name: 'Zweigelt')
Grape.create(name: 'Gewürztraminer')
Grape.create(name: 'Merlot')
Grape.create(name: 'Syrah')
Grape.create(name: 'Sauvignon blanc')
Grape.create(name: 'Chardonnay')
Grape.create(name: 'Isabella')

# create some sample sommeliers
10.times do
  s = Sommelier.create(name: Faker::Name.unique.name, age: rand(20..100), nationality: Faker::Address.country)
  rand(2..5).times do
    role = JournalSommelier.roles.keys[rand(0..2)]
    JournalSommelier.create(sommelier: s, journal: Faker::Restaurant.name, role: role)
  end
end

# create some wines
50.times do
  w = Wine.new(name: Faker::Hipster.words(number: 3).map(&:humanize).join(' '))
  w.save

  # grapes
  pct_sum = 0
  cnt = 0
  10.times do
    if pct_sum < 100
      pct = [rand(1..10)*10, 100-pct_sum].min
      pct_sum += pct
      GrapeWine.create(wine: w, percentage: pct, grape_id: rand(Grape.first.id..Grape.last.id))
    end
  end

  # evaluation
  e = Evaluation.create(wine: w, score: rand(1..100))
  rand(1..5).times do
    EvaluationSommelier.create(evaluation: e, sommelier_id: rand(Sommelier.first.id..Sommelier.last.id))
  end
end
