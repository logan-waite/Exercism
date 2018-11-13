export default class NucleotideCounts {  
  static parse (nucleotideString) {
    let nucleotides = { a: 0, c: 0, g: 0, t: 0 }
    let nucleotideArray = nucleotideString.toLowerCase().split('')

    for (let i in nucleotideArray) {
      let n = nucleotideArray[i]

      if (Object.keys(nucleotides).find(a => a === n) === undefined) {
        throw new Error('Invalid nucleotide in strand')
      }

      nucleotides[n] += 1
    }

    return [nucleotides.a, nucleotides.c, nucleotides.g, nucleotides.t].join(' ')
  }
}