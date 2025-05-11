--[[
--- Created by JustGod (https://github.com/JustGodWork/jClassLib) ❤
--]]

---@class Vector2: BaseObject
---@field public x number
---@field public y number
---@overload fun(x: number, y: number): Vector2
---@overload fun(): Vector2
Vector2 = Class.new 'Vector2';

---@private
---@param x number
---@param y number
function Vector2:Constructor(x, y)
    self.x = type(x) == "number" and math.round(x, 2) or 0.0;
    self.y = type(y) == "number" and math.round(y, 2) or 0.0;

    local mt = self:GetMetatable();
    mt.__tostring = function()
        return ('Vector2(%s, %s)'):format(self.x, self.y);
    end
end

---@param vector2 Vector2
---@return number
function Vector2:Distance(vector2)
    return math.sqrt(math.pow(self.x - vector2.x, 2) + math.pow(self.y - vector2.y, 2));
end

---@param vector2 Vector2
---@return boolean
function Vector2:Equal(vector2)
    return self.x == vector2.x and self.y == vector2.y;
end

---@param vector2 Vector2
---@return Vector2
function Vector2:Subtract(vector2)
    return Vector2(self.x - vector2.x, self.y - vector2.y);
end

return Vector2;