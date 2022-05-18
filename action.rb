require 'octokit'
require 'json'

octokit = Octokit::Client.new(access_token: ENV['TOKEN'])

payload = JSON.parse(File.read(ENV['GITHUB_EVENT_PATH']))
octokit.auto_paginate = true
issues_and_prs = octokit.list_issues(repository: payload['repository']['full_name'], state: 'all')

puts issues_and_prs