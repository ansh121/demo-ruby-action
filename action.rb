require 'octokit'
require 'json'

octokit = Octokit::Client.new(access_token: ENV['TOKEN'])

payload = JSON.parse(File.read(ENV['GITHUB_EVENT_PATH']))
octokit.auto_paginate = true
issues_and_prs = octokit.issues payload['repository']['full_name'],

puts issues_and_prs
# puts "Hello"