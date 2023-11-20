local TweenService = game:GetService("TweenService")

local coin = script.Parent

coin.Orientation = Vector3.new(coin.Orientation.X, 0, coin.Orientation.Z)
coin.Position = Vector3.new(coin.Position.X, coin.Position.Y - 2, coin.Position.Z)

local tween1Info = TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween1Props = {
	Orientation = Vector3.new(coin.Orientation.X, 360, coin.Orientation.Z)
}

local tween2Info = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)
local tween2Props = {
	Position = Vector3.new(coin.Position.X, coin.Position.Y + 4, coin.Position.Z)
}

local tween1 = TweenService:Create(coin, tween1Info, tween1Props)
local tween2 = TweenService:Create(coin, tween2Info, tween2Props)

tween1:Play()
tween2:Play()