class Gigasecond {
  currentDate: Date
  private gigasecond: number = 10 ** 12 // Gigasecond in milliseconds

  constructor(date: Date) {
    this.currentDate = date
  }

  date(): Date {
    return new Date(this.currentDate.getTime() + this.gigasecond)
  }
}

export default Gigasecond
