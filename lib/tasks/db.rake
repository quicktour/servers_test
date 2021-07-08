namespace :db do
  task :create do
    config = ConfigLoader.db_config
    pg = PG.connect(host: config['host'], port: config['port'],
                    user: config['user'], password: config['password'], dbname: 'postgres')
    
    if pg
      pg.exec("DROP DATABASE IF EXISTS #{config['database']};")
      pg.exec("CREATE DATABASE #{config['database']};")
    end
  end

  task :migrate do
    Sequel.extension :migration
    Sequel::Migrator.run(Database.instance.connection, File.join(App.root, 'db', 'migrations'))
  end
end
