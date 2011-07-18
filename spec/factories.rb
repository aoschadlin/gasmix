Factory.define :user do |user|
  user.email                 "bob.hart@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :car do |car|
  car.name        "BMW 535i"
  car.tank_size   18.5
  car.association :user
end
