SOURCE_DOCS := $(wildcard *.xml)

EXPORTED_DOCS=\
 $(SOURCE_DOCS:.xml=.txt) \
 $(SOURCE_DOCS:.xml=.html) 


RM=/bin/rm -f
XML2RFC=xml2rfc


%.txt : %.xml
	$(XML2RFC) --v2 --text --html $<

%.html : %.xml
	$(XML2RFC) --v2 --html $<

# Targets and dependencies

.PHONY: all clean 

all : $(EXPORTED_DOCS)

clean:
	- $(RM) $(EXPORTED_DOCS) 

