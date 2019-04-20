const GIGASECOND_IN_MS = Math.pow(10, 12)

export const gigasecond = dateObj =>
  new Date(dateObj.getTime() + GIGASECOND_IN_MS)
