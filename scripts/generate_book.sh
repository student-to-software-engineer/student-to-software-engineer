#!/bin/bash

# === Config ===
DOCS_ROOT="docs"
OUTPUT_MD="combined.md"
OUTPUT_PDF="book.pdf"
TITLE_PAGE="title.md"
EMOJI_FILTER="Pandoc-Emojis-Filter/emoji_filter.js"
TEMPLATE_FILE="Pandoc-Emojis-Filter/template.tex"
EMOJI_STYLE="twemoji"  # or "noto-emoji"

# === Reset output ===
echo "🧹 Clearing previous output..."
echo "" > "$OUTPUT_MD"

# === Create title page ===
cat > "$TITLE_PAGE" <<EOF
\begin{titlepage}
\centering
{\Huge\bfseries Student to Software Engineer\par}
{\Large By: Matthew MacRae-Bovell\par}
\vspace{1cm}
\includegraphics[width=1.0\textwidth]{cover.png}

\vfill

\today
\end{titlepage}
\newpage
EOF

cat "$TITLE_PAGE" >> "$OUTPUT_MD"
echo -e "\n" >> "$OUTPUT_MD"

# === Helper: Clean markdown content ===
clean_markdown() {
  local file="$1"
  sed '/^## [0-9][0-9.]*-[a-z0-9-]\+$/d' "$file"
}

# === Include preface explicitly ===
PREFACE_FILE="$DOCS_ROOT/preface/index.md"
if [[ -f "$PREFACE_FILE" ]]; then
  echo "📄 Including Preface: $PREFACE_FILE"
  clean_markdown "$PREFACE_FILE" >> "$OUTPUT_MD"
  echo -e "\n\n\\\\newpage\n" >> "$OUTPUT_MD"
fi

# === Recursively walk directory ===
walk() {
  local current_dir="$1"
  local depth="$2"

  # Skip 'preface' since it's already included
  if [[ "$current_dir" == "$DOCS_ROOT/preface" ]]; then
    return
  fi

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

# === Convert to PDF using emoji filter ===
echo "🧠 Running emoji filter with: $EMOJI_STYLE"
echo "🖨️ Generating PDF with Pandoc and emoji support..."

pandoc "$OUTPUT_MD" -o "$OUTPUT_PDF" \
  --template="$TEMPLATE_FILE" \
  --pdf-engine=xelatex \
  --filter="$EMOJI_FILTER" \
  -M emoji="$EMOJI_STYLE" \
  -V mainfont="Palatino" \
  -V fontsize=12pt \
  -V graphics=true

# === Done ===
echo "✅ PDF generated: $OUTPUT_PDF"
