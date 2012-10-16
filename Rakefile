#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'

desc 'Run Devise tests using couchrest_model. Specify path to devise with DEVISE_PATH'
Rake::TestTask.new(:test) do |test|
  ENV['DEVISE_ORM'] ||= 'couchrest_model'
  ENV['DEVISE_PATH'] ||=  File.join(File.dirname(__FILE__), '../devise')
  unless File.exist?(ENV['DEVISE_PATH'])
    puts "Specify the path to devise (e.g. rake DEVISE_PATH=/path/to/devise). Not found at #{ENV['DEVISE_PATH']}"
    exit
  end

  test.libs << 'lib' << 'test'
  test.libs << "#{ENV['DEVISE_PATH']}/lib"
  test.libs << "#{ENV['DEVISE_PATH']}/test"
  test.test_files = FileList["#{ENV['DEVISE_PATH']}/test/**/*_test.rb"] +  FileList['test/**/*_test.rb'] 
  test.verbose = true
end

desc 'Default: run tests for couchrest_model'
task :default => :test
