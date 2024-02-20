local app = require("milua")

-- Example capturing a path variable
app.add_handler(
    "GET",
    "/clientes/.../extrato", 
    function (captures, query, nnã)
        local username = captures[1]
        local times = query.times or 1
        return "The user " .. username .. " is" .. (" very"):rep(times) .. " handsome"
    end
)
a
-- Example returning no data and status
app.add_handler(
    "POST",
    "/user",
    function ()
        return nil, { [":status"] = "204" }
    end
)

-- Hooking the server close event
app.shutdown_hook(function()
    -- cleaning up any external resource
end)

app.start()