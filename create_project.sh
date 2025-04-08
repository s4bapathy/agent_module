#!/bin/bash

# --- Script Configuration ---
# Exit immediately if a command exits with a non-zero status.
set -e
# Treat unset variables as an error when substituting.
# set -u # Removed as it causes issues if run in a completely empty dir sometimes
# Pipes fail on first error.
set -o pipefail

# --- Introduction ---
echo "Creating standard agent project structure in the current directory (.)"
echo "Using mkdir -p (creates parent dirs) and touch (creates empty files)."
echo "Existing files/directories will not be overwritten, but timestamps might be updated."
echo "---"


# --- Create Structure in Current Directory ---

# Create root files
echo "Creating root files..."
touch ./main.py
touch ./.env             # Ensure .env is created as a file
touch ./requirements.txt
touch ./README.md
echo "  Created/Ensured: main.py, .env, requirements.txt, README.md"

# Create config directory and files
echo "Creating config/ structure..."
mkdir -p ./config
touch ./config/__init__.py
touch ./config/settings.py        # General settings (API keys, etc.)
touch ./config/prompts.yaml       # Agent prompts
echo "  Created/Ensured: config/ and contents"

# Create tools directory and files (Generalized from 'database')
echo "Creating tools/ structure..."
mkdir -p ./tools
touch ./tools/__init__.py
touch ./tools/connection.py       # Generic connections/clients (APIs, DBs, etc.)
touch ./tools/tool_utils.py       # Utilities for tool interaction/setup
echo "  Created/Ensured: tools/ and contents"

# Create state directory and files
echo "Creating state/ structure..."
mkdir -p ./state
touch ./state/__init__.py
touch ./state/graph_state.py      # LangGraph state definition
echo "  Created/Ensured: state/ and contents"

# Create agents directory and files (Generalized names)
echo "Creating agents/ structure..."
mkdir -p ./agents
touch ./agents/__init__.py
touch ./agents/models.py          # Pydantic models for agent I/O
touch ./agents/base_agent_config.py # Optional base configs
touch ./agents/input_analyzer.py  # Agent(s) for understanding input/intent
touch ./agents/core_processor.py  # Agent(s) for main logic/task execution
touch ./agents/validator.py       # Agent(s) for validation (optional)
touch ./agents/output_generator.py# Agent(s) for formatting/explaining output
echo "  Created/Ensured: agents/ and contents"

# Create nodes directory and files (Generalized names)
echo "Creating nodes/ structure..."
mkdir -p ./nodes
touch ./nodes/__init__.py
touch ./nodes/node_utils.py       # Helpers for nodes
touch ./nodes/input_nodes.py      # Node(s) calling input_analyzer
touch ./nodes/processing_node.py  # Node(s) calling core_processor
touch ./nodes/validation_node.py  # Node(s) calling validator
touch ./nodes/action_node.py      # Node(s) for executing actions/tools
touch ./nodes/output_formatting_node.py # Node(s) for formatting results
touch ./nodes/response_node.py    # Node(s) calling output_generator
touch ./nodes/error_handler_nodes.py # Nodes for error handling paths
echo "  Created/Ensured: nodes/ and contents"

# Create graph directory and files
echo "Creating graph/ structure..."
mkdir -p ./graph
touch ./graph/__init__.py
touch ./graph/workflow_builder.py # LangGraph graph definition
touch ./graph/conditional_logic.py # Functions for conditional edges
echo "  Created/Ensured: graph/ and contents"

# Create utils directory and files
echo "Creating utils/ structure..."
mkdir -p ./utils
touch ./utils/__init__.py
touch ./utils/logging_setup.py    # Application-wide logging
echo "  Created/Ensured: utils/ and contents"

# Create tests directory and subdirectories/files
echo "Creating tests/ structure..."
mkdir -p ./tests
touch ./tests/__init__.py

mkdir -p ./tests/test_agents
touch ./tests/test_agents/__init__.py

mkdir -p ./tests/test_nodes
touch ./tests/test_nodes/__init__.py

mkdir -p ./tests/test_tools
touch ./tests/test_tools/__init__.py

mkdir -p ./tests/test_workflow
touch ./tests/test_workflow/__init__.py
echo "  Created/Ensured: tests/ and contents"

# --- Completion Message ---
echo ""
echo "--------------------------------------------------"
echo "Project structure scaffolded in the current directory!"
echo "--------------------------------------------------"
echo "Next steps (if not already done):"
echo "1. Initialize Git (git init) if desired."
echo "2. Create a Python virtual environment (e.g., python -m venv .venv && source .venv/bin/activate)"
echo "3. Populate requirements.txt (e.g., langchain, langgraph, pydantic, python-dotenv, ...)"
echo "4. Install dependencies (pip install -r requirements.txt)"
echo "5. Configure API keys/settings in .env and config/settings.py"
echo "6. Start developing your agents and graph workflow!"
echo ""

exit 0