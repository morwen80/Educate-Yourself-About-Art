module ArtistHelper

  def search_for_artists
    require 'hyperclient'

    xapp_token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsImV4cCI6MTU0NzAyODkwNCwiaWF0IjoxNTQ2NDI0MTA0LCJhdWQiOiI1YzFjZmM0OTFhOGUxMjFiYzM4MjgzY2EiLCJpc3MiOiJHcmF2aXR5IiwianRpIjoiNWMyYzhmMjgyYWVmYjk1OGM3OTM1ZDgwIn0.BWPEksCv8Gn1YHi8Q6MOXUi29M-vjEMS8qlP4LN5e-Y'

    api = Hyperclient.new('https://api.artsy.net/api') do |api|
      api.headers['Accept'] = 'application/vnd.artsy-v2+json'
      api.headers['X-Xapp-Token'] = xapp_token
      api.connection(default: false) do |conn|
        conn.use FaradayMiddleware::FollowRedirects
        conn.use Faraday::Response::RaiseError
        conn.request :json
        conn.response :json, content_type: /\bjson$/
        conn.adapter :net_http

      end
    end
  end
end
