//: [Previous](@previous)
//: # Exercise
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Create a program that produces the following output:
 
 ![output](output.png "Output")
 
 The algorithm (recipe) for the program is indicated by the comments.
 
 Your job is to fill in the required code.
 
 */
// Create canvas
let canvas = Canvas(width: 400, height: 100)
/*:
 ## Add your code below
 
 Fill in the blanks below the comments
 */
// Loop 4 times, counting up by 100, from 0

for i in stride (from: 0, to: 400, by: 100)
    
{
    
    let randomvalue = random(from: 1, toButNotIncluding: 3)
    
    if randomvalue == 1 {
        canvas.fillColor = Color.black
        canvas.textColor = Color.white
        canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 100, height: 100)
        canvas.drawText(message: "1", size: 24, x: i, y: 20)
        
    }
    else {
        canvas.fillColor = Color.white
        canvas.textColor = Color.black
        canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 100, height: 100)
        canvas.drawText(message: "2", size: 24, x: i, y: 20)
        
    }
    
    
    
    
    
}

// Inside the loop, generate a random number (1 or 2)

// Draw a square at the current position – black fill, white text when random number is one, otherwise, colours are inverted

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

