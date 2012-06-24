JCC = javac

all: src/validator/ValidateNeXML.class bin/ bin/nexmlvalidator.jar

src/Validator/ValidateNeXML.class: src/Validator/ValidateNeXML.java
	$(JCC) src/Validator/ValidatorNeXML.java

bin:
	mkdir -p bin

bin/nexmlvalidator.jar: src/Validator/ValidateNeXML.class
	jar mcf src/manifest.txt bin/nexmlvalidator.jar -C src/ .
