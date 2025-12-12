---
title:      Architecture et Interactions VR
subtitle:   Corrigez et améliorez une scène VR existante
author:     Alexandre De Freitas Martins (@AlexandreDFM | alexandre.defreitas@epitech.eu)
version:    1.0
---

Bienvenue dans ce défi ! Vous allez corriger et améliorer une scène de réalité virtuelle. Ne vous inquiétez pas si vous n'avez pas de casque, nous allons utiliser le Simulateur XR intégré.

Pour chaque étape, suivez le guide ci-dessous. Pour savoir où regarder sur votre écran, selon le document "L'interface de Unity" (**Unity_Manual_Unity's_interface_FR.pdf**), cherchez les lettres (A à H).
Utilisez le document "Rig Simulator" (**Rig_Simulator_Keyboard_Shortcuts.pdf** & **Setup.pdf**) pour tester sans casque VR ou avec.

## Partie 1 : Corriger les accessoires du poignet (Main Gauche)

**Le problème :** Sur votre poignet gauche virtuel, il y a un presse-papier (clipboard) et un mètre (measuring stick). Ils sont mal attachés : le presse-papier est à l'envers et le mètre ne se "colle" pas au bon endroit.

**La solution :**

- Dans la Fenêtre Hiérarchie (B), développez la structure suivante (cliquez sur les petites flèches) : XR Rig > Camera Offset > Left Hand Controller.
- Vous y trouverez des objets enfants qui servent de points d'attache (souvent appelés Sockets). Sélectionnez l'objet correspondant au point d'attache du presse-papier.
- Regardez la Vue Scène (D). Utilisez les outils de rotation (en haut à gauche de la fenêtre) pour tourner le point d'attache jusqu'à ce qu'il soit dans le bon sens.
- Répétez l'opération pour le point d'attache du mètre (measuring stick) pour le déplacer légèrement à gauche du presse-papier.

::: tip
**Comment tester sans casque ?**

- Lancez le mode Jeu avec le bouton Play en haut.
- Activez votre contrôleur gauche en maintenant Maj Gauche (Left Shift) ou en appuyant sur T.
- Regardez votre poignet virtuel dans la Vue Jeu (C).

:::

![Screenshot montrant la hiérarchie développée du "Left Hand Controller" pour identifier les Sockets](./img/left_hand_controller_hierarchy_challenge1.png)

## Partie 2 : Le socle magnétique (Le "Pedestal")

**Le problème :** La maison miniature se "colle" (snap) au socle alors que vous êtes encore très loin de lui. C'est irréaliste.

**La solution :**

- Dans la Fenêtre Hiérarchie (B), trouvez et sélectionnez l'objet Pedestal (le socle). Cherchez son point d'attache (Socket).
- Regardez dans la Fenêtre Inspecteur (F).
- Cherchez le composant Sphere Collider. Vous verrez une propriété appelée Radius (Rayon).
- Réduisez considérablement ce chiffre. Cela réduira la zone verte visible dans la Vue Scène (D), qui représente la zone de détection.

## Partie 3 : Trier les objets (Layers)

**Le problème :** C'est le chaos ! Vous pouvez ranger le mètre sur le socle de la maison, et mettre la maison sur votre poignet. Chaque objet doit aller à sa place unique.

**La solution :**

- Sélectionnez le Presse-papier dans la Hiérarchie (B).
- Dans l'Inspecteur (F), trouvez le composant XR Grab Interactable. Cherchez la ligne Interaction Layer Mask.
- Cliquez sur le menu déroulant et décochez tout sauf la couche (Layer) qui correspond à son emplacement (ex: "Wrist Socket" ou similaire).
- Faites l'inverse pour les Sockets (les points d'attache sur le poignet et le socle) : assurez-vous que le Socket du poignet n'accepte que les outils, et que le Socket du socle n'accepte que la maison.

![Screenshot montrant le menu déroulant "Interaction Layer Mask"](./img/interaction_layer_mask_challenge1.png)

## Partie 4 : La hauteur de la table

**Le problème :** La table à manger est trop haute. Elle doit faire exactement 0.74 mètres (29 pouces).

**La solution :**

- **Astuce de pro :** Créez un outil de mesure temporaire. Dans la Hiérarchie (B), faites Clic-droit > 3D Object > Cube.
- Avec le Cube sélectionné, allez dans l'Inspecteur (F) et réglez son Scale Y (Échelle Y) à 0.74.
- Posez ce cube au sol à côté de la table dans la Vue Scène (D).
- Sélectionnez la table (l'objet parent) et baissez-la jusqu'à ce que son plateau soit au niveau du haut de votre cube.
- Supprimez le cube une fois terminé.

## Partie 5 : L'arrivée de la téléportation

**Le problème :** Quand vous vous téléportez sur le point près du socle, vous arrivez à l'envers ou dos au socle.

**La solution :**

- Sélectionnez l'objet Teleportation Anchor (l'ancre au sol) dans la Hiérarchie (B).
- Dans la Vue Scène (D), assurez-vous que la flèche bleue de l'objet pointe vers le socle et la flèche verte vers le haut (ciel). Modifiez la Rotation dans l'Inspecteur (F) si besoin.
- Toujours dans l'Inspecteur, dans le composant Teleportation Anchor, vérifiez l'option Match Orientation. Elle doit être réglée sur une option comme "Target Up And Forward" pour forcer le joueur à regarder dans la bonne direction.

::: tip
**Comment tester ?**

- En mode Play, utilisez la Main Droite (Maintenez Barre Espace).
- Visez l'ancre et appuyez sur le Trigger (Clic-gauche) pour vous téléporter.
:::

## Partie 6 : Améliorer le rayon laser (Bonus)

**Le problème :** Le rayon qui sort de votre main est une ligne droite basique et blanche. On veut une courbe élégante qui change de couleur.

**La solution :**

- Sélectionnez votre Right Hand Controller dans la Hiérarchie (B).
- Dans l'Inspecteur (F), cherchez le composant XR Ray Interactor.
- Changez le Line Type de "Straight Line" à Projectile Curve ou Bezier Curve.
- Cherchez ensuite le composant XR Interactor Line Visual.
- Ouvrez le dégradé de couleur (Valid Color Gradient). Changez les couleurs pour qu'elles aillent de "Transparent" (Alpha à 0) à "Opaque" (Alpha à 255).

## Partie 7 : Ambiance sonore (Bonus)

**Le problème :** La scène est silencieuse. Il faut du vent et des oiseaux.

**La solution :**

- Créez un nouvel objet vide (Clic-droit > Create Empty) dans la Hiérarchie (B) et appelez-le "Ambiance".
- Dans l'Inspecteur (F), cliquez sur Add Component et ajoutez un Audio Source. Assignez-lui le son de vent (cherchez dans la fenêtre Projet (G)) et cochez la case Loop (boucle).
- Pour les oiseaux : Créez d'autres objets Audio Source placés autour de la maison.
- Réglez leur Spatial Blend sur 1 (3D) pour que le son vienne d'une direction précise.

C'est terminé ! N'oubliez pas de sauvegarder votre scène (File > Save ou Ctrl + S).

Si jamais vous vouliez voir la solution en vidéo, elle est disponible ici :

[Challenge 1](https://www.youtube.com/watch?v=5Q3zmaKSORw)
