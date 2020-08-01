require 'sinatra'

get '/' do
    code = "hello from sinatra webrick, click the button to see cpu exhaustion   <button onclick=\"location='/cpu'\">exhaust cpu</button> "
    erb code
end

get '/cpu' do
    spawn'bash cpu.sh'
    "cpu usage will be 100% "
end