# README – Tutoriel Unity 1.1 : VR Project Setup (Unity 6.x)

Ce document explique chaque action comme si c’était la première fois que tu ouvres Unity. Tu peux ensuite ajouter des captures d’écran pour illustrer chaque étape.

***

## Pré-requis

- Un PC Windows ou Mac.
- Unity Hub installé. [2]
- Unity 6.x installé via Unity Hub (version recommandée dans le tutoriel). [1]
- Un casque VR (optionnel au début, nécessaire pour les étapes de test sur appareil). [1]

***

## Étape 1 – Créer le projet VR à partir du starter

### 1. Télécharger le projet “Create with VR starter project”

1. Ouvre ton navigateur et va sur la page du tutoriel “1.1 – VR Project Setup”. [1]
2. Clique sur le lien “Create with VR starter project” pour télécharger l’archive. [1]
3. Attends la fin du téléchargement (fichier .zip ou .unitypackage selon la version). [1]

### 2. Extraire le projet sur ton ordinateur

- Sur **Windows** :
  - Fais un clic droit sur le fichier téléchargé.
  - Choisis “Extraire tout…”, puis “Extraire”. [1]

- Sur **macOS** :
  - Double-clique sur le fichier téléchargé, un dossier sera créé automatiquement. [1]

À l’intérieur du dossier extrait, cherche un dossier nommé **“VR Room Project”**. [1]

### 3. Renommer et déplacer le dossier du projet

1. Renomme le dossier `VR Room Project` en par exemple :
   - `VR Room - [Ton Prénom]` (exemple : `VR Room - Alex`). [1]
2. Déplace ce dossier à un endroit simple à retrouver, par exemple :
   - Bureau → nouveau dossier `Create with VR` → y glisser `VR Room - [Ton Prénom]`. [1]

### 4. Ajouter le projet dans Unity Hub

1. Ouvre **Unity Hub**. [2]
2. Va dans l’onglet **Projects**.
3. Clique sur **Add** ou **Add project from disk**. [1]
4. Navigue jusqu’au dossier `VR Room - [Ton Prénom]`, sélectionne-le, puis valide. [1]
5. Le projet apparaît maintenant dans la liste des projets Unity Hub.

### 5. Ouvrir le projet avec Unity 6.x

1. Dans Unity Hub, clique sur ton projet `VR Room - [Ton Prénom]`.
2. Si Unity demande de **choisir une version**, sélectionne **Unity 6.x**. [1][2]
3. Si une fenêtre te propose de “Mettre à jour le projet vers une version plus récente de Unity 6”, clique sur **Confirm**. [1]
4. Attends l’ouverture du projet : la première fois, cela peut prendre plusieurs minutes. [1]

***

## Étape 2 – Explorer la scène de départ

### 1. Renommer et ouvrir la scène Starter

1. Dans Unity, repère la fenêtre **Project** (en bas par défaut). [2]
2. Dans **Project**, double-clique sur le dossier **Scenes** pour l’ouvrir. [1]
3. Cherche la scène appelée **Create-with-VR-Starter-Scene**. [1]
4. Clic droit dessus → **Rename** → renomme-la par exemple :
   - `[Ton_Nom] Room` (ex : `Alex Room`). [1]
5. Double-clique sur ta scène renommée pour l’ouvrir. [1]

Tu viens d’ouvrir la scène sur laquelle tu vas travailler.

### 2. Comprendre les fenêtres principales

- **Hierarchy** (gauche) : liste tous les objets de la scène (caméra, lumière, objets 3D…). [2]
- **Scene** (centre) : vue 3D où tu vois ta scène.
- **Game** (onglet à côté de Scene) : ce que le joueur voit quand le jeu tourne. [2]
- **Inspector** (droite) : montre les propriétés de l’objet sélectionné (position, composants…). [2]

### 3. Inspecter le rig VR (XR Origin)

1. Dans la fenêtre **Hierarchy**, cherche un objet nommé **XR Origin (VR)**. [1]
2. Clique dessus. Dans l’**Inspector**, tu vois un composant **XR Origin** qui gère la position du joueur en VR. [1]
3. Dans la **Hierarchy**, clique sur la petite flèche à gauche de **XR Origin (VR)** pour voir ses enfants. [1]
4. Tu devrais voir, entre autres :
   - **Camera Offset**
   - **Main Camera**
   - **LeftHand Controller**
   - **RightHand Controller** [1]

### 4. Comprendre le composant “Tracked Pose Driver”

1. Dans la **Hierarchy**, sélectionne **Camera Offset** → puis **Main Camera**. [1]
2. Dans l’**Inspector**, trouve un composant du type **Tracked Pose Driver**. [1]
3. Ce composant permet de faire suivre la position et rotation réelles de ton casque VR à la caméra dans Unity. [1]

