# Project Scaffolding Script

This repository contains a shell script (`create_project.sh`) to quickly set up a standard directory structure for developing agent-based applications (e.g., using pydantic AI ,LangGraph) within your current project folder.

## Usage

1.  **Create Project Directory:**
    Make a new directory for your project and navigate into it.
    ```bash
    mkdir my-new-agent
    cd my-new-agent
    ```

2.  **Save the Script:**
    Download or copy the `create_project.sh` script into this new directory (`my-new-agent`).

3.  **Make Executable:**
    Give the script execute permissions.
    ```bash
    chmod +x create_project.sh
    ```

4.  **Run the Script:**
    Execute the script from within your project directory.
    ```bash
    ./create_project.sh
    ```

## Result

The script will create the standard subdirectories (`agents/`, `config/`, `nodes/`, `graph/`, `tests/`, `tools/`, `utils/`, `state/`) and essential files (`main.py`, `.env`, `requirements.txt`, `README.md`, various `__init__.py`, etc.) directly within your current project folder (`my-new-agent`).
