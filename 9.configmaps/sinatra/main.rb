require 'sinatra/base'

require 'pp'

class MiApp < Sinatra::Base

		get '/' do
			body get_vars
		end

private 
	
		def get_vars
			[ "USER",
        "REDIS_URL",
  			"CELERY_BROKER_URL",
  			"CELERY_FLOWER_USER",
  			"CELERY_FLOWER_PASSWORD",
  			"FLOWER_PORT",
  			"DATABASE_URL",
  			"DJANGO_SETTINGS_MODULE",
  			"DJANGO_SECRET_KEY",
  			"DJANGO_ADMIN_URL",
  			"DJANGO_ALLOWED_HOSTS",
  			"DJANGO_DEFAULT_FROM_EMAIL",
  			"DJANGO_SECURE_SSL_REDIRECT",
  			"DJANGO_SESSION_COOKIE_SECURE",
  			"DJANGO_CSRF_COOKIE_SECURE",
  			"RECAPTCHA_SECRET_KEY",
  			"RECAPTCHA_VERIFY_ENDPOINT",
  			"POSTGRES_HOST",
  			"POSTGRES_PORT",
  			"POSTGRES_DB",
  			"POSTGRES_USER",
  			"POSTGRES_PASSWORD",
  			"DJANGO_AWS_ACCESS_KEY_ID",
  			"DJANGO_AWS_SECRET_ACCESS_KEY",
  			"DJANGO_AWS_STORAGE_BUCKET_NAME"].map{|var| "#{var}:#{ENV[var]}"}.join("<br />")
		end
end
MiApp.set :logging, true
MiApp.set :bind, '0.0.0.0'
MiApp.run!