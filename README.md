An overly simple (arguably hacky 🔪) proof of concept for how testing your stripe integration could work.

![example_run](https://github.com/gkemmey/stripe_testing_poc/blob/master/example_run.gif)

### Dependencies

1. [stripe-mock](https://github.com/stripe/stripe-mock) (well, specifically _[this one](https://github.com/gkemmey/stripe-mock)_):

    ```
    $ git clone git@github.com:gkemmey/stripe-mock.git
    $ git checkout testing-poc
    $ go install
    ```

2. [This change](https://github.com/gkemmey/stripe-ruby/compare/master...gkemmey:testing-poc) to [stripe-ruby](https://github.com/stripe/stripe-ruby). 👈 Handled for you by `bundle install`.

### Running

1. `$ bundle install`

2. `$ bundle exec rails test`
