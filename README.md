
# appManager
This Bash script serves as an AppImage manager, allowing users to add, list, and run various AppImages conveniently.

## Usage

1. **Add AppImage**: Add a new AppImage to the manager's database, providing its path and display name.
2. **List AppImages**: View a list of all stored AppImages along with their display names.
3. **Run AppImage**: Select an AppImage from the list and execute it.
4. **Exit**: Terminate the script.

## How It Works

The script operates using a data file (`appimages.dat`) to store AppImage information. Upon startup, it loads existing data from this file, if available. Users can then perform operations on the stored AppImages using the interactive menu.

## Functions

- **save_appimages**: Saves the AppImages data to the designated file.
- **load_appimages**: Loads AppImages data from the file into the script's memory.
- **add_appimage**: Adds a new AppImage to the manager, prompting the user for its path and display name.
- **list_appimages**: Lists all stored AppImages and their display names.
- **run_appimage**: Runs a selected AppImage from the list after user selection.

## Requirements

- Bash shell environment.
- Proper execution permissions (`chmod +x`) for the script file.

## Getting Started

1. Ensure the script file has execution permissions (`chmod +x appManager.sh`).
2. Run the script (`./appManager.sh`) in your terminal.

## Future Ideas
- Add option to remove a appimage
- Get a GUI to choose appimage
- Make a new terminal in which the appimage runs and make it hidden. Then terminate it when the appimage is closed.
