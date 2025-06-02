echo "=== Word count statistics for text files ==="
for file in *.txt; do
    echo "Stats for $file:"
    wc -lwm "$file"
    echo "------"
done