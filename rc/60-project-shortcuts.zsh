# Project workspace shortcuts
# technically, these could be aliases, but I want to make it easier to add more functionality to them later, if needed (e.g., changing environment variables)

function projects () {
    cd ~/Dropbox/Projects/
}

function usc () {
    cd ~/Dropbox/Projects/usc
}

function timesync () {
	cd ~/Dropbox/mines/Research/Time\ Sync/tools
}

function utexas () {
	cd ~/Dropbox/utexas
}

function nn () {
	cd ~/Dropbox/utexas/Neural\ Networks
}

function vr () {
	cd ~/Dropbox/utexas/Visual\ Recognition
}


function rprecompile () {
  RAILS_ENV=production bundle exec rake assets:precompile
}