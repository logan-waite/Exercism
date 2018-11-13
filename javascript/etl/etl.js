export default function transform (data) {
  let transformed = {}

  for (let key in data) {
    let letters = data[key]
    for (let l in letters) {
      transformed[letters[l].toLowerCase()] = parseInt(key)
    }
  }

  return transformed
}

