require 'cms/module_installation'

class BcmsSeoSitemap::InstallGenerator < Cms::ModuleInstallation
  add_migrations_directory_to_source_root __FILE__

  # Add migrations to be copied, by uncommenting the following file and editing as needed.
  # copy_migration_file 'name_of_migration'

  
end
