#!/usr/bin/perl

$latex = 'platex %O -src-specials -shell-escape -synctex=1 -interaction=errorstopmode %O %S -kanji=utf8';
$pdflatex = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex = 'pbibtex -kanji=utf8 %O %B';
$makeindex = 'mendex %O -U -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$dvips = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf = 'ps2pdf %O %S %D';
$pdf_mode = 3;
@default_files = ("main");
if ($^O eq 'darwin') {
  $pvc_view_file_via_temporary = 0;
  $pdf_previewer = 'open -ga Skim.app';
  $pdf_update_method = 4;
  $pdf_update_command = 'open -a Skim.app %S; open -a iTerm.app';
} else {
  $pdf_previewer = 'xdg-open';
}









#!/usr/bin.perl
#$latex = 'platex -interaction=nonstopmode -kanji=utf-8 %O %S';
#$dvipdf = 'dvipdfmx %O -o %D %S';
#$bibtex = 'pbibtex';
#$pdf_mode = 3; # use dvipdf
#$pdf_update_method = 2;
#$pdf_update_command = 'open -ga /Applications/Preview.app';
#$pdf_previewer = "open -a /Applications/Skim.app";
# Prevent latexmk from removing PDF after typeset.
# $pvc_view_file_via_temporary = 0;


#!/usr/bin/env perl
#
## Commands
#$latex            = 'platex -synctex=1 -halt-on-error';
#$latex_silent     = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
#$bibtex           = 'pbibtex %O %B';
#$dvipdf           = 'dvipdfmx %O -o %D %S';
#$makeindex        = 'mendex %O -o %D %S';
#
# Max number of typeset
#$max_repeat       = 5;
#
## Make pdf via dvi
#$pdf_mode   = 3;
#
## Preview application
## $pdf_previewer    = "open -a /Applications/Atom.app";
#
## Overwrite setting
#$pvc_view_file_via_temporary = 0;
