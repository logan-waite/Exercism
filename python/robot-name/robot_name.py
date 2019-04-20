import random
import string

class Robot(object):
    def __init__(self):
        random.seed()
        self.reset()

    name = ''

    def reset(self):
        letters = ''
        numbers = ''
        for i in range(2):
            letters += random.choice(string.ascii_uppercase)
        for i in range(3):
            numbers += random.choice(string.digits)
        self.name = "%s%s" %(letters,numbers)
