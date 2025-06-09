<h1 align="center">Student To Software Engineer</h1>

<div align="center">
  <img src="static/img/logo.png" alt="Student To Software Engineer" width="200" />
  <br />
  <h3>
    A free guide for students who want to land their first software job.
  </h3>
  <p>
    Learn how to stand out, build real skills, and take control of your future in tech.
  </p>
  <!-- <p>
    Follow along on <a href="https://discord.gg/yourserver" target="_blank">Discord</a> | <a href="https://twitter.com/yourhandle" target="_blank">𝕏 (Twitter)</a> | <a href="https://t.me/yourchannel" target="_blank">Telegram</a>
  </p> -->
</div>

## What is this?

**Student To Software Engineer** is a free, open guide to launching your career in tech—written for students and new grads who don’t know where to start or are struggling to stand out.

If you're overwhelmed by bad advice, feeling stuck, or just want a clear roadmap, this guide is for you. It’s shaped by real-world experience navigating internships, landing full-time roles, and mentoring hundreds of students through that journey.

Inside, you’ll find practical strategies for:

- Getting your first job or internship (even with no experience)
- Making the most of your time in university
- Learning what actually matters to employers
- Building projects that *prove* you know your stuff
- Navigating a changing job market shaped by AI, layoffs, and oversaturation


## Contributing

This is a living project! If you're a student, grad, mentor, or professional with advice to share, we’d love your help expanding the content.  

Feel free to open an issue or submit a pull request.

## License & Disclaimer

All content in this repository is open source and free to use under the {TBD} license. Opinions and advice are personal and not affiliated with any employer.

## Setup Notes (to be updated)
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