-----------------------------------------------------------------------------------------
--
-- Main.Lua
--
-- Program determines 
--
-- made by Davin Rousseau
--Made on Apr.4th/2019
-----------------------------------------------------------------------------------------
display.setDefault("background", 0, 1, 2)

local calculatebutton = display.newImageRect( "assets/acidbutton.png", 100, 100 )
calculatebutton.x = 150
calculatebutton.y = 250
calculatebutton.id = "calculate button"

local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 180, 100, 70 )
ageTextField.id = "age textField"

local ageText = display.newText( "Age:", 80, 70, native.systemFont, 18 )
ageText:setFillColor( 1, 0, 0 )

local dayweekTextField = native.newTextField( display.contentCenterX, display.contentCenterY- 110, 100, 70 )
dayweekTextField.id = "day of the week textField"

local dayweekText =  display.newText( "Day::", 80, 130, native.systemFont, 18 )
dayweekText:setFillColor( 1, 0, 0 )


print( "Write in your age and day of the week!: " )

function ratedTouch(event)

		local numberage=tonumber(ageTextField.text)
		local dayoweek= dayweekTextField.text
	
	if (dayoweek=="Sat" or dayoweek=="Sun") and (numberage <18 and numberage >18) then
	    print( "relax, it's the weekend!" )
	    local weekend =  display.newText( "relax, it's the weekend!", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    weekend: setFillColor  (1,0,0)
	elseif (dayoweek ~="Sat" or dayoweek ~="Sun") and numberage <18 then
		print("Time for school!" .. tostring(numberage) )
		local school = display.newText( "Time For School!!", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    school: setFillColor (1,0,0)
	elseif (dayoweek ~="Sat" or dayoweek ~="Sun") and numberage >18 then 
	    print("Time for work!" .. tostring(numberage) )
		local work = display.newText( "Time For work!!", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    work: setFillColor (1,0,0)  

	end
	print("come again another time!")
end

print( "Program done." )

calculatebutton:addEventListener( 'touch', ratedTouch)