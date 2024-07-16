# !/bin/bash

# Verzeichnis und Präfix als Argumente
directory=$1
prefix=$2

# Überprüfen, ob beide Argumente übergeben wurden
if [ -z "$directory" ] || [ -z "$prefix" ]; then
    echo "Usage: $0 <directory> <prefix>"
    exit 1
fi

# Überprüfen, ob der Verzeichnisname ein Semikolon enthält
if [[ "$directory" == *";"* ]]; then
    echo "Error: Directory name contains a semicolon."
    exit 1
fi

# Alle Dateien im Verzeichnis durchlaufen
for filename in "$directory"/*; do
    # Überprüfen, ob der Dateiname ein Semikolon enthält
    if [[ "$filename" == *";"* ]]; then
        echo "Error: Filename contains a semicolon: $filename"
        exit 1
    fi

    # Überprüfen, ob die Datei mit dem Präfix beginnt
    basename=$(basename "$filename")
    if [[ $basename == $prefix* ]]; then
        # Neuen Namen erzeugen, indem das Präfix entfernt wird
        new_name="${basename#$prefix}"
        # Datei umbenennen
        mv "$filename" "$directory/$new_name"
        echo "Renamed: $basename -> $new_name"
    fi
done

