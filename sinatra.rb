require 'sinatra'

get '/' do
    "hello from sinatra webrick, try /cpu and see "
end

get '/cpu' do
    system 'bash cpu.sh'
    "cpu usage will be 100% "
end