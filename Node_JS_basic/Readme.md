# NodeJS Basics 🚀

Bienvenue dans le projet **NodeJS Basics** ! Ce projet est une introduction pratique à Node.js, où tu vas explorer les bases de l'exécution de JavaScript côté serveur, la manipulation de fichiers, et la création de serveurs HTTP simples. Prépare-toi à plonger dans l'univers de Node.js avec un peu de fun et beaucoup d'apprentissage !

## Objectifs d'apprentissage 🎯

À la fin de ce projet, tu seras capable de :

- Exécuter du JavaScript avec Node.js 🖥️
- Utiliser des modules Node.js 📦
- Lire des fichiers de manière synchrone et asynchrone 📄
- Créer des serveurs HTTP simples avec Node.js et Express 🌐
- Utiliser des outils comme Nodemon pour accélérer le développement ⚡

## Requirements 📋

- **Éditeurs autorisés** : vi, vim, emacs, Visual Studio Code
- **Node.js version** : 20.x.x (sur Ubuntu 20.04 LTS)
- **Tests** : Utilisation de Jest et ESLint pour vérifier le code
- **Format des fichiers** : Tous les fichiers doivent se terminer par une nouvelle ligne
- **README.md** : Obligatoire à la racine du projet

## Installation 🛠️

1. Clone le dépôt :

   ```bash
   git clone https://github.com/zykeladebrouille/holbertonschool-web_back_end.git
   ```

2. Installe les dépendances :

   ```bash
   npm install
   ```

## Structure du projet 📂

- **0-console.js** : Affiche un message dans la console.
- **1-stdin.js** : Interagit avec l'utilisateur via l'entrée standard.
- **2-read_file.js** : Lit un fichier CSV de manière synchrone.
- **3-read_file_async.js** : Lit un fichier CSV de manière asynchrone.
- **4-http.js** : Crée un serveur HTTP simple avec le module `http`.
- **5-http.js** : Crée un serveur HTTP plus complexe avec le module `http`.
- **6-http_express.js** : Crée un serveur HTTP simple avec Express.
- **7-http_express.js** : Crée un serveur HTTP plus complexe avec Express.
- **full_server/** : Un serveur HTTP complet organisé avec Express, des contrôleurs, des routes et des utilitaires.
  - **controllers/** : Contient les contrôleurs pour gérer les requêtes HTTP.
    - **AppController.js** : Gère la route `/`.
    - **StudentsController.js** : Gère les routes `/students` et `/students/:major`.
  - **routes/** : Contient les routes de l'application.
    - **index.js** : Configure les routes pour l'application.
  - **utils.js** : Contient la fonction `readDatabase` pour lire le fichier CSV de manière asynchrone.
  - **server.js** : Le point d'entrée du serveur Express.
  - **database.csv** : Le fichier CSV contenant les données des étudiants.

## Comment exécuter les scripts 🏃‍♂️

- Pour exécuter un script :

  ```bash
  node <nom_du_fichier>.js
  ```

- Pour lancer le serveur complet (tâche 8) :

  ```bash
  npm run dev
  ```

- Pour lancer les tests :

  ```bash
  npm run test
  ```

- Pour vérifier le linting :

  ```bash
  npm run full-test
  ```

## Exemples de sortie 🖨️

### 2-read_file.js

```bash
Number of students: 10
Number of students in CS: 6. List: Johann, Arielle, Jonathan, Emmanuel, Guillaume, Katie
Number of students in SWE: 4. List: Guillaume, Joseph, Paul, Tommy
```

### 4-http.js

```bash
$ curl localhost:1245
Hello Holberton School!
```

### Tâche 8 : Serveur complet avec Express

1. **Route `/`** :

   ```bash
   $ curl localhost:1245
   Hello Holberton School!
   ```

2. **Route `/students`** :

   ```bash
   $ curl localhost:1245/students
   This is the list of our students
   Number of students in CS: 6. List: Johann, Arielle, Jonathan, Emmanuel, Guillaume, Katie
   Number of students in SWE: 4. List: Guillaume, Joseph, Paul, Tommy
   ```

3. **Route `/students/:major`** :

   ```bash
   $ curl localhost:1245/students/CS
   List: Johann, Arielle, Jonathan, Emmanuel, Guillaume, Katie
   ```

   ```bash
   $ curl localhost:1245/students/SWE
   List: Guillaume, Joseph, Paul, Tommy
   ```

## Ressources 📚

- [Node.js Documentation](https://nodejs.org/en/docs/)
- [Express Documentation](https://expressjs.com/)
- [Mocha Documentation](https://mochajs.org/)
- [Nodemon Documentation](https://nodemon.io/)

## Auteur ✍️

Ce projet a été réalisé avec ❤️ par [Zyke](https://github.com/Zykeladebrouille). N'hésite pas à contribuer ou à poser des questions !

---

**Bon courage et amuse-toi bien en explorant Node.js !** 🎉

---

### **Tâche 8 : Organiser un serveur HTTP complexe avec Express**

Dans cette tâche, tu as organisé un serveur HTTP complet en utilisant Express. Voici les étapes clés que tu as accomplies :

1. **Structure du projet** :
   - Création d'un dossier `full_server` pour organiser le code.
   - Séparation des contrôleurs (`controllers/`), des routes (`routes/`), et des utilitaires (`utils.js`).

2. **Fonction `readDatabase`** :
   - Une fonction asynchrone pour lire le fichier CSV et retourner les étudiants regroupés par domaine.

3. **Contrôleurs** :
   - `AppController` : Gère la route `/` et retourne `Hello Holberton School!`.
   - `StudentsController` : Gère les routes `/students` et `/students/:major` pour afficher les étudiants.

4. **Routes** :
   - Configuration des routes dans `routes/index.js` pour lier les contrôleurs aux endpoints.

5. **Serveur Express** :
   - Création d'un serveur Express dans `server.js` qui écoute sur le port 1245.

6. **Exécution avec `babel-node`** :
   - Configuration de `package.json` pour exécuter le serveur avec `babel-node` et `nodemon`.

---

### **Prochaines étapes (optionnelles)**

Si tu veux aller plus loin, voici quelques idées :

1. **Ajouter des tests** :
   - Utilise `mocha`, `chai`, et `chai-http` pour écrire des tests d'intégration qui vérifient que les routes fonctionnent correctement.

2. **Améliorer l'interface utilisateur** :
   - Ajoute du CSS pour styliser la réponse HTML dans le navigateur.
   - Utilise un template engine comme `EJS` ou `Pug` pour générer des pages HTML dynamiques.

3. **Gérer les erreurs de manière plus élégante** :
   - Crée une page d'erreur HTML personnalisée pour les erreurs 404 (page non trouvée) et 500 (erreur interne du serveur).

4. **Déployer le serveur** :
   - Déploie ton application sur une plateforme comme Heroku, Vercel, ou Render pour la rendre accessible en ligne.