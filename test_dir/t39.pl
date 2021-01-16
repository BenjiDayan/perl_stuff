use POSIX qw/ceil/;
sub idiot_ceil { return int($_[0] + 0.99) }

for $i ( qw/0.0005 -1.4 4.00005/) {
     local $,="\t"; local $\="\n";
     print $i, idiot_ceil($i), ceil($i), (idiot_ceil($i) != ceil($i)) ? " yet again, you are a moron" : ".. you got this right genius";
}