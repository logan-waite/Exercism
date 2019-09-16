class Transcriptor {
    toRna(rna: string) {
        return rna.split('')
            .map(this.convertNucleotide)
            .join('')
    }



    private convertNucleotide(nucleotide: string): string {
        const conversions: any = {
            A: 'U',
            C: 'G',
            G: 'C',
            T: 'A'
        }

        if (conversions[nucleotide] !== undefined) {
            return conversions[nucleotide]
        } else {
            throw new Error('Invalid input DNA.')
        }
    }
}

export default Transcriptor
