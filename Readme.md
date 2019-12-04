Django Demo App
=
Bt Real Estate
-

This app demonstrates basic to intermediate DJango technique and usage. I wrote it as part of a Django course I did over on Packt. It's a good app to learn Django from - I am quite good now. It comes with prebuilt HTML and I worked through the materials and converted it into Django - and coded the views and models and routing with the urls.

I included a Dockerfile and docker-compose to run the app easily with a SQL server (MySQL 5) - Just run the docker-compose up. It should work fine - I needed some time to configure it but I think it's good now.

The data is seeded as well so no problems with a empty app - the Admin area is the primary input page, the login is admin, password is password.

If you don't need docker to run it please edit the settings (or the load local_settings). Running it is easy - just migrate the db, then:

    python manage.py loaddata seed.json

and runserver.

The docker-compose may loop a little before it stabilizes - I need to include a wait for db function.

Please Contact me at:

- shyampatrick@outlook.my (my GitHub email) -or-
- shyamkumarpatrick@gmail.com (my new professional email) /
- (or my older email: sykron@gmail.com)

for anything.

*ps: My Web Page will be available soon*