***

## Étape 3 – Configurer le suivi des mains (Tracked Pose Driver sur les contrôleurs)

### 1. Ajouter le composant sur le contrôleur gauche

1. Dans **Hierarchy**, clique sur **LeftHand Controller**. [1]
2. Dans l’**Inspector**, en bas, clique sur **Add Component**. [2]
3. Tape “Tracked Pose Driver (Input System)” dans la barre de recherche. [1]
4. Sélectionne ce composant pour l’ajouter. [1]
5. Sur ce composant, clique sur le petit bouton **presets** (icône roue dentée ou presets). [2]
6. Choisis le preset **LeftTrackedPoseDriver**. [1]

Cela remplit automatiquement les références d’Input Action nécessaires au suivi de la main gauche.

### 2. Répéter pour le contrôleur droit

1. Sélectionne **RightHand Controller** dans la **Hierarchy**. [1]
2. Ajoute un composant **Tracked Pose Driver (Input System)** de la même manière. [1]
3. Sur ce composant, choisis le preset **RightTrackedPoseDriver**. [1]

Tes deux mains VR sont maintenant configurées pour suivre les contrôleurs du casque.

***

## Étape 4 – Comprendre les Input Actions (système d’entrées)

### 1. Trouver l’Input Action Manager

1. Dans la **Hierarchy**, cherche un objet nommé **Input Action Manager**. [1]
2. Clique dessus. Dans l’**Inspector**, tu verras le composant **Input Action Manager**. [1]

Ce composant charge un fichier d’actions qui décrit comment les mouvements/ boutons du casque sont traduits en actions dans Unity. [1][2]

### 2. Ouvrir l’asset “XRI Default Input Actions”

1. Dans l’**Inspector** de **Input Action Manager**, repère la référence à un asset nommé **XRI Default Input Actions**. [1]
2. Clique sur la petite icône ou sur le nom de l’asset pour le sélectionner dans le **Project**. [1]
3. Une fois sélectionné, double-clique sur **XRI Default Input Actions** dans la fenêtre **Project**. [1]
4. L’éditeur des Input Actions s’ouvre dans une nouvelle fenêtre.

Dans cet éditeur :
- À gauche : les **Action Maps** (groupes d’actions comme “Head”, “LeftHand”, “RightHand”…). [1]
- À droite : les **Actions** individuelles (position, rotation, bouton de saisie…). [1]

***

## Étape 5 – Ajouter une pièce (room) à la scène

### 1. Trouver les prefabs de pièce (rooms)

1. Dans la fenêtre **Project**, cherche le dossier **_Course Library**. [1]
2. Ouvre successivement :
   - `_Course Library` → `_Prefabs` → `Rooms`. [1]
3. Tu devrais voir plusieurs prefabs de pièces, par exemple :
   - **Room_Modern**
   - **Room_Rustic**
   - **Room_Traditional** [1]

Un **prefab** est un modèle prêt à l’emploi d’un objet (ou ensemble d’objets) que tu peux glisser dans la scène. [2]

### 2. Ajouter une pièce dans la scène

1. Choisis un prefab de room, par exemple **Room_Modern**. [1]
2. Clique et maintiens le clic sur **Room_Modern** dans le **Project**.
3. Glisse-le dans la fenêtre **Hierarchy** et relâche. [1]
4. Sélectionne l’objet **Room_Modern** dans la **Hierarchy**.
5. Dans l’**Inspector**, trouve le composant **Transform**. [2]
6. Mets les valeurs de position à :
   - **X = 0**, **Y = 0**, **Z = 0**. [1]

### 3. Supprimer le plan (Plane) de base

1. Dans **Hierarchy**, cherche un objet nommé **Plane**. [1]
2. Clique dessus puis appuie sur la touche **Suppr / Delete** de ton clavier, ou fais un clic droit → **Delete**. [1]

Il ne sert plus car la pièce que tu viens d’ajouter a déjà un sol.

***

## Étape 6 – Ajouter un environnement extérieur

### 1. Ajouter un premier plan (Foreground)

1. Dans **Project**, ouvre : `_Course Library` → `_Prefabs` → `Environments`. [1]
2. Cherche un prefab contenant “Foreground” dans son nom (par ex. **Foreground_XXXX**). [1]
3. Glisse ce prefab dans la **Hierarchy**.

### 2. Ajouter un arrière-plan (Background)

1. Dans le même dossier `Environments`, choisis un prefab “Background”. [1]
2. Glisse ce prefab dans la **Hierarchy** également.

### 3. Positionner l’environnement derrière les fenêtres

