require 'sinatra'

get '/' do
    system 'bash cpu.sh'
    "cpu usage will be 100% "
end