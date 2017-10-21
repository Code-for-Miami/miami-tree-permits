namespace :db do
  desc 'Dump out a pg custom dump'
  task :dump => 'dump:custom'

  namespace :dump do
    task :custom => :environment do
      out_dir = Rails.root.join 'tmp', 'dumps'
      FileUtils.mkdir_p out_dir
      output_filename = Rails.root.join('tmp',
                                        'dumps',
                                        "#{Time.now.to_i}-#{Rails.env}.dump")

      dbname = MiamiTreePermits::Application.config.
                 database_configuration[Rails.env]['database']

      sh "pg_dump -Fc -f #{output_filename} -U postgres -h psql #{dbname}"
    end

    task :sql => :environment do
      output_filename = Rails.root.join('tmp', 'dumps',
                                        "#{Time.now.to_i}-#{Rails.env}.sql")
      dbname = MiamiTreePermits::Application.config.database_configuration[Rails.env]['database']
      sh "pg_dump -Fp -f #{output_filename} #{dbname}"
    end
  end
end
