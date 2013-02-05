#!/usr/bin/env rake
require "bundler/gem_tasks"

task :default => :spec

desc "Run specs"
task :spec do
  system("bacon ./spec/*_spec.rb")
end

task :fetch do
  system("cd test_data && ruby ./base.rb")
end