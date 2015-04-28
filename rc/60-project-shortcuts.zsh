# Project workspace shortcuts
# technically, these could be aliases, but I want to make it easier to add more functionality to them later

function projects () {
    cd ~/Dropbox/Projects/
}

function mapletasks () {
    cd ~/Dropbox/Projects/mapletasks
}

function timesync () {
	cd ~/Dropbox/mines/Research/Time\ Sync/tools
}

function rprecompile () {
  RAILS_ENV=production bundle exec rake assets:precompile
}