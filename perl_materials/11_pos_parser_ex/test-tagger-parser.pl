#!/usr/bin/perl

# a script that demonstrates using the system command to invoke the Stanford POS tagger and parser

# assumption: this script is outside both directories that contain the pos-tagger and parser specific stuff.
# directory structure:
# one directory contains:
#    test-tagger-parser.pl
#    stanford-parser-2010-11-30 (directory)
#    stanford-postagger-2010-05-26 (directory)

$input_file = "stanford-parser-2010-11-30/testsent.txt";
$pos_tagger_dir = "stanford-postagger-2010-05-26";
$parser_dir = "stanford-parser-2010-11-30";

# let's invoke the POS tagger first
# options: max memory = 1g
# note that we preface some of the other options with the directory path to the postagger
system("java -mx1g -classpath $pos_tagger_dir/stanford-postagger.jar edu.stanford.nlp.tagger.maxent.MaxentTagger -model $pos_tagger_dir/models/bidirectional-distsim-wsj-0-18.tagger -textFile $input_file > testsent-pos.txt");

# let's then invoke the parser
# options: max memory = 1g, output format = penn phrase structure trees
# note that if we use special characters like ", we have to put a backslash in front of them as if we were specifying a regular expression
system("java -mx1g -cp \"$parser_dir/stanford-parser.jar:\" edu.stanford.nlp.parser.lexparser.LexicalizedParser -outputFormat \"penn\" $parser_dir/englishPCFG.ser.gz $input_file > testsent-parsed.txt");
