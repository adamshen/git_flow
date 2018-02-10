#!/usr/bin/env ruby

current_branch = `git rev-parse --abbrev-ref HEAD`
system('git add -u')
system('git commit --amend --no-edit')
system("git push origin #{current_branch} -f")