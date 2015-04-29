module("Game", package.seeall)

local resource_definitions = {

}

function Game:start()
  self.initialize()

  while(true) do
    self:processInput()
    coroutine.yield()
  end
end

function Game:initialize()
  self.layer = MOAILayer2D.new()
  self.layer:setViewport(viewport)

  MOAIRenderMgr.setRendereTable({ self.layer })
  ResourceDefinitions:setDefinitions(resource_definitions)
end

function Game:processInput()
end
