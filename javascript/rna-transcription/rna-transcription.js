export const toRna = function (dna) {
    return dna.split('')
    .map(d => convert(d))
    .join('')
}

function convert (dna) {
  switch (dna) {
    case '':
      return '';
    case 'A':
      return 'U';
    case 'C':
      return 'G';
    case 'G':
      return 'C';
    case 'T':
      return 'A';
    default:
      throw new Error("Invalid input DNA.")
  }
}