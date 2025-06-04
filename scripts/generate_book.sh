#!/bin/bash

# === Config ===
DOCS_ROOT="docs"
BOOK_DIR="book"
OUTPUT_MD="$BOOK_DIR/combined.md"
OUTPUT_PDF="$BOOK_DIR/book.pdf"
TITLE_PAGE="$BOOK_DIR/title.md"
COVER_IMAGE="assets/img/cover.png"
EMOJI_FILTER="Pandoc-Emojis-Filter/emoji_filter.js"
TEMPLATE_FILE="Pandoc-Emojis-Filter/template.tex"
EMOJI_STYLE="twemoji"  # or "noto-emoji"

# === Ensure book directory exists ===
mkdir -p "$BOOK_DIR"

# === Reset output ===
echo "🧹 Clearing previous output..."
echo "" > "$OUTPUT_MD"

# === Create main title page ===
cat > "$TITLE_PAGE" <<EOF
\begin{titlepage}
\centering
{\Huge\bfseries Student to Software Engineer\par}
{\Large By: Matthew MacRae-Bovell\par}
\vspace{1cm}
\includegraphics[width=1.0\textwidth]{$COVER_IMAGE}

\vfill

\today
\end{titlepage}
EOF

cat "$TITLE_PAGE" >> "$OUTPUT_MD"
echo -e "\n" >> "$OUTPUT_MD"

# === Chapter title generator ===
generate_chapter_page() {
  local major="$1"
  local title_line="$2"
  local image_path="assets/img/chapter_${major}_cover.png"

  if [[ ! -f "$BOOK_DIR/$image_path" ]]; then
    echo "⚠️  Warning: $image_path not found, using default cover."
    image_path="assets/img/cover.png"
  fi

  local clean_title
  clean_title=$(echo "$title_line" | sed 's/# //; s/_/\\_/g; s/&/\\&/g; s/%/\\%/g')

  cat <<EOF

\`\`\`{=latex}
\clearpage
\thispagestyle{my_sectionpage}
\vspace*{0cm}
\begin{center}
{\Huge\bfseries $clean_title\par}
\vspace{1cm}
\includegraphics[width=1.0\textwidth]{${image_path}}
\end{center}
\vfill
\clearpage
\`\`\`

EOF
}
# === Helpers ===
clean_markdown() {
  local file="$1"
  local file_dir
  file_dir=$(dirname "$file")
  file_dir="${file_dir#./}"  # normalize

  perl -pe '
    s/^## \d\d?\.\d?-[-a-z0-9]+$//;
  ' "$file" | perl -pe "
    s|!\\[([^\\]]+)\\]\\(\\./img/([^\\)]+)\\)|![\$1](../$file_dir/img/\$2)|g;
  "
}

extract_chapter_headers() {
  local file="$1"
  grep -E '^# [0-9]+\.' "$file"
}

extract_major_version() {
  local file="$1"
  extract_chapter_headers "$file" | grep -oE '^# [0-9]+' | head -n 1 | awk '{print $2}'
}

# === Include preface explicitly ===
PREFACE_FILE="$DOCS_ROOT/preface/index.md"
if [[ -f "$PREFACE_FILE" ]]; then
  echo "📄 Including Preface: $PREFACE_FILE"
  clean_markdown "$PREFACE_FILE" >> "$OUTPUT_MD"
fi

# === Recursively walk directory and inject chapter pages ===
walk() {
  local current_dir="$1"
  local depth="$2"

  # Static var to track across function calls
  declare -g last_major_version=""

  # Skip preface
  if [[ "$current_dir" == "$DOCS_ROOT/preface" ]]; then
    return
  fi

  local files=()
  if [[ -f "$current_dir/index.md" ]]; then
    files+=("$current_dir/index.md")
  fi

  while IFS= read -r -d '' file; do
    files+=("$file")
  done < <(find "$current_dir" -maxdepth 1 -type f -name '*.md' ! -name 'index.md' -print0 | sort -zV)

  for file in "${files[@]}"; do
    echo "📄 Including: $file"

    major_version=$(extract_major_version "$file")
    chapter_title=$(extract_chapter_headers "$file" | head -n 1)

    if [[ -n "$major_version" && "$major_version" != "$last_major_version" ]]; then
      echo "🔖 New chapter: $major_version"
      generate_chapter_page "$major_version" "$chapter_title" >> "$OUTPUT_MD"
      last_major_version="$major_version"
    fi

    clean_markdown "$file" >> "$OUTPUT_MD"
    echo -e "\n" >> "$OUTPUT_MD"
  done

  # Recurse into subdirectories
  while IFS= read -r -d '' dir; do
    walk "$dir" $((depth + 1))
  done < <(find "$current_dir" -mindepth 1 -maxdepth 1 -type d -print0 | sort -zV)
}

# === Run walker ===
echo "🚶 Walking directory tree..."
walk "$DOCS_ROOT" 1

# === Convert to PDF using emoji filter ===
echo "🧠 Running emoji filter with: $EMOJI_STYLE"
echo "🖨️ Generating PDF with Pandoc and emoji support..."

(
  cd "$BOOK_DIR"
  pandoc "combined.md" -o "book.pdf" \
    --template="../$TEMPLATE_FILE" \
    --pdf-engine=xelatex \
    --filter="../$EMOJI_FILTER" \
    -M emoji="$EMOJI_STYLE" \
    -V mainfont="Palatino" \
    -V fontsize=12pt \
    -V graphics=true
)

# === Done ===
echo "✅ PDF generated: $OUTPUT_PDF"
echo "📖 Book generation complete! Check the $BOOK_DIR directory for the output."
