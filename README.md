# Todo MV* Application in CoffeeScript for @convergese

coffeescript-jasmine-boilerplate is a small framework that was created with code katas in mind.  It gives you a quick way
to begin writing and testing CoffeeScript with Jasmine.

## Getting Started

First, you'll need [node.js](http://nodejs.org) and [PhantomJS](http://phantom.js) installed.

Next, clone the repo and create your project:

``` bash
$ git clone git@github.com:jedschneider/coffeescript-todo-convergese.git <your-project-name>
```

Then, install grunt and all of its dependencies from the root of your project:

``` bash
$ npm install
$ grunt build
```

The `build` task copies in vendored assets via bower.

Then, run the watch process to compile your coffeescript on save.

``` bash
$ grunt watch
```

## About
this project was largely copied and tweaked from the original; read
along below for the associated information from the original.


coffeescript-jasmine-boilerplate includes several plugins that allow you to focus on your kata.  grunt-contrib-watch has been configured
to keep an eye on whenever CoffeeScript files change. grunt-contrib-coffee will automatically compile your CoffeeScript into JavaScript and grunt-contrib-jasmine
executes your jasmine specs.

Also included is [jasmine-given](https://github.com/searls/jasmine-given).  It is a jasmine helper that encourages leaner, meaner specs using `Given`, `When`, and `Then`.

## Usage

Once you're ready, kick it off by executing:

``` bash
$ grunt watch
```
--NOTE: grunt-contrib-watch is still work in progress, so if you add a new .coffee file and nothing happens, you can compile
manually and run the tests by using:

```bash
$ grunt coffee
```
then

```bash
$ grunt jasmine
```
