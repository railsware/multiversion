# Multiversion

## Overview

Use Bundler and RVM to test your library against different gem versions and/or ruby versions.

## How it works

In your project create several Gemfiles with specified rvm alias in name. E.g:

    Gemfile.RVM_ALIAS_NAME

Examples:

    Gemfile.ar12_r186
    Gemfile.ar30_r187
    Gemfile.ar30_r192
    Gemfile.ar31_r192

Create aliases

    rvm alias create ar12_r186 ruby-1.8.6-p420
    rvm alias create ar30_r187 ruby-1.8.7-p352
    rvm alias create ar30_r192 ruby-1.9.2-p290
    rvm alias create ar31_r192 ruby-1.9.2-p290


So in each Gemfile you specify certain gem versions gems you need.
Gemfile file name extension contains some unique name optionaly suffixed with ruby version.
So in our example Gemfiles with rvm aliases compination mean:

* ar12_r186 - test library with ActiveRecord v1.15.6 and ruby-1.8.6-p420
* ar30_r187 - test library with ActiveRecord v3.0.10 and ruby-1.8.7-p352
* ar30_r192 - test library with ActiveRecord v3.0.10 and ruby-1.9.2-p290
* ar31_r192 - test library with ActiveRecord v3.1.0  and ruby-1.9.2-p290

So Gemfile extension says about **main traits** of testing environment.
All certain gem versions are specified in corresponding Gemfile.

So for each extension name we explicit knows:

* which ruby version is required (through rvm alias)
* which gems versions are required (through Gemfile filename )

