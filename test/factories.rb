Factory.define :user do |u|
  u.email 'example@example.com'
  u.password 'secret'
  u.password_confirmation 'secret'
end

Factory.define :activity do |a|
  a.activity 'Awesome'
end