IMG_NMS = graph1 graph2
IMAGES = $(IMG_NMS:=.svg)


pipeline.pdf: pipeline.dot
	dot -Tpdf $< -o $@

%.svg: %.dot
	dot -Tsvg $< -o $@
