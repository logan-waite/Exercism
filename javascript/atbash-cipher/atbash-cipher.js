let subs = { a:'z', b:'y', c:'x', d:'w', e:'v', f:'u', 
            g:'t', h:'s', i:'r', j:'q', k:'p', l:'o', 
            m:'n', n:'m', o:'l', p:'k', q:'j', r:'i', 
            s:'h', t:'g', u:'f', v:'e', w:'d', x:'c', 
            y:'b', z:'a', '1': 1, '2': 2, '3': 3, '4': 4, 
            '5': 5, '6': 6, '7': 7, '8': 8, '9': 9, '0': 0 }

function isAlphaNumeric(l) {
  let code = l.charCodeAt(0);
  if (!(code > 47 && code < 58) && // numeric (0-9)
      !(code > 96 && code < 123)) { // lower alpha (a-z)
    return false;
  }
  return true;
}

function joinWithSpaces(stringArray) {
  let returnString = ''
  for (let i = 0; i < stringArray.length; i++) {
    if (i !== 0 && i % 5 === 0) {
      returnString += ' '
    }
    returnString += stringArray[i]
  }
  return returnString
}

export function encode(string) {
  let convertedArray = string.toLowerCase()
    .split('')
    .filter(l => isAlphaNumeric(l))
    .map(l => subs[l])

  return joinWithSpaces(convertedArray);
}