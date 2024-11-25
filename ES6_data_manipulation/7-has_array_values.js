export default function hasValuesFromArray(set, array) {
	// Vérifie si tous les éléments du tableau sont dans le Set
	return array.every((value) => set.has(value));
  }