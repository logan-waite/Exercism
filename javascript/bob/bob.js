
export function hey (message) {
  const fMessage = message.trim()
  if (nothingSaid(fMessage)) {
    return "Fine. Be that way!"
  } else if (isQuestion(fMessage) && isYelling(fMessage)) {
    return "Calm down, I know what I'm doing!"
  } else if (isQuestion(fMessage)) {
    return "Sure."
  } else if (isYelling(fMessage)) {
    return "Whoa, chill out!"
  } else {
    return "Whatever."
  }

}

function isQuestion (message) {
  return message.endsWith('?')
}

function isYelling (message) {
  const strippedMessage = message.replace(/([^A-Za-z]+)/g, '')
  return !nothingSaid(strippedMessage) && strippedMessage === strippedMessage.toUpperCase()
}

function nothingSaid (message) {
  return message.length === 0
}
