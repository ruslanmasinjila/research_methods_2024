echo 'performing 1/4 pass...'
pdflatex -interaction=nonstopmode MainLatex.tex > /dev/null 2>&1
echo 'complete'
echo 'performing 2/4 pass...'
bibtex MainLatex > /dev/null 2>&1
echo 'complete'
echo 'performing 3/4 pass...'
pdflatex -interaction=nonstopmode MainLatex.tex > /dev/null 2>&1
echo 'complete'
echo 'performing 4/4 pass...'
pdflatex -interaction=nonstopmode MainLatex.tex > /dev/null 2>&1
echo 'complete. cleaning up'
rm *.aux *.bbl *.blg *.log *.lof *.lot *.toc *.out
echo 'done'
