require 'resource_manager'
require 'input_manager'
require 'game'

RESOURCE_TYPE_IMAGE = 0
RESOURCE_TYPE_TILED_IMAGE = 1
RESOURCE_TYPE_FONT = 2
RESOURCE_TYPE_SOUND = 3

WORLD_RESOLUTION_X = 320
WORLD_RESOLUTION_Y = 480

SCREEN_RESOLUTION_X = 2 * WORLD_RESOLUTION_X
SCREEN_RESOLUTION_Y = 2 * WORLD_RESOLUTION_Y

MOAISim.openWindow("Boilerplate", SCREEN_RESOLUTION_X, SCREEN_RESOLUTION_Y)

viewport = MOAIViewport.new()
viewport:setSize(SCREEN_RESOLUTION_X, SCREEN_RESOLUTION_Y)
viewport:setScale(WORLD_RESOLUTION_X, WORLD_RESOLUTION_Y)

function mainLoop()
  Game:start()
end

gameThread = MOAICoroutine.new()
gameThread:run(mainLoop)
