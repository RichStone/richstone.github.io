ps aux | grep jekyll | awk {'print $2'} | xargs kill
git pull
rm nohup.out
export JEKYLL_ENV=production
nohup bundle exec jekyll build --watch -d /var/www/html &
