def is_armstrong(number):
    number_list = [int(x) for x in str(number)]
    return sum(x**len(number_list) for x in number_list) == number
