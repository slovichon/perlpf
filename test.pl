use PF;

my $pf = PF->new;

$pf->open();

$pf->start();
$pf->stop();

$pf->startaltq();
$pf->stopaltq();
$pf->addaltq(
	action =>
	ticket => 
	number => );


$pf->close();
