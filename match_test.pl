use strict;
use warnings;

#chomp(my $pattern = <>);
#my $pattern = "
#			(\w+),\s        	#surname
#			(\w+\s)*			#firstnames
#			\(\d*\s-\d*\),\s   	#year of birth - death
#			(.*)				#type of surgeon
#			";

# while (<>) {           # take one input line at a time
    # chomp;
    # if (m/[\?]\z/x) {
        # print "Matched: |$`<$&>$'|\n";  # the special match vars
    # }
    # else {
        # print "No match: |$_|\n";
    # }
# }

open(my $file, '<', 'C:\Users\benjamin\Documents\python\tony\munks_html\vol3.html');
my $data = join('', <$file>);
while (1) {
    chomp (my $input = <STDIN>);
    if ($data =~ s!
            <a\shref="/Biography/Details/    
            (?<biog_num>    \d*?)
            "><strong>
            (?<surname>     \w*?)
            </strong>, 
            (?<othernames> (\w*\s)* (\w*))
            </a>
            
            .*? <td> \s*? (?<bd> \S*?)-(?<dd> \S*?) #birth date and death date, possibly '?'
            \s*? <\td> \s*?
            
            #<td> \s*? (?<page_num> \d*) \s*? </td>
            
            !!xms) {
        #my ($surname, $othernames, $bd, $dd, $page_num) 
            #= (\g{'surname'}, \g{'othernames'}, \g{'bd'}, \g{'dd'}, \g{'page_num'});
       # print "Matched: (${surname}, ${othernames}, ${bd}, ${dd}, ${page_num})\n" 
        print "Matched\n"
    }
    else {
        print "No match\n";
    }
}