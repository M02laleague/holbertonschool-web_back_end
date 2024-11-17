// Importer la classe Building depuis 5-building.js
import Building from './5-building.js';

class SkyHighBuilding extends Building {
  constructor(sqft, floors) {
    if (typeof floors !== 'number') {
      throw new TypeError('floors must be a number');
    }
    // Appeler le constructeur parent pour définir sqft
    super(sqft);
    // Initialiser l’attribut _floors
    this._floors = floors;
  }

  // Getter pour floors
  get floors() {
    return this._floors;
  }

  // Redéfinir la méthode evacuationWarningMessage
  evacuationWarningMessage() {
    return `Evacuate slowly the ${this._floors} floors`;
  }
}

export default SkyHighBuilding;