export function hey (inMessage) {
  const message = inMessage.trim()
  if (nothingSaid(message)) {
    return "Fine. Be that way!"
  } else if (isQuestion(message) && isYelling(message)) {
    return "Calm down, I know what I'm doing!"
  } else if (isQuestion(message)) {
    return "Sure."
  } else if (isYelling(message)) {
    return "Whoa, chill out!"
  } else {
    return "Whatever."
  }

}

function isQuestion (message) {
  return message.endsWith('?')
}

function isYelling (message) {
  return message.match(/[A-Za-z]/) && message === message.toUpperCase()
}

function nothingSaid (message) {
  return message.length === 0
}
