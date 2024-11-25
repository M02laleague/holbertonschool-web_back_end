#!/bin/bash

# Créer les fichiers de test -main.js avec leurs contenus
declare -A tests=(
  ["0-main.js"]='import getResponseFromAPI from "./0-promise.js";

const response = getResponseFromAPI();
console.log(response instanceof Promise);'
  ["1-main.js"]='import getFullResponseFromAPI from "./1-promise";

console.log(getFullResponseFromAPI(true));
console.log(getFullResponseFromAPI(false));'
  ["2-main.js"]='import handleResponseFromAPI from "./2-then";

const promise = Promise.resolve();
handleResponseFromAPI(promise);'
  ["3-main.js"]='import handleProfileSignup from "./3-all";

handleProfileSignup();'
  ["4-main.js"]='import signUpUser from "./4-user-promise";

console.log(signUpUser("Bob", "Dylan"));'
  ["5-main.js"]='import uploadPhoto from "./5-photo-reject";

console.log(uploadPhoto("guillaume.jpg"));'
  ["6-main.js"]='import handleProfileSignup from "./6-final-user";

console.log(handleProfileSignup("Bob", "Dylan", "bob_dylan.jpg"));'
  ["7-main.js"]='import loadBalancer from "./7-load_balancer";

const ukSuccess = "Downloading from UK is faster";
const frSuccess = "Downloading from FR is faster";

const promiseUK = new Promise(function(resolve, reject) {
    setTimeout(resolve, 100, ukSuccess);
});

const promiseUKSlow = new Promise(function(resolve, reject) {
    setTimeout(resolve, 400, ukSuccess);
});

const promiseFR = new Promise(function(resolve, reject) {
    setTimeout(resolve, 200, frSuccess);
});

const test = async () => {
    console.log(await loadBalancer(promiseUK, promiseFR));
    console.log(await loadBalancer(promiseUKSlow, promiseFR));
}

test();'
  ["8-main.js"]='import divideFunction from "./8-try";

console.log(divideFunction(10, 2));
console.log(divideFunction(10, 0));'
  ["9-main.js"]='import guardrail from "./9-try";
import divideFunction from "./8-try";

console.log(guardrail(() => { return divideFunction(10, 2)}));
console.log(guardrail(() => { return divideFunction(10, 0)}));'
)

# Créer chaque fichier et y insérer le contenu
for file in "${!tests[@]}"; do
  echo "Creating $file ..."
  echo "${tests[$file]}" > "$file"
done

echo "Tous les fichiers -main.js ont été créés avec succès !"
