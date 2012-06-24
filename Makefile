JCC = javac

all: src/validator/ValidateNeXML.class bin/ bin/nexmlvalidator.jar

src/validator/ValidateNeXML.class: src/validator/ValidateNeXML.java
	cd src; $(JCC) validator/ValidateNeXML.java

bin:
	mkdir -p bin

bin/nexmlvalidator.jar: src/validator/ValidateNeXML.class
	jar mcf src/manifest.txt bin/nexmlvalidator.jar -C src/ .
