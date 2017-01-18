open (FILE, "id.txt");
open (GIFILE,"gi.txt");
open (OUT, ">gi_id.txt");
#print OUT ("gi\tgene_id\n");
print OUT ("gi\tgene_id\n");
%array=();

$line=<FILE>;
$line=<FILE>;

@list=<GIFILE>;
chomp(@list);
$size=scalar(@list);

while($line ne "")  
{
@id=split(/\t/,$line);		
$array{$id[0]}=$line;
	for($i=1;$i<$size;$i++)	{
     if($list[$i] == $id[0])
        {print OUT ("$array{$id[0]}");}
     }
$line=<FILE>;
}