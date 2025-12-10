---
title:      Chamboule-Tout VR !
subtitle:   Votre première création en réalité virtuelle
author:     Alexandre De Freitas Martins (@AlexandreDFM | alexandre.defreitas@epitech.eu)
version:    1.0
---

Bienvenue dans votre premier atelier créatif ! Aujourd'hui, nous n'allons pas réparer une scène, nous allons la créer. Votre but : Construire une petite aire de jeu où vous pouvez vous déplacer, attraper un cube "balle" et le lancer sur une pyramide de cylindres.

Utilisez L'interface de Unity (**Unity_Manual_Unity's_interface_FR.pdf**) pour vous repérer et Rig Simulator (**Rig_Simulator_Keyboard_Shortcuts.pdf** & **Setup.pdf**) pour tester.

## Étape 1 : Préparer le Joueur (Setup & Locomotion)

Pour commencer, il nous faut un sol et un joueur capable de se téléporter.

- **Le Sol :**
  - Dans la Fenêtre Hiérarchie (B), faites Clic-droit > 3D Object > Plane. Ce sera votre sol.

- **Le Joueur VR :**
  - Supprimez la "Main Camera" par défaut.
  - Dans la Fenêtre Inspecteur (F), cherchez la prefab XR Origin Hands (XR Rig) via la barre de recherche en haut.
  - Glissez-déposez cette prefab dans la Hiérarchie (B).

- **La Téléportation :**
  - Sélectionnez votre objet Plane (le sol).
  - Dans la Fenêtre Inspecteur (F), cliquez sur Add Component.
  - Cherchez et ajoutez Teleportation Area. Cela rend le sol "cliquable" pour se déplacer.

::: tip
**Testons tout de suite !**

- Lancez le jeu (Play).
- Pour bouger la tête : Maintenez le Clic-droit de la souris et bougez-la.
- **Pour se déplacer (Téléportation) :**
- Activez la main droite en maintenant la Barre Espace.
- Pointez le sol avec la souris. La ligne doit devenir blanche ou verte.
- Appuyez sur G (ou clic-gauche selon votre configuration) pour valider la téléportation. Si vous changez de place, c'est gagné !
:::

## Étape 2 : Créer la "Balle" (Grabbable)

**Basé sur le tutoriel 1.3**

Maintenant, créons un objet que l'on peut ramasser et jeter.

- **L'objet :**
  - Dans la Hiérarchie (B), Clic-droit > 3D Object > Cube.
  - Changez son Scale (Échelle) à (0.2, 0.2, 0.2) pour qu'il soit petit comme une brique.

- **La Physique :**
  - Dans l'Inspecteur (F), ajoutez un composant Rigidbody. C'est ce qui lui donne de la gravité (pour qu'il tombe quand on le lâche).

- **L'Interaction :**
  - Ajoutez un composant XR Grab Interactable. C'est le composant magique qui permet à vos mains VR d'attraper l'objet.

::: tip
**Testons la physique !**

- En mode Play, approchez-vous du cube (avec Z/Q/S/D et la souris).
- Activez une main (ex: Maj Gauche pour la main gauche).
- Pointez le cube. Quand le rayon devient blanc, appuyez sur G (Grip) pour l'attraper.
- Bougez la souris pour lever le cube, et relâchez G en bougeant brusquement la souris pour le lancer !
:::

## Étape 3 : Le Socle de Rangement (Sockets)

**Basé sur le tutoriel 1.4**

Créons un endroit spécifique où le cube doit être rangé. S'il est proche, il sera "aspiré" à sa place (le Snap).

- **Le Socle :**
  - Créez un nouveau Cube ou Cylindre pour servir de table.

- **Le Point d'ancrage :**
  - Créez un objet vide (Create Empty) et placez-le juste au-dessus de votre table. Appelez-le "Socket".
  - Ajoutez-lui le composant Socket Interactor.
  - Il lui faut une zone de détection : Ajoutez un composant Sphere Collider et cochez la case Is Trigger. Réglez le rayon (Radius) à 0.2.

- **Le Guide Visuel :**
  - Pour voir où poser l'objet, le Socket Interactor a besoin d'un "Mesh".
  - Dans l'Inspecteur (F) du Socket, cherchez la ligne Show Interactable Hover Meshes et cochez-la.

::: tip
**Le Test Final :**

- Attrapez votre cube "Balle".
- Approchez-le de votre "Socket". Vous devriez voir un fantôme du cube apparaître à l'emplacement.
- Lâchez le cube (Relâchez G) : il doit se fixer parfaitement au centre du socle.
:::

## Étape 4 : Le Défi (Pour s'amuser)

Maintenant que vous avez les outils :

- Dupliquez (Ctrl+D) plusieurs petits cylindres ou cubes.
- Empilez-les pour faire une tour ou une pyramide (ajoutez-leur des Rigidbody pour qu'ils tombent !).
- Utilisez votre Cube "Balle" pour jouer au chamboule-tout.
- Une fois fini, essayez de ranger la balle proprement dans son Socket.

Amusez-vous bien à découvrir la physique de Unity !
