local robot = require("robot")
local computer = require("computer")
local sides = require("sides")
local component = require("component")

print("X value:")
X1 = io.read("*n")
print("Y value:")
Y1 = io.read("*n")
print("Z value:")
Z1 = io.read("*n")

X = tonumber(X1)
Y = tonumber(Y1)
Z = tonumber(Z1)

B = 0
T = 1
while(B < Y)
do
    C = 0
    while(C < Z)
    do
        A = 0
        while(A < X)
            block = robot.detect()
            if(block == true)then
                robot.swing()
                robot.forward()
            else
                robot.forward()
            end
            C = C + 1
        end
        
        if(T==0)then
            if(C == Z)
                print("Level complete!")
            else
                robot.turnRight()
                robot.swing()
                robot.forward()
                robot.turnRight()
                T = 1
            end
        else
            if(C == Z)
                print("Level complete!")
            else
                robot.turnLeft()
                robot.swing()
                robot.forward()
                robot.turnLeft()
                T = 1
            end
        end
    end
    block2 = robot.detectDown()
    if(block2 == true)then
        robot.swingDown()
        robot.down()
    else
        robot.down()
    end
    Y = Y + 1
end

--not needed kinda just bloat
--[[function Get_power()
    max_power = computer.maxEnergy()
    power = computer.energy()
    percent = power / max_power
    if(percent < 0.06)then

    end
end]]