#!/usr/local/bin/python3

# Before you use this script, please refer to the attached
# Reference: https://automatetheboringstuff.com/chapter18/

# Note: you will need to first determine where the click (X,Y)
# Coordinates are for your window size

import pyautogui
import time

pyautogui.PAUSE = 2
pyautogui.FAILSAFE = True


print('Press Ctrl-C to quit.')
try:
    count = 367 # How many videos are you downloading?
    for i in range(0, count): 
        time.sleep(5)
        pyautogui.click(562, 569, button='left')  # Click to Avoid Quizzes
        pyautogui.click(1378, 829, button='left') # Click on Cogwheel
        pyautogui.click(1288, 666, button='left') # Click on Download
        pyautogui.click(1266, 825, button='left') # Click on Continue
        print("Completing loop {} of {}".format(i, count))
except KeyboardInterrupt:
    print('\nDone.')
