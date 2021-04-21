--- === MacroPad ===
---
--- A Spoon for Hammerspoon to encapsulate macros in a webpage that can be run on an external device

-- Set default variables

--We'll store some stuff in an internal table
local _internal = {}
_internal.initalized = false

-- create a namespace
local MacroPad = {}
MacroPad.__index = MacroPad


-- Metadata
MacroPad.name = "MacroPad"
MacroPad.version = "0.0.1"
MacroPad.author = "Andrew Parnell <aparnell@gmail.com>"
MacroPad.homepage = "https://github.com/asp55/MacroPad"
MacroPad.license = "MIT - https://opensource.org/licenses/MIT"

-------------------------------------------
-- Declare Variables
-------------------------------------------


--- MacroPad.logger
--- Variable
--- hs.logger object used within the Spoon. Can be accessed to set the default log level for the messages coming from the Spoon.
MacroPad.logger = hs.logger.new('MacroPad')


-- MetaMethods
MacroPad = setmetatable(MacroPad, {
  --[[
  -- Getters. Used for when we want to refer specific variables to other values
  __index = function (table, key)
    if(key=="TARGET_KEY") then 
    else
      rawget( table, key )
    end
  end,
  ]]

  --[[
  -- Setters, for when we want to perform some sort action when a key gets changed
  -- You can also use this to make read-only keys by performing no action
  __newindex = function (table, key, value)
     if(key=="TARGET_KEY") then
     else
        return rawset(table, key, value)
     end
  end
  ]]
})

-------------------------------------------
-- End of Variables
-------------------------------------------



-------------------------------------------
-- Methods
-------------------------------------------


function MacroPad:init()
  _internal.server = hs.httpserver.new();

  _internal.initalized = true
  return self
end



--- MacroPad:start() -> MacroPad
--- Method
--- Starts a MacroPad object
---
--- Parameters:
---  * None
---
--- Returns:
---  * The spoon.MacroPad object
function MacroPad:start()
  return self
end

--- MacroPad:stop()
--- Method
--- Stops a MacroPad object
---
--- Parameters:
---  * None
---
--- Returns:
---  * The spoon.MacroPad object
function MacroPad:stop()
  return self
end



-------------------------------------------
-- End of Methods
-------------------------------------------

return MacroPad
