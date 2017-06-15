Client repositiory: https://github.com/isharma-sharma/car-booking-front
Client Application: https://isharma-sharma.github.io/car-booking-front/
api repository :https://github.com/isharma-sharma/car-booking-back
Deployed API: https://car-booking.herokuapp.com/

Entity relationship  diagram
http://imgur.com/a/69dx1
http://imgur.com/a/g6gcK

Routes
.post('/sign-up', 'users#signup')
.post('/sign-in', 'users#signin')
.delete('/sign-out/:id', 'users#signout')
.patch('/change-password/:id', 'users#changepw')
.resources('users', { only: ['index', 'show'] })
.resources ('cars', { except: [:new, :edit] })

Dependencies are installed with bundle install

General Approach
This API did not take a long time to build. I began by creating a cars controller and model, then adding the correct routes and authentication. I tested all CRUD actions with curl scripts before deploying to Heroku.


Hurdles

Honestly, I did not have any problems creating the API. As I stated previously, this API is relatively simple, and the main complexity occurs on the front end. Because of this, I spent the majority of my time working through problems with javascript, CSS, and jQuery.
