def on_square(integer_number):
    print(integer_number)
    if integer_number < 1 or integer_number > 64:
        raise ValueError("Number must be between 1 and 64")
    return 2 ** (integer_number - 1)


def total_after(integer_number):
    if integer_number < 1 or integer_number > 64:
        raise ValueError("Number must be between 1 and 64")
    # print(integer_number)
    return sum([on_square(x) for x in range(1, integer_number + 1)])
