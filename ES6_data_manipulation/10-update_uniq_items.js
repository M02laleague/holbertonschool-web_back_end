export default function updateUniqueItems(map) {
	// Vérifie si l'argument est une Map
	if (!(map instanceof Map)) {
	  throw new Error('Cannot process');
	}
  
	// Parcourt les entrées de la Map
	map.forEach((value, key) => {
	  if (value === 1) {
		map.set(key, 100); // Met à jour la quantité à 100
	  }
	});
  
	// La Map est modifiée directement
  }