#!/bin/sh

# Start redis-server
echo daemonize yes | redis-server -

# Start Rack application
bundle exec rackup -p $PORT -o 0.0.0.0
