def lewagon_web_dev(batch)
  # sleep 604800
  are_there = []
  batch.map! do |student|
    JuniorDev.new(name: student,
                  employable: (0 ? "truthy" : "falsey"),
                  regrets: are_there.any?)
  end
end
batch_740 = %w[Morgan Paula Emily Thomas Adam Karl]
cologne_batch_1 = batch_740
p lewagon_web_dev(cologne_batch_1)
