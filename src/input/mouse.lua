local retUp =   Rectangle:new(Vector:new(window.width/2, 0.45 * window.height/2), Vector:new(window.width/2, 0.45 * window.height/2))
local retDown = Rectangle:new(Vector:new(window.width/2, 1.55 * window.height/2), Vector:new(window.width/2, 0.45 * window.height/2))

local retLeft = Rectangle:new (Vector:new(window.width/4, window.height/2),      Vector:new(window.width/4, 0.10 * window.height/2))
local retRight = Rectangle:new(Vector:new(3 * window.width/4, window.height/2),  Vector:new(window.width/4, 0.10 * window.height/2))

-- point out the cursor position
function onPointerEvent(x, y)
	input.pointerPos.x = x
	input.pointerPos.y = y
end

function onMouseLeftEvent(down)
	if down == true then
		input.pointerPressed = true
		
		if retUp:pointInside(input.pointerPos) then input.up = true end
		if retDown:pointInside(input.pointerPos) then input.down = true end
		if retLeft:pointInside(input.pointerPos) then input.left = true end
		if retRight:pointInside(input.pointerPos) then input.right = true end
	else
		input.pointerPressed = false
		
		input.up = false
		input.down = false
		input.left = false
		input.right = false
	end
end

function onMouseMiddleEvent(down)
	if down == true then
		input.pointerPressed = true
	else
		input.pointerPressed = false
	end
end

function onMouseRightEvent(down)
	if down == true then
		input.pointerPressed = true
	else
		input.pointerPressed = false
	end
end