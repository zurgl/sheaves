watch:
  typst watch --ppi 144 --format pdf --root . book.typ ./pdf/book.pdf

book:
  typst compile --ppi 144 --format pdf --root . book.typ ./pdf/book.pdf

clean:
  rm *.pdf
  rm book/*.pdf
  rm book/*.pdf
  rm book/chap01/*.pdf
  rm book/chap02/*.pdf
  
