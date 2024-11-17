class HolbertonClass {
	constructor(size, location) {
	  this._size = size;
	  this._location = location;
	}
  
	// Redéfinir la méthode valueOf pour renvoyer la taille en tant que nombre
	valueOf() {
	  return this._size;
	}
  
	// Redéfinir la méthode toString pour renvoyer l'emplacement en tant que chaîne
	toString() {
	  return this._location;
	}
  }
  
  export default HolbertonClass;