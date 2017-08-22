# feature

* [Homepage](https://github.com/barleyj/feature#readme)
* [Issues](https://github.com/barleyj/feature/issues)
* [Documentation](http://rubydoc.info/gems/feature/frames)

[![Build Status](https://secure.travis-ci.org/barleyj/feature.svg?branch=master)](https://travis-ci.org/barleyj/feature)

## Description

I believe that we need insights into how our software is being used. Most of the time, we only know what features our users are taking advantage of when they tell us about a problem. This library aims to solve that problem by allowing us to gather data on what features users are taking advantage of. 

## Features

TODO: Describe Feature

## Feature Examples

    require 'feature'

    class TestFeature < Feature::Feature
        @@name = :test
    end

    TestFeature.configure(LogReporter)

    TestFeature.do {
        puts "My awesome new feature!"
    }

## Feature Toggles

TODO: Describe Feature Toggle

## Feature Toggle Examples

    require 'feature'

    class TestFeature < Feature::FeatureToggle
        @@name = :test
    end

    config = Feature::Config.new({:test => true})
    TestFeature.configure(config, LogReporter)

    TestFeature.do {
        puts "My awesome new feature!"
    }

    => I, [2017-08-22T09:55:26.138749 #18054]  INFO -- : test is enabled
    
    TestFeature.do {
        throw "Oh noes!!"
    }

    => I, [2017-08-22T09:55:54.588920 #18813]  INFO -- : test is enabled
    => E, [2017-08-22T09:55:54.589005 #18813] ERROR -- : Error detected in test: uncaught throw "Oh noes!!"
    
## Requirements

## Install

    $ gem install feature

## Copyright

Copyright (c) 2017 Jayson Barley

See LICENSE.txt for details.
