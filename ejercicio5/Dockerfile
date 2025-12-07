# Use the official Ruby 3.1 image as the base
FROM ruby:3.1

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock to the working directory
COPY ./aplicacion/Gemfile ./aplicacion/Gemfile.lock ./

# Install the application's dependencies (gems)
RUN bundle install

# Copy the rest of the application code
COPY ./aplicacion .

# Set the default command to run when the container starts
#CMD ["ruby", "./your_app.rb"]

EXPOSE 5173
EXPOSE 3000


CMD ["rails", "server"]