1. Sélectionne ton prefab **Foreground** dans la **Hierarchy**.
2. Dans la vue **Scene**, utilise les outils de déplacement (raccourci W) pour le placer de façon à ce qu’il soit visible à travers les fenêtres de ta pièce. [2]
3. Fais la même chose pour le **Background**, en le plaçant plus loin pour faire un paysage lointain. [1]

***

## Étape 7 – Ajuster la lumière du soleil

1. Dans la **Hierarchy**, trouve l’objet **Directional Light**. [1]
2. Clique dessus. Dans l’**Inspector**, repère le **Transform**. [2]
3. Modifie les valeurs de **Rotation X** et **Rotation Y** pour changer l’angle de la lumière. [1]
   - Par exemple, change X pour simuler un soleil plus haut ou plus bas.
   - Change Y pour faire venir la lumière d’un autre côté.

Tu peux aussi changer la **Color** dans le composant **Light** pour simuler une lumière de fin de journée (plus orangée). [1]

***

## Étape 8 – Utiliser le Device Simulator (tester sans casque)

### 1. Ajouter le prefab “XR Device Simulator”

1. Dans **Project**, ouvre :
   - `Samples` → `XR Interaction Toolkit` → `[version]` → `XR Device Simulator` → `XRDeviceSimulator`. [1]
2. Glisse le prefab **XR Device Simulator** dans la **Hierarchy**. [1]

### 2. Lancer la simulation

1. En haut de l’éditeur Unity, clique sur le bouton **Play** (triangle). [2]
2. La vue **Game** s’active et le Device Simulator t’affiche une interface d’aide (selon la version). [1]

### 3. Contrôles clavier/souris principaux

- Maintenir **clic droit** de la souris : regarder autour de soi. [1]
- Contrôler la main gauche : maintenir **Left Shift** ou basculer avec la touche **T**. [1]
- Contrôler la main droite : maintenir la **barre d’espace** ou basculer avec la touche **Y**. [1]
- Tourner un appareil (tête ou main) : maintenir le **clic molette** et bouger la souris. [1]
- Réinitialiser positions/rotations : appuyer sur **V**. [1]

### 4. Désactiver le Device Simulator avant test sur casque

1. Quand tu as fini de tester, sélectionne **XR Device Simulator** dans la **Hierarchy**. [1]
2. Dans l’**Inspector**, décoche la case en haut à gauche du nom de l’objet (pour le désactiver). [2]

Ne pas le désactiver peut casser le suivi de tête réel quand tu testes avec un casque. [1]

***

## Étape 9 – Tester en VR via Unity (Windows + casque type Quest en Link)

> Cette étape concerne surtout Windows + casque branché en filaire (Quest Link, etc.). [1][3]

### 1. Activer OpenXR pour le mode Desktop

1. En haut, clique sur **Edit** → **Project Settings…**. [2]
2. Dans le menu de gauche, clique sur **XR Plug-in Management**. [1]
3. Dans l’onglet **Windows, Mac, Linux**, coche **OpenXR** dans la liste des Plug-in Providers. [1]

### 2. Corriger les avertissements OpenXR (interaction profile)

1. Si tu vois un petit icône de warning à côté de OpenXR, clique dessus pour ouvrir la fenêtre **Project Validation**. [1]
2. Suis les instructions, généralement :
   - Cliquer sur **Edit** pour ouvrir les **OpenXR settings**.
   - Ajouter un profil d’interaction adapté à ton casque, par exemple **Oculus Touch Controller Profile** pour un Quest. [1][3]
   - Activer les Feature Groups recommandés (OpenXR Feature Groups). [1]

### 3. Connecter ton casque

1. Branche ton casque VR à ton PC avec un câble compatible. [3]
2. Lance l’application prévue (par exemple **Quest Link / Meta Quest App** pour le Quest). [3]
3. Vérifie que l’appli détecte correctement ton casque.

### 4. Tester dans l’éditeur

1. Assure-toi que **XR Device Simulator** est **désactivé** dans la **Hierarchy**. [1]
2. Clique sur **Play**.
3. Mets ton casque : tu devrais voir ta pièce VR et pouvoir bouger la tête pour regarder autour. [1]

***

## Étape 10 – Build & Run sur Meta Quest (Android)

> Nécessite : module **Android Build Support** installé avec Unity, et Quest en mode développeur. [1][3]

### 1. Activer OpenXR pour Android

1. Va dans **Edit** → **Project Settings…** → **XR Plug-in Management**. [2]
2. Clique sur l’onglet **Android**. [1]
3. Coche **OpenXR**. [1]
4. Si tu ne vois pas Android, c’est que le module Android n’est pas installé dans Unity. [1]

