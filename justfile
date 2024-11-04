root := justfile_directory()

export TYPST_ROOT := root

[private]
default:
	@just --list --unsorted

watch:
  typst watch --ppi 144 --format pdf --root . book.typ ./pdf/book.pdf

mk: fig
  typst compile --ppi 144 --format pdf --root . book.typ ./pdf/book.pdf

fig: rm
  #!/usr/bin/env sh
  for file in `find ./src/figures -name fig*.typ`; do
    filename=`echo $(basename $file) | cut -f1 -d'.'`
    typst compile --format png $file ./src/arts/${filename}.png
  done

rm-fig:
  #!/usr/bin/env sh
  for file in `find ./src/arts -name *.png`; do
    rm $file
  done

rm-pdf:
  #!/usr/bin/env sh
  for file in `find ./src -name *.pdf`; do
    rm $file
  done

rm: rm-fig rm-pdf