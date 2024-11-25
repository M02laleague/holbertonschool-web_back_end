export default function createInt8TypedArray(length, position, value) {
	// Crée un ArrayBuffer avec la taille spécifiée
	const buffer = new ArrayBuffer(length);
  
	// Crée un DataView pour manipuler l'ArrayBuffer
	const view = new DataView(buffer);
  
	// Vérifie si la position est valide
	if (position < 0 || position >= length) {
	  throw new Error('Position outside range');
	}
  
	// Écrit la valeur à la position spécifiée
	view.setInt8(position, value);
  
	// Retourne le DataView
	return view;
  }