ps aux | grep jekyll | awk {'print $2'} | xargs kill
git pull
rm nohup.out
export JEKYLL_ENV=production
nohup bundle exec jekyll serve --port 80 --host 0.0.0.0 &
