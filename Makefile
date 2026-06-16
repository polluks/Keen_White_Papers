OUTPUT   := book.pdf
SRC_DIR  := src
TEX      := cd $(SRC_DIR) && pdflatex
TEX_OPTS := -interaction=nonstopmode -halt-on-error

all: $(OUTPUT)

$(OUTPUT):
	$(TEX) $(TEX_OPTS) book
	$(TEX) $(TEX_OPTS) book
	$(TEX) $(TEX_OPTS) book
	cp $(SRC_DIR)/book.pdf $(OUTPUT)

.PHONY: clean cleanall

clean:
	rm -f $(SRC_DIR)/*.aux $(SRC_DIR)/*.log $(SRC_DIR)/*.out
	rm -f $(SRC_DIR)/*.toc $(SRC_DIR)/*.lof $(SRC_DIR)/*.lot
	rm -f $(SRC_DIR)/*.bbl $(SRC_DIR)/*.blg $(SRC_DIR)/*.bcf
	rm -f $(SRC_DIR)/*.run.xml $(SRC_DIR)/*.snm $(SRC_DIR)/*.nav
	rm -f $(SRC_DIR)/*.vrb $(SRC_DIR)/*.synctex.gz
	rm -f $(SRC_DIR)/*.fls $(SRC_DIR)/*.fdb_latexmk
	rm -f $(SRC_DIR)/*.idx $(SRC_DIR)/*.ind $(SRC_DIR)/*.ilg
	rm -f $(SRC_DIR)/*.ptc $(SRC_DIR)/missfont.log

cleanall: clean
	rm -f $(OUTPUT)
