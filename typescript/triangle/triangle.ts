const assert = (condition: boolean, errMsg: string) => {
    if (!condition) {
        throw new Error(errMsg);
    }
}

export default class Triangle {
    private sides: number[]

    constructor(...sides: number[]) {
        this.sides = sides.sort((a, b) => a - b)
    }

    private isValidTriangle (): boolean {
        return this.sides.length === 3 && this.satisfiesTriangleEquality()
    }

    private satisfiesTriangleEquality (): boolean {
        return this.sides[2] < this.sides[0] + this.sides[1]
    }

    kind () {
        assert(this.isValidTriangle(), "Not a valid Triangle");
        const matchingSides = this.sides.reduce<number[]>((acc, side) => acc.includes(side) ? [...acc, side] : [side], []);
        switch (matchingSides.length) {
            case 3:
                return 'equilateral'
            case 2:
                return 'isosceles'
            default:
                return 'scalene'
        }
    }
}
