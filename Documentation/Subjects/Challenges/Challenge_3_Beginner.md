---
title:      Simulation d'Entraînement en Usine
subtitle:   Corrigez et améliorez une scène VR existante
author:     Alexandre De Freitas Martins (@AlexandreDFM | alexandre.defreitas@epitech.eu)
version:    1.0
---

Dans ce défi, vous devez finaliser une simulation industrielle. L'éclairage est mauvais, l'interface est boguée et la logique de progression est incomplète.

Pour chaque étape, utilisez le document "L'interface de Unity" pour localiser les fenêtres (Lettres A à H) et le document "Rig Simulator" pour tester les contrôles.

\newpage

## Partie 1 : Le "Fade" (Écran Noir)

**Le problème :** L'écran noir qui sert de transition (Fade) apparaît au milieu de l'usine, comme un mur flottant, au lieu de couvrir votre vision.

**La solution :**

- Dans la Fenêtre Hiérarchie (B), cherchez l'objet responsable du fondu (souvent appelé FadeCanvas ou BlackScreen, enfant de la Main Camera).
- Pour mieux voir, sélectionnez-le et dans la Fenêtre Inspecteur (F), réglez temporairement l'Alpha de son Canvas Group sur 1 (pour qu'il soit totalement opaque).
- Dans la Vue Scène (D), rapprochez cet objet très près de la caméra (Main Camera dans la Fenêtre Hiérarchie (B), elle est positionné dans XR Rig -> Camera Offset -> MainCamera) pour qu'il coupe la vision du joueur, ou ajustez sa propriété Plane Distance dans le composant Canvas.

::: tip
**Comment tester ?**

- Lancez le jeu (Play).
- Bougez la tête (Simulateur : Maintenez Clic-droit et bougez la souris) pour voir si le carré noir reste bien collé à votre vision.
:::

\newpage

## Partie 2 : Le bouton de la Console

**Le problème :** Le bouton "Console Labels" fait disparaître toute la machine au lieu de cacher seulement les étiquettes textuelles.

**La solution :**

- Trouvez le bouton (Toggle) dans la Hiérarchie (B) (probablement dans un Canvas posé sur la table).
Correctif : Toggle n'est pas sur l'objet Console entier. Elle est en l'air.
Tips : Utilisez la barre de recherche en haut de la Hiérarchie (B) et tapez "Toggle" pour le localiser rapidement.
- Regardez son composant Toggle dans l'Inspecteur (F).
- Repérez la section On Value Changed. Vous verrez qu'il cible l'objet Console entier.
- Remplacez cet objet par l'objet enfant qui ne contient que les textes (souvent appelé Labels ou TextOverlay). Glissez cet objet depuis la Hiérarchie vers la case de l'événement.

\newpage

## Partie 3 : L'éclairage du Sol (Qualité)

**Le problème :** Le sol semble flou et pixelisé par rapport aux autres objets. La résolution de sa "lumière cuite" (Baked Lightmap) est trop basse.

**La solution :**

- En haut de la Vue Scène (D), changez le mode d'affichage de Shaded à Baked Lightmap pour voir la résolution (les damiers). (Si vous voyez pas de damiers, c'est que le mode d'affichage est déjà sur Baked Lightmap, il se trouve dans une tirette avec un petit insecte.)
- Sélectionnez l'objet du sol (Floor).
- Dans l'Inspecteur (F), trouvez le composant Mesh Renderer.
- Cherchez la propriété Scale in Lightmap et augmentez ce chiffre (essayez de doubler ou tripler la valeur) (10 la valeur si PC le tolère) pour avoir des ombres plus nettes.

\newpage

## Partie 4 : Ombres manquantes sur les cartons

**Le problème :** La pile de cartons au fond à gauche n'a pas d'ombres réalistes contrairement aux autres piles.

**La solution :**

- Sélectionnez la pile de cartons problématique dans la Hiérarchie (B) ou alors via la vue Scène (D). (Elle est invisible en mode Baked Lightmap, revenez en mode Shaded si besoin.)
- Regardez tout en haut à droite de l'Inspecteur (F).
- Cochez la petite case Static. Cela indique à Unity de calculer les ombres et la lumière pour cet objet immobile.
(Potentiellement, vous pourriez avoir une fenêtre pop-up vous demandant de confirmer que vous voulez rendre l'objet statique. Acceptez.)

<br />

![Screenshot montrant la case "Static" dans l'Inspecteur](./img/static_checkbox_challenge3.png)

\newpage

## Partie 5 : La Console Sombre (Light Probes)

**Le problème :** La console est un objet dynamique (non statique), donc elle ne reçoit pas la lumière "cuite" du plafond. Elle paraît noire.

**La solution :**

- Les objets dynamiques ont besoin de sondes (Probes) pour capter la lumière.
- Dans la Hiérarchie (B), faites Clic-droit > Light > Light Probe Group.
- Dans la Vue Scène (D), cliquez sur Edit Light Probes dans l'Inspecteur.
- Déplacez les boules jaunes (les sondes) pour qu'elles entourent la console. La console va alors "absorber" la lumière captée par ces sondes.

\newpage

## Partie 6 : Indicateur visuel de l'Aimant

**Le problème :** On ne sait pas quand l'aimant est actif. Il devrait changer de couleur.

**La solution :**

- Trouvez le script qui gère l'aimant (sur l'objet Magnet ou le levier).
- Repérez la fonction qui s'active quand l'aimant est allumé (souvent liée à un événement Activate).
- Ajoutez une logique pour changer la couleur du matériau (Material.color). Inspirez-vous du code utilisé pour la lumière de la télécommande (Remote) si disponible dans le projet.

\newpage

## Partie 7 : Bloquer le joueur pendant le Tuto

**Le problème :** Le joueur peut jouer avec la console pendant les explications, et ses rayons laser restent actifs après, ce qui gâche l'immersion.

**La solution :**

- Sélectionnez l'objet qui affiche le texte de bienvenue (Welcome Text).
- Dans l'Inspecteur (F), trouvez le script de gestion du texte (ex: ShowMessageFromList).
- Cherchez l'événement On Complete () (qui se déclenche à la fin du texte).
- Ajoutez deux actions (+) :
    - Faites glisser les contrôleurs de rayons (Right/Left Hand Ray Interactor) et décochez la case pour les désactiver (SetActive false).
    - Faites glisser le script ou l'objet parent de la Console et cochez la case pour l'activer seulement maintenant.

::: tip
**Comment tester ?**

- En mode Play, utilisez la Barre Espace (Main Droite ) pour cliquer sur "Next" dans les dialogues. Vérifiez que vos rayons disparaissent à la fin.
:::

\newpage

## Partie 8 & 9 : Défis Experts (Vitesse et Score)

Ces tâches nécessitent de la programmation ou de l'ajout d'UI.

**Vitesse de l'aimant :**
- Ajoutez un Slider (UI) sur la console.
- Liez la valeur du Slider (OnValueChanged) à la variable de vitesse dans le script de l'aimant.

**Score et Temps :**
- Créez deux textes UI (Legacy ou TextMeshPro) : "Boîtes: 0" et "Temps: 00:00".
- Dans le script qui détecte quand une boîte est posée (Zone de succès), incrémentez le compteur.
- Utilisez Time.time ou Time.deltaTime pour afficher le temps écoulé depuis le début de l'exercice.

Bon courage pour l'optimisation de votre usine !

Si jamais vous vouliez voir la solution en vidéo, elle est disponible ici :

::: center
[Challenge 3](https://www.youtube.com/watch?v=nN8cF5nJTRg)
:::
