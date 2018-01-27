# Luvotels - Full-stack hiring test
## Foreword
This is my solution to the Luvotels full-stack practical test.

## User journey
  * The motel owner needs to be able to login and see his/her reports.
  * The reports must contain:
    * bookings
    * total earnings and other stats

## Database
The challenge provided a basic API for the motels, rooms and bookings. I decided to add the motels and rooms to a database for better performance and less API calls. These models are relatively static and don’t need to be updated that regularly.

These models were added in the seed, but in further development it would make sense to implement a background job to sync the database with the API at a certain interval.

For the bookings I decided to use Active Resource because this content is more dynamic and needs to be constantly updated. To limit the number of calls to the API I added low level caching in the controller.

## Users
One of the prerequisites of the challenge was to have an user login in order to see only the reports for his/her motel(s). For the purpose I created three users and made them each the owner of one of the three provided motels.

For testing the app, these are the logins:

user 1: janelle_sipes@haag.info
user 2: kaycee@mayert.co
user 3: andy.kaulke@willhayes.io

password: luvcode6

## Design
For the design I tried to follow the style of the Luvotels site as much as possible. I used the same color palette and font.

To speed up the development I used a few Le Wagon UI components, like the navigation bar and also the list items.

## Things to improve
  * Add pagination to the booking list.
  * Add filtering so that the user can view the bookings for a specific room or date range.
  * Make it possible for one user to have multiple motels.

## Deployment
The app was deployed to Heroku at this address:

https://luvotels-buzzmeekz.herokuapp.com/
