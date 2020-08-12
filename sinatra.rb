require 'sinatra'

get '/' do
  code = "
  <h1>Hello Sinatra</h1>
  <p>
  点击右侧按钮开始<b>占用</b>cpu
  <button onclick=\"location='/cpu'\">exhaust cpu</button>
  </p>
  <p>
  <a href=\"https://github.com/ccmywish/wc\" target=\"_blank\">点击查看源代码</a>
  </p>
  "
  erb code
end

get '/cpu' do
  # spawn'bash cpu.sh'
  code = "
  <h1>cpu占用率即将到达100%</h1>
  <p>
  点击右侧按钮<b>解除</b>占用cpu
  <button onclick=\"location='/rcpu'\">release cpu</button>
  </p>
  <p>
  点击右侧按钮返回首页
  <button onclick=\"location='/'\">首页</button>
  </p>
  "
  erb code
end

get '/rcpu' do
   # spawn'bash rcpu.sh'
  code = "
  <h1>cpu占用率正在释放中</h1>
  <p>
  点击右侧按钮返回首页
  <button onclick=\"location='/'\">首页</button>
  </p>

  "
  erb code
end