### 2. Corriger les warnings OpenXR Android

1. Clique sur l’icône de warning pour ouvrir **OpenXR Project Validation**. [1]
2. Si possible, clique sur **Fix All**. [1]
3. S’il reste un message sur un “interaction profile” manquant :
   - Clique sur **Edit** pour ouvrir les **OpenXR settings**.
   - Dans l’onglet **Android**, clique sur le bouton **+** pour ajouter un profil. [1]
   - Pour Quest, choisis **Oculus Touch Controller Profile** et active **Meta Quest Support**. [1][3]

### 3. Préparer la scène pour le build

1. Vérifie que **XR Device Simulator** est **désactivé** dans la **Hierarchy**. [1]
2. Va dans **File** → **Build Profiles** ou **Build Settings** (selon version). [1][2]
3. Clique sur **Open Scene List** si nécessaire, puis sur **Add Open Scenes** pour ajouter ta scène actuelle à la liste de build. [1]

### 4. Passer la plateforme de build en Android

1. Dans la fenêtre de build, dans la liste **Platforms**, clique sur **Android**. [1]
2. Clique sur **Switch Platform** et attends la fin de la conversion. [1]

### 5. Sélectionner ton Quest comme appareil de destination

1. Allume ton Quest et branche-le à ton ordinateur. [3]
2. Dans la fenêtre de build, à côté de **Run Device**, clique sur **Refresh**. [1]
3. Sélectionne ton casque dans la liste (il peut apparaître comme un ID ou un nom). [1]
4. Si rien n’apparaît :
   - Mets le casque et accepte la demande “Allow USB debugging”. [3]
   - Vérifie que le mode développeur est activé.
   - Redémarre éventuellement le casque ou Unity. [3]

### 6. Build & Run sur le casque

1. Toujours dans la fenêtre de build, clique sur **Build and Run**. [1]
2. Choisis un emplacement sur ton PC, crée un dossier **Builds**. [1]
3. Nomme ton build : `[TonNom] - VR Room - 1.1`. [1]
4. Valide, puis attends : la première compilation peut prendre plusieurs minutes. [1]

Une fois terminé, l’application est installée sur ton Quest dans la section **Unknown Sources** de la bibliothèque d’apps. [1][3]

***

## Étape 11 – Problèmes fréquents

- L’image ne prend pas tout le champ de vision :
  - Souvent lié à une mauvaise configuration des plug-ins XR (OpenXR). [1]
- Toute la scène bouge avec ta tête :
  - Le **XR Device Simulator** est peut-être encore actif.
  - Ou l’**Input Action Manager** n’est pas correctement configuré. [1]

***

## Étape 12 – Idées d’extensions (optionnel)

- Jouer avec la **Directional Light** pour simuler différentes heures de la journée. [1]
- S’exercer avec le **XR Device Simulator** pour être à l’aise avec les contrôles. [1]
- Ajouter une horloge murale qui affiche l’heure réelle (avec `DateTime.Now` en C#). [1]

***

Si tu veux, le prochain message peut détailler certains sous-blocs sous forme de “fiches” avec captures suggérées (par exemple “Comment reconnaître la fenêtre Hierarchy”, “Comment utiliser les outils de déplacement dans la Scene”, etc.).

Sources
[1] 1.1 - VR Project Setup - Unity Learn https://learn.unity.com/tutorial/vr-project-setup
[2] Unity - Manual: Unity 6.2 User Manual https://docs.unity3d.com/6000.2/Documentation/Manual/UnityManual.html
[3] Set up Unity for VR development | Meta Horizon OS Developers https://developers.meta.com/horizon/documentation/unity/unity-project-setup/
[4] 1.1 - VR Project Setup - Unity Learn https://learn.unity.com/pathway/vr-development/unit/vr-basics/tutorial/1-1-vr-project-setup?version=6.2
[5] VR Development Pathway - Unity Learn https://learn.unity.com/pathway/vr-development
[6] How to Make a VR Game in Unity 6.2 - Part 1 : Setup and Player https://www.youtube.com/watch?v=exc-73Mna3A
[7] How to Make a VR Game in Unity 6.2 - Part 3 - YouTube https://www.youtube.com/watch?v=Au8w_6qZxT8
[8] Unity 6 - Complete Beginners Tutorial (2025) - YouTube https://www.youtube.com/watch?v=vQY4jsho1nQ
[9] How to Make a VR Game in Unity 6.2 - Part 6 : Ray and Poke Interactor https://www.youtube.com/watch?v=rMaYhvgyi0U
[10] Create with VR course - Unity Learn https://learn.unity.com/course/create-with-vr
