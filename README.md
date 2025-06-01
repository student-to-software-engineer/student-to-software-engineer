# Student To Software Engineer

`
brew install pandoc
`

`bash
brew install --cask mactex
`

`bash
echo 'export PATH="/Library/TeX/texbin:$PATH"' >> ~/.zprofile
source ~/.zprofile
`

`bash
pandoc -s -o book.pdf docs/**/*.md --pdf-engine=xelatex -V mainfont="Palatino"
`

`bash
./scripts/generate_book.sh
`