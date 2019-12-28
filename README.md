# Bikes

This application provides a backend for the Santander Cycles scheme in London, as instigated by former Mayor Ken Livingstone. It was programmed in Ruby using TDD as revision over Christmas 2019.

## User stories

```As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a person,
So that I can use a bike,
I'd like to get a bike from a docking station.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.```

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

<img width="1280" alt="Screenshot 2019-12-28 at 14 21 30" src="https://user-images.githubusercontent.com/52076323/71545025-17321e00-297e-11ea-8baa-2161cc3ee6e3.png">


