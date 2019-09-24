export default class SpaceAge {
  public seconds: number

  private earthYearInSeconds: number = 31557600
  private earthAge: number;

  constructor(seconds: number) {
    this.seconds = seconds
    this.earthAge = seconds / this.earthYearInSeconds
  }

  private calculateAge(planetOrbit: number) {
    return +((this.earthAge / planetOrbit).toFixed(2))
  }

  public onMercury() {
    return this.calculateAge(0.2408467)
  }
  public onVenus() {
    return this.calculateAge(0.61519726)
  }
  public onEarth() {
    return this.calculateAge(1)
  }
  public onMars() {
    return this.calculateAge(1.8808158)
  }
  public onJupiter() {
    return this.calculateAge(11.862615)
  }
  public onSaturn() {
    return this.calculateAge(29.447498)
  }
  public onUranus() {
    return this.calculateAge(84.016846)
  }
  public onNeptune() {
    return this.calculateAge(164.79132)
  }

}