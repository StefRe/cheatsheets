REM generate the figures
cd scripts
for %%f in (*.py) do python %%f
cd ..

REM crop the figures
cd figures
for %%f in (*.pdf) do pdfcrop %%f %%f
cd ..

REM regenerate some figures that should not be cropped
cd scripts
python styles.py
cd ..

xelatex cheatsheets.tex