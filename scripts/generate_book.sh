#!/bin/bash

# === Config ===
DOCS_ROOT="docs"
OUTPUT_MD="combined.md"
OUTPUT_PDF="book.pdf"

# === Reset output ===
echo "🧹 Clearing previous output..."
echo "" > "$OUTPUT_MD"

# === Helper: Clean markdown content ===
clean_markdown() {
  local file="$1"
  # Remove heading lines that match patterns like "## 1-a-thing" or "## 2.3.1-another-thing"
  sed '/^## [0-9][0-9.]*-[a-z0-9-]\+$/d' "$file"
}

# === Recursively walk directory ===
walk() {
  local current_dir="$1"
  local depth="$2"

  # Include index.md first, if present
  if [[ -f "$current_dir/index.md" ]]; then
    echo "📄 Including: $current_dir/index.md"
    clean_markdown "$current_dir/index.md" >> "$OUTPUT_MD"
    echo -e "\n" >> "$OUTPUT_MD"
  fi

  # Include other markdown files, sorted
  find "$current_dir" -maxdepth 1 -type f -name '*.md' ! -name 'index.md' \
    | sort -V | while read -r file; do
      echo "📄 Including: $file"
      clean_markdown "$file" >> "$OUTPUT_MD"
      echo -e "\n" >> "$OUTPUT_MD"
  done

  # Recurse into sorted subdirectories
  find "$current_dir" -mindepth 1 -maxdepth 1 -type d | sort -V | while read -r dir; do
    walk "$dir" $((depth + 1))
  done
}

# === Run walker ===
echo "🚶 Walking directory tree..."
walk "$DOCS_ROOT" 1

# === Convert to PDF ===
echo "🖨️ Generating PDF with Pandoc..."
pandoc "$OUTPUT_MD" -o "$OUTPUT_PDF" --pdf-engine=xelatex -V mainfont="Palatino"

# === Done ===
echo "✅ PDF generated: $OUTPUT_PDF"
