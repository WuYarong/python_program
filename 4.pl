#!/usr/bin/perl
open (FILE, "Mus_musculus.gene_info");
open (LIST,"protein_geneid-tem.txt");
open (OUT, ">id_symbol4.txt");
print OUT ("gene_id\tsymbol\n");
%array=();
$line=<FILE>;
$line=<FILE>;

@lili=<LIST>;
chomp(@lili);
$size=scalar(@lili);

while($line ne "")
{
	@id=split(/\t/,$line);
	$array{$id[1]}=$id[2];	
  $line=<FILE>;
}
for($i=1;$i<$size;$i++)	
	{
  	@li=split(/\t/,$lili[$i]);
  	print OUT ("$li[6]\t$array{$li[6]}\n");
  }
