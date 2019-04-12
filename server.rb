#!/usr/bin/env ruby

require "sinatra"

set :port, ENV["PORT"] || 8080

def validate(code)
    (code =~ /^[a-z0-9_-]+$/) == 0
end

get "/" do
    "Hello World"
end

get "/:code" do
    if validate params[:code]
        begin
            target = File.read("redirects/#{params[:code]}")
            target.strip!

            redirect target
        rescue
            status 404
            body "#{params[:code]} not found"
        end
    else
        status 400
        body "Invalid code"
    end
end
