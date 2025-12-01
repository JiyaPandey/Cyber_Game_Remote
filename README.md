# Cyber_Game_Remote

A small Godot project containing a hacking / cybersecurity themed minigame prototype. The project includes a password-cracking minigame script, project configuration for Godot, and art assets (icon and a server/firewall image). This repository appears to be a fork of AshishRamesh/Cyber_Game_Remote.

> Note: This README was created from the repository layout and top-level files. For exact runtime behaviour and scene names check the Scenes and Scripts directories inside the project in Godot.

## Quick snapshot of repository (top-level)
- .gitattributes
- .gitignore
- Scenes/ (directory — open in the Godot editor to inspect)
- Scripts/ (directory — open in the Godot editor to inspect)
- assets/ (directory)
- default_bus_layout.tres — Godot audio bus layout resource
- icon.svg, icon.svg.import — project icon and import metadata
- main.gd — bootstrap/entry script
- passwordcracker.gd — password-cracker minigame logic
- project.godot — Godot project file
- serverfirewall.png, serverfirewall.png.import — image asset + import metadata

## What this project is
Cyber_Game_Remote is a Godot/GDScript prototype for a cyber-themed minigame (remote hacking / password cracking). The repository includes core scripts and assets necessary to open and run the project in Godot. The key script present is `passwordcracker.gd`, which implements the password-cracking gameplay logic.

## Requirements
- Godot Engine (the exact major version is determined by `project.godot` — open that file or open the project with Godot to have the editor indicate compatibility). If you have trouble opening the project, try a recent stable Godot 3.x or 4.x build and check the engine version comment at the top of `project.godot`.
- A computer capable of running the Godot editor.

## Getting started (open and run)
1. Clone the repository:
   git clone https://github.com/JiyaPandey/Cyber_Game_Remote.git
2. Open the Godot Engine editor.
3. In Godot, choose "Import" and open the `project.godot` file from the cloned folder (or open the project folder directly in Godot).
4. Inspect the Scenes folder to find the main scene. If there's an autoload or a `main.gd` script wired up as the entry point, the project may already have a main scene set in Project → Project Settings → Application → Run → Main Scene. If a main scene is not set, open the Scenes directory and run the scene that looks like the main menu / root scene.
5. Run the project (press Play / F5).

Tip: If audio/sound behavior is not as expected, `default_bus_layout.tres` configures audio buses; verify bus names in Project → Audio.

## How to play (general guidance)
- The prototype centers on a password-cracking minigame (see `passwordcracker.gd`). Typical interaction patterns for such minigames include:
  - Typing or selecting characters to guess a password.
  - Using on-screen buttons, mouse clicks, or keyboard input to submit guesses.
  - Visual feedback such as progress bars or firewall/server images (this project contains `serverfirewall.png`).
- Because scenes may contain UI nodes and custom input mapping, open the scene that runs `passwordcracker.gd` to review exact controls (and to modify mappings if you prefer different keys).

## Project structure and important files
- `project.godot` — Godot project settings. Check engine version and project settings here.
- `main.gd` — small entry or bootstrap script (15 bytes in the repository — likely a short autoload or run script).
- `passwordcracker.gd` — main gameplay script for the password-cracker minigame. Inspect this file to understand or extend the minigame logic.
- `Scenes/` — where scene files (.tscn/.scn) live. Open these in the Godot editor to view node hierarchies and exported variables.
- `Scripts/` — other GDScript files used by scenes (if present).
- `assets/`, `icon.svg`, `serverfirewall.png` — visual assets for the project.
- `default_bus_layout.tres` — audio bus setup resource.

## Development notes
- To extend the game:
  - Add new scenes into the Scenes folder and hook them into the main menu or flow.
  - Add scripts into the Scripts folder and attach to nodes in scenes.
  - Use Godot's export templates to build a standalone executable or HTML export.
- If you change image/sound assets, reimport them via the Godot inspector to regenerate `.import` metadata files.
- Consider adding an explicit Main scene in Project Settings → Run so contributors can run the project with a single click.

## Contributing
- Fork the repository, make changes in a topic branch, and submit a pull request with a clear description of changes.
- When contributing code:
  - Keep GDScript modular: separate UI, game logic, and data where possible.
  - Add comments and exported variables so designers can tweak values in the editor.
  - If you add assets, include appropriate attribution or licenses.

## Issues & roadmap ideas
(There are no issues tracked in this fork at the time of writing. To improve the project, consider:)
- Adding a clear Main menu scene with Start / Instructions / Exit.
- Documenting exact controls and expected behavior in individual scenes.
- Providing a target Godot engine version in this README after confirming `project.godot`.
- Adding automated tests or simple sanity checks (e.g., ensure main scene loads).

## Credits & attribution
- Forked from: AshishRamesh/Cyber_Game_Remote (parent repository). See the original project for history, author, and additional context.
- Assets: check the `assets/` folder and image metadata for original creator attribution. If you add third-party assets, document licenses.

## License
No license file is included in this repository. If you intend to share or accept contributions, add a LICENSE (for example MIT, Apache 2.0, etc.). Without a license, the repository defaults to "all rights reserved".

## Contact
- Repository owner: https://github.com/JiyaPandey
- Parent repository: https://github.com/AshishRamesh/Cyber_Game_Remote
