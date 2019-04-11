#!/usr/bin/env ruby

require "sinatra"

set :port, ENV["PORT"] || 8080

get "/" do
    "Hello World"
end

get "/:code" do
    begin
        target = File.read("redirects/#{params[:code]}")

        redirect target
    rescue
        status 404
        body "#{params[:code]} not found"
    end
end
