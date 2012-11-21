#encoding: utf-8

Tag.transaction do
  (1..30).each do |i|
    (1..10).each { |j| Tag.create(aa_id: "#{i}", tag: "tag#{j}") }
  end
end
