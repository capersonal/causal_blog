# Use the official Ruby image with Node.js and Yarn installed
FROM ruby:3.1.6

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Install Bundler
RUN gem install bundler -v 2.6.3

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose port 4000 for Jekyll server (optional)
EXPOSE 4000

# Default command to build the site
CMD ["bundle", "exec", "jekyll", "build"]

