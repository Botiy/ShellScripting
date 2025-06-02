echo "=== Content of text files ==="
for file in *.txt; do
    echo "--------------------------"
    echo "Content of $file:"
    cat "$file"
    echo "------"
    echo "Head of $file:"
    head -n 1 "$file"
    echo "------"
    echo "Tail of $file:"
    tail -n 1 "$file"
    echo
done