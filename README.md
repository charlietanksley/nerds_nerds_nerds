# NerdsNerdsNerds

All the Nerds at Big Nerd Ranch (according to the main website).

## Installation

Add this line to your application's Gemfile:

    gem 'nerds_nerds_nerds', github: 'charlietanksley/nerds_nerds_nerds'

And then execute:

    $ bundle

## Usage

```ruby
1] pry(main)> require 'nerds_nerds_nerds'
=> true
[2] pry(main)> nerds = NerdsNerdsNerds.nerds
=> [#<struct NerdsNerdsNerds::Nerd ...]
[3] pry(main)> first_nerd = nerds.first
=> #<struct NerdsNerdsNerds::Nerd ...>
[4] pry(main)> first_nerd.name
=> "CBQ"
[5] pry(main)> first_nerd.image
=> "http://www.bignerdranch.com/images/headshots-white-bg/cbq.jpg"
[6] pry(main)> first_nerd.html_id
=> "cbq"
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/nerds_nerds_nerds/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
