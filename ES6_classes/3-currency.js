export default class Currency {
	constructor(code, name) {
	  this._code = code;
	  this._name = name;
	}
  
	// Getter et setter pour 'code'
	get code() {
	  return this._code;
	}
  
	set code(value) {
	  this._code = value;
	}
  
	// Getter et setter pour 'name'
	get name() {
	  return this._name;
	}
  
	set name(value) {
	  this._name = value;
	}
  
	// Méthode displayFullCurrency
	displayFullCurrency() {
	  return `${this._name} (${this._code})`;
	}
  }