DEBUG = True

DATABASES = {
    'default': {
        'NAME': 'btredb',
        'ENGINE': 'django.db.backends.mysql',
        'USER': 'root',
        'PASSWORD': 'passw0rd',
        'HOST': 'mysql-db',
        'PORT' : '3306'
    },
}
