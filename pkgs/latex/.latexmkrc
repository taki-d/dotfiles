##!/usr/bin/perl
#$latex = 'platex -kanji=utf-8 -synctex=1 %S';
#$dvipdf = 'dvipdfmx %S';
#$bibtex = 'pbibtex';
#$pdf_mode = 3; # use dvipdf
#$pdf_update_method = 2;
#$pdf_previewer = "start mupdf %O %S";
#$max_repeat       = 5;
## Prevent latexmk from removing PDF after typeset.
#$pvc_view_file_via_temporary = 0;

#!/usr/bin/env perl
$latex            = 'uplatex -shell-escape -synctex=1 -halt-on-error';
$latex_silent     = 'uplatex -shell-escape -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'pbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode     = 3; # generates pdf via dvipdfmx

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Skim as a previewer
$pdf_update_method = 2;
$pdf_previewer = "mupdf";
