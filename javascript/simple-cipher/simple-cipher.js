const letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

const encodeFinal = (start, shift) => {
  let newIndex = start + shift;
  if (newIndex > 25) {
    newIndex = newIndex - 26
  }
  return newIndex
}

const decodeFinal = (start, shift) => {
  let newIndex = start - shift;
  if (newIndex < 0) {
    newIndex = newIndex + 26
  }
  return newIndex
}

const shiftResult = (letter, shift, decode) => {
  let start = letters.indexOf(letter)
  let final = 0
  for (let i = 0; i < shift; i++) {
    final += 1
    if (final > letters.length) {
      final = 0
    }
  }
  if (decode) {
    return letters[decodeFinal(start, final)]
  } else {
    return letters[encodeFinal(start, final)]
  }
}

const generateRandomString = () => {
  let string = ''
  for (let i = 0; i < 100; i++) {
    string += letters[Math.floor(Math.random() * 26)]
  }
  return string
}


export class Cipher {
  constructor(key) {

    if (!key && key !== '') {
      this.key = generateRandomString()
    } else {
      if (/^[a-z]+$/.test(key)) {
        this.key = key
      } else {
        throw new Error("Bad key")
      }
    }
  }

  encode (string) {
    return this.runCipher(string)
  }

  decode (string) {
    return this.runCipher(string, true)
  }

  runCipher (string, decode = false) {
    let finished = ''
    let j = 0
    for (let i = 0; i < string.length; i++) {
      if (j >= this.key.length) { j = 0 }
      finished += shiftResult(string[i], this.shiftKey(j), decode)
      j++
    }
    return finished
  }

  shiftKey (position) {
    return letters.indexOf(this.key[position])
  }
}