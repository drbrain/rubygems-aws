# application settings
default["application"]["application_port"] = 3000
default["application"]["internal_port"] = 2000
default["application"]["application_servers"] = []

# nginx
default["nginx"]["version"] = "1.2.6"
default["nginx"]["iteration"] = "2"

# backups
default["rubygems"]["backups"]["config_dir"] = "/var/lib/rubygems-backup"
default["rubygems"]["backups"]["notification_from"] = ""
default["rubygems"]["backups"]["notification_to"] = ""
default["rubygems"]["backups"]["redis"]["bucket_name"] = ""
default["rubygems"]["backups"]["redis"]["keep"] = 10
default["rubygems"]["backups"]["postgresql"]["bucket_name"] = ""
default["rubygems"]["backups"]["postgresql"]["keep"] = 10
