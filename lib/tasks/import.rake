namespace :import do
  task permits: :environment do
    CitySource.import!
  end
end
