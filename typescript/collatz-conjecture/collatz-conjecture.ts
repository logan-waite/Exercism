class CollatzConjecture {
    static steps(num: number) {
        if (num < 1) throw new RangeError("Only positive numbers are allowed")

        const doStep = (num: number, steps: number): any => {
            if (num === 1) {
                return steps
            }
            else if (num % 2 === 1) {
                return doStep((3 * num) + 1, steps + 1)
            }
            else if (num % 2 === 0) {
                return doStep(num / 2, steps + 1)
            }
        }

        return doStep(num, 0)
    }
}

export default CollatzConjecture
