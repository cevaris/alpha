#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'

program :version, '0.0.1'
program :description, ''
 
command :create do |c|
  c.syntax = 'Alpha create [options]'
  c.summary = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Alpha::Commands::Create
  end
end

