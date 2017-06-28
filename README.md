# Private Events

A private, EventBrite style, events app with simple users, events and attendance.

See the app live at https://fathomless-basin-83948.herokuapp.com/

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## TO-DO:

* Rework test-suite
* Add more styling