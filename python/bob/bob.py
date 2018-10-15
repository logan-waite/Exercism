def hey(phrase):
    new_phrase = phrase.strip()
    is_silent = new_phrase == ""
    is_question = True if new_phrase.endswith('?') else False
    is_yelled = new_phrase.isupper() 

    if not is_silent:
        return "Fine. Be that way!"
    elif is_question and not is_yelled:
        return "Sure."
    elif is_question and is_yelled:
        return "Calm down, I know what I'm doing!"
    elif not is_question and is_yelled:
        return "Whoa, chill out!"
    else:
        return "Whatever."
