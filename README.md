# <img src="logo.png" style="max-height:100px" /> Lookout

[![Gem Version](https://badge.fury.io/rb/lookout.svg)](https://badge.fury.io/rb/lookout)
[![Test Coverage](https://img.shields.io/badge/coverage-4.05%25-brightgreen.svg)](coverage/index.html)
[![RSpec Tests](https://img.shields.io/badge/tests-86%20passing-brightgreen.svg)](spec/)
[![Rails 6-8 Ready](https://img.shields.io/badge/Rails%206--8-Ready-brightgreen.svg)](#rails-compatibility)

A full-featured, mountable analytics dashboard for your Rails app, powered by Ahoy. 

Fork of [Ahoy Captain](https://github.com/joshmn/ahoy_captain) with **SQLite support**, **Rails 8 compatibility**, and continued development.

<a href="https://github.com/RubyOnVibes/lookout/blob/main/ss.jpg"><img src="ss.jpg" style="max-width:300px" /></a>

## Database Support

Lookout supports **PostgreSQL** and **SQLite**. The gem automatically detects your database adapter and uses the appropriate JSON query syntax. You can seamlessly switch between databases without any configuration changes.

## Installation

### 1. Do the bundle

Drop it in:

```bash
$ bundle add lookout
```

### 2. Install it

```bash
$ rails g lookout:install
```

### 3. Make sure your events are setup correctly

Lookout doesn't do any tracking for you; it merely provides a dashboard for your data from the Ahoy gem. 

By default, Lookout assumes you're tracking `controller` and `action` in your `Ahoy::Event` properties, and a page view event is named `$view`. See this section for more information: https://github.com/ankane/ahoy#events

For a quick sanity check:

```ruby
Lookout.event.where(name: Lookout.config.event[:view_name]).count
Lookout.event.with_routes.count
```

This can be fully-customized. See the initializer `config/initializers/lookout.rb` for more.

### 4. Star this repo

No, seriously, I need all the internet clout I can get.

### 5. Analyze your nightmares

If you have a large dataset (> 1GB) you probably want some indexes. `rails g lookout:migration`

## Features

* Top sources
* Top pages, landing pages, and exit pages
* UTM reporting
* Top locations, by countries, regions, and cities
* Top devices, by browser, OS, and device type
* Goal tracking
* Funnels
* Filter by:
    * Page
    * Location
    * Device type
    * OS
    * UTM tags
    * Goal
    * Event Property
* CSV exports
* Date comparison

## Coming soon ™️

* Bug fixes and performance improvements

## Contributors

This was built during the Rails Hackathon in July 2023 with [afogel](https://github.com/afogel) and [dnoetz](https://github.com/dnoetz).

## Contributions

Do your worst; please and thank you in advance! :) 

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
