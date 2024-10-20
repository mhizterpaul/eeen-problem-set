'''Make a choice of colors via mouse clicks in Rectangles --
Demonstrate loops using lists of tuples of data.'''

from graphics import *

def isBetween(x, end1, end2):
    '''Return True if x is between the ends or equal to either.
    The ends do not need to be in increasing order.'''
    return end1 <= x <= end2 or end2 <= x <= end1

def isInside(point, rect):
    '''Return True if the point is inside the Rectangle rect.'''
    pt1 = rect.getP1()
    pt2 = rect.getP2()
    return isBetween(point.getX(), pt1.getX(), pt2.getX()) and \
    isBetween(point.getY(), pt1.getY(), pt2.getY())

def makeColoredRect(corner, width, height, color, win):
    ''' Return a Rectangle drawn in win with the upper left corner
    and color specified.'''
    corner2 = corner.clone()
    corner2.move(width, -height)
    rect = Rectangle(corner, corner2)
    rect.setFill(color)
    rect.draw(win)
    return rect

def getChoice(choicePairs, default, win): #NEW, discussed above
    '''Given a list of tuples (rectangle, choice), return the choice
    that goes with the rectangle in win where the mouse gets clicked,
    or return default if the click is in none of the rectangles.'''
    point = win.getMouse()
    for (rectangle, choice) in choicePairs:
        if isInside(point, rectangle):
            return choice
    return default

def main():
    winWidth = 400
    winHeight = 400
    win = GraphWin('Pick Colors', winWidth, winHeight)
    win.setCoords(0, 0, winWidth, winHeight)
    #NEW, shown in the discussion above
    choicePairs = list() # elements (button rectangle, color)
    buttonSetup = [(310, 350, 'red'), (310, 310, 'yellow'), (310, 270, 'blue'), (310, 230, 'green')]

    for (x, y, color) in buttonSetup:
        button = makeColoredRect(Point(x, y), 80, 30, color, win)
        choicePairs.append((button, color))
            
    house = makeColoredRect(Point(60, 200), 180, 150, 'gray', win)
    door = makeColoredRect(Point(90, 150), 40, 100, 'white', win)
    roof = Polygon(Point(50, 200), Point(250, 200), Point(150, 300))
    roof.setFill('black')
    roof.draw(win)
    #NEW started in the discussion above.
    shapePairs = [(house, 'house'), (door, 'door'), (roof, 'roof')]
    msg = Text(Point(winWidth/2, 375),'')
    msg.draw(win)
    for (shape, description) in shapePairs:
        prompt = 'Click to choose a ' + description + ' color.'
        msg.setText(prompt)
        color = getChoice(choicePairs, 'white', win)
        shape.setFill(color)
        msg.setText('Click anywhere to quit.')
        win.getMouse()
        win.close()

main()