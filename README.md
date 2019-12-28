# Bikes

This application provides a backend for the Santander Cycles scheme in London, as instigated by former Mayor Ken Livingstone. It was programmed in Ruby using TDD as revision over Christmas 2019.

## Setup

You will need Ruby 2.6.3. To get it, enter these commands in your terminal:

* `gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`

* `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

* `source /home/pea/.rvm/scripts/rvm`

To install the project:

* `git clone https://github.com/CodeKrakken/christmas-boris-bikes.git`

## Usage

* Run `rspec` in the parent folder to run the unit tests
* You can explore the programme in `irb` - you just need to `require` the various files in `./lib`
* You can run the various feature test scripts in `irb` - just enter `irb feature_test_filename`

Feature Test example:
