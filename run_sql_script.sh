#!/bin/ksh
set -x

# Specify the path to the directory containing your SQL script files
SQL_SCRIPT_DIR="amalnew"

# Check if the SQL script directory exists
if [ -d "$SQL_SCRIPT_DIR" ]; then
    # Get a list of all SQL script files in the directory
    SQL_SCRIPT_FILES=("$SQL_SCRIPT_DIR"/*.sql)

    # Loop through the array and execute each SQL script
    for SQL_SCRIPT_FILE in "${SQL_SCRIPT_FILES[@]}"; do
        echo "Executing SQL script: $SQL_SCRIPT_FILE"
        
        # Check if the SQL script file exists
        if [ -f "$SQL_SCRIPT_FILE" ]; then
            # Fetch the content of the SQL script file
            SQL_SCRIPT_CONTENT="$(cat "$SQL_SCRIPT_FILE")"

            # Execute the SQL script using the MySQL client
            mysql -h localhost -u amal -p'amal123' -e "$SQL_SCRIPT_CONTENT"
        else
            echo "Error: SQL script file not found: $SQL_SCRIPT_FILE"
        fi
    done
else
    echo "Error: SQL script directory not found: $SQL_SCRIPT_DIR"
    exit 1
fi
