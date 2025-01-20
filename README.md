# causal_blog
includes thoughts, paper reviews (with code), literature reviews 

# generate blog post locally
gem install bundler -v 2.6.3
bundle install
bundle exec jekyll build
bundle exec jekyll serve
http://127.0.0.1:4000/ 

# generate blog post from docker
docker --version
docker build -t my-jekyll-blog .
docker run --rm -v "$PWD":/srv/jekyll my-jekyll-blog jekyll build
docker run --rm -v "$PWD":/srv/jekyll -p 4000:4000 my-jekyll-blog
http://0.0.0.0:4000/