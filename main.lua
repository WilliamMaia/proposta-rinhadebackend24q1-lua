local pegasus = require 'pegasus'

local server = pegasus:new({
  port='8080',
})

local printTable = function(table)
    for k, v in pairs(table) do
      print(k, '=', v)
    end
end


server:start(function (request, response)
  print(request:path())
  for c in string.gmatch(request:path(), "/clientes/(\\d+)/extrato") do
    print("a", c)
  end
  printTable(request['querystring'])
  print "It's running..."
  response:addHeader('Content-Type', 'application/json'):write('{"msg": "hello pegasus world!"}')
end)