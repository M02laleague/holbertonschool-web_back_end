class Building {
	constructor(sqft) {
	  if (typeof sqft !== 'number') {
		throw new TypeError('sqft must be a number');
	  }
	  this._sqft = sqft;
  
	  // Vérifie si la méthode `evacuationWarningMessage` est implémentée
	  if (this.evacuationWarningMessage === undefined) {
		throw new Error('Class extending Building must override evacuationWarningMessage');
	  }
	}
  
	// Getter pour `sqft`
	get sqft() {
	  return this._sqft;
	}
  }
  
  export default Building;