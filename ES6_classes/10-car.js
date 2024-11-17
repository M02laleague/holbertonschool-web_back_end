// Symbol pour la méthode privée clone
const cloneSymbol = Symbol('clone');

class Car {
  constructor(brand, motor, color) {
    this._brand = brand;
    this._motor = motor;
    this._color = color;
  }

  // Méthode cloneCar pour cloner l'objet
  [cloneSymbol]() {
    return new (Object.getPrototypeOf(this).constructor)(this._brand, this._motor, this._color);
  }

  // Rendre cloneCar accessible publiquement via une méthode
  cloneCar() {
    return this[cloneSymbol]();
  }
}

export default Car;