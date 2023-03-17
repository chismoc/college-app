class ApplicationController < ActionController::Base
before_action :print_display_message

def print_display_message
    puts "iam a filter"
end
end
