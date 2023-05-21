#!/bin/sh

alias antlr4='java -Xmx500M -cp "./antlr4-4.9.4-SNAPSHOT-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
antlr4 -Dlanguage=Go -no-visitor -package parsing *.g4
