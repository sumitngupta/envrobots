# envrobots
[![Gem Version](https://badge.fury.io/rb/envrobots.png)](http://badge.fury.io/rb/envrobots)
[![Code Climate](https://codeclimate.com/github/jamescmartinez/envrobots.png)](https://codeclimate.com/github/jamescmartinez/envrobots)

Envrobots is a flexible robots.txt solution for Rails to use different robots.txt files depending on the environment.

## Installation

Add `envrobots` to your Gemfile and run the `bundle` command.

## Getting Started

### 1. Generate Robots Files
```bash
rails g envrobots:install
```
### 2. Customize Robots Files
Envrobots generates two robots.txt files, one for production and one for other environments. By default `robots.production.txt` will allow robots to crawl your site and `robots.other.txt` will prevent robots from crawling.

## TODO
- fix specs
