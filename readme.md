# jackbracken.me

Personal site built usong Ruby on Rails and Zurb Foundation's CSS framework. See a slightly behind version live [here](http://jackbracken.me).

## TODO

* Individual photograph pages with:
  1. Camera and exposure meta-information
  2. ~~Map integration~~
  3. Maybe a comments feed
* Contact page with cards for:
  1. Twitter
  2. Github
  3. Email
  4. 500px
  5. LinkedIn
* Finish creating blogging capablity

## Get Started

Clone this repository.

Change into the directory.

```bash
sudo apt-get update
sudo apt-get install imagemagick
bundle install
rake db:create
rake db:migrate
rails s
```