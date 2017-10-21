namespace :fixup do
  task permits: :environment do
    CitySource.fixup!
  end
end
