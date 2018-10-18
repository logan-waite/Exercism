from enum import Enum

class Allergies(object):

    def __init__(self, score):
        pass

    def is_allergic_to(self, item):
        pass

    @property
    def lst(self):
        pass

class AllergyList(Enum):
    eggs = 1,
    peanuts = 2,
    shellfish = 4,
    strawberries = 8,
    tomatoes = 16,
    chocolate = 32,
    pollen = 64,
    cats = 128