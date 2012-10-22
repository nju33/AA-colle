#encoding: utf-8

Aa.transaction do
  (1..30).each do |i|
    Aa.create(name: "test#{i}", body: "test#{i}\n\n\n\n\ntest#{i}", user_id: 5)
  end
end
