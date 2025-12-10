# VRWorkshop

A Unity-based workshop template for learning and teaching XR/VR with the Unity XR Interaction Toolkit. It includes ready-to-run scenes, documented exercises, and a subject-to-PDF converter for printable handouts.

## Contents
- **Unity Project:** Core assets, scenes, and settings under `Assets/`, `Packages/`, and `ProjectSettings/`.
- **Workshop Docs:** Markdown guides in `Documentation/Subjects/` and reference manuals in `Documentation/Relatives/`.
- **Challenges:** Beginner tasks in `Documentation/Subjects/Challenges/` to fix and enhance VR interactions.
- **Converter:** A Pandoc/LaTeX tool in `Documentation/ConvertisseurDeSujet/` to export Markdown subjects to PDF.
- **Builds:** Sample outputs in `VRWorkshopBuild/` including an `.apk` for Android-based VR.

## Prerequisites
- Unity Hub + Unity Editor (2022.3 LTS or newer recommended).
- XR Interaction Toolkit packages are managed via `Packages/manifest.json`.
- macOS: Homebrew for local doc conversion (`pandoc`, `basictex`).

## Getting Started
1. Open the project via `VRWorkshop.sln` or directly in Unity Hub (select the project folder).
2. In Unity, open a scene from `Assets/Scenes` (or workshop scenes under `Documentation/Subjects/FirstStep`).
3. Use the XR Device Simulator to test without a headset. Reference controls in `Documentation/Relatives/Rig_Simulator_Keyboard_Shortcuts.pdf`.

## Documentation
- Subjects: `Documentation/Subjects/Setup.md`, `FirstStep/`, and `Challenges/` (1–3) provide step-by-step tasks.
- Relatives: Unity interface guides (EN/FR) in `Documentation/Relatives/` with images under `Documentation/Relatives/img/`.

## License
See `LICENSE` for usage terms.
