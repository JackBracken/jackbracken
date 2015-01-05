# jackbracken.me

Personal site built with angularjs and Zurb Foundation. See current version live [here](http://jackbracken.me).

## TODO

* Individual photograph pages with:
  1. Camera and exposure meta-information
  2. Map integration
  3. Maybe a comments feed
* Contact page with cards for:
  1. Twitter
  2. Github
  3. Email
  4. 500px
  5. LinkedIn
* Write mission statement for homepage
* Create github project cards for Programming page
* Use 500px api to pull in photographs automatically instead of hard-coding themg

## Requirements

You'll need the following software installed to get started.

  * [Node.js](http://nodejs.org): Use the installer provided on the NodeJS website.
  * [Git](http://git-scm.com/downloads): Use the installer for your OS.
    * Windows users can also try [Git for Windows](http://git-for-windows.github.io/).
  * [Ruby](https://www.ruby-lang.org/en/): Use the installer for your OS. For Windows users, [JRuby](http://jruby.org/) is a popular alternative.
    * With Ruby installed, run `gem install bundler sass`.
  * [Gulp](http://gulpjs.com/) and [Bower](http://bower.io): Run `[sudo] npm install -g gulp bower`

## Get Started

Clone this repository.

Change into the directory.

```bash
cd jackbracken
```

Install the dependencies. Running `npm install` will also automatically run `bower install` after. If you're running Mac OS or Linux, you may need to run `sudo npm install` instead, depending on how your machine is configured. Running `bundle` will install the correct version of Sass for the template.

```bash
npm install
bower install
bundle
```

While working on the project, run:

```bash
npm start
```

This will compile the Sass and assemble your Angular app. **Now go to `localhost:8080` in your browser to see it in action.**

To run the compiling process once, without watching any files:

```bash
npm start build
```