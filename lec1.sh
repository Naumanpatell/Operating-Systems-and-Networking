# Task 1a: Display message
echo "Hello! This is module CO2101. The current directory is $(pwd)"

# Task 1b: 
if [ "$PWD" = "$HOME" ]; then
    echo "In HOME directory"
else
    echo "Not in HOME directory"
fi

# Task 2: Organise files by extension

types=$(ls -1 | sed -n 's/.*\.\([^.]*\)$/\1/p' | sort | uniq)

for ext in $types; do
    mkdir -p "$ext"  # create folder if not exists
    # Move files with this extension into the folder
    for file in *."$ext"; do
        [ -f "$file" ] && mv "$file" "$ext/"
    done
done

echo "Files have been organised into subdirectories by extension."