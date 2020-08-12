require 'sinatra'

configure do
  # set :port, 80
  set :port, 8080
end

get '/' do
  code = "
  <h1>Hello Sinatra</h1>
  <p>点击右侧按钮开始耗尽cpu <button onclick=\"location='/cpu'\">exhaust cpu</button></p>
  <p>点击右侧按钮查看cpu占用情况 <button onclick=\"location='/catcpu'\">cat cpu</button></p>
  <p><a href=\"https://github.com/ccmywish/wc\" target=\"_blank\" style=\"text-decoration:none;color:#090\">点击查看源代码</a></p>
  "
  erb code
end

get '/cpu' do
  # spawn'bash cpu.sh'
  code = "

  <h1>cpu占用率即将到达100%</h1>
  <p>点击右侧按钮解除cpu占用 <button onclick=\"location='/rcpu'\">release cpu</button></p>
  <p>点击右侧按钮查看cpu占用情况 <button onclick=\"location='/catcpu'\">cat cpu</button></p>
  <p>点击右侧按钮返回首页 <button onclick=\"location='/'\">首页</button></p>

  "
  erb code
end

get '/rcpu' do
   # spawn'bash rcpu.sh'
  code = "

  <h1>cpu占用率正在释放中</h1>
  <p>点击右侧按钮查看cpu占用情况 <button onclick=\"location='/catcpu'\">cat cpu</button></p>
  <p>点击右侧按钮返回首页 <button onclick=\"location='/'\">首页</button></p>

  "
  erb code
end

get '/catcpu' do
  catcpu = `bash ./catcpu.sh`
  catcpu = catcpu.split(" ")
  puts catcpu
  @maxcpucmd = catcpu[1]
  @maxcpu  = catcpu[0]
  code = "

  <h1>查看cpu占用最多的命令，以及它的cpu占用率</h1>
  <p>占用cpu最多的命令为: <b><%= @maxcpucmd %></b></p>
  <p>它占用的cpu为: <b><%= @maxcpu %></b></p>

  <p>点击右侧按钮刷新 <button onclick=\"location='/catcpu'\">刷新</button></p>
  <p>点击右侧按钮返回首页 <button onclick=\"location='/'\">首页</button></p>

  "
  erb code

end
