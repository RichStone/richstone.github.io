ps aux | grep jekyll | awk {'print $2'} | xargs kill
export JEKYLL_ENV=production
nohup bundle exec jekyll serve &
