<?php
// $account = "0895340454593"; // nomer ovo
// $access = "f691bfd0ceaf31cd36e2959aed6458f642177ccb"; // akses token

$account = readline("Nomor ovo: "); // nomer ovo
$access = readline('Token: '); // akses token
$amount = readline("Nominal Transfer: "); // nominal
$transfer_to = readline("Nomor Target:"); // target

$masx="100"; //

$i=0;
while ($i < $masx) {
	$ds = json_decode(file_get_contents("http://yvelynette17.id/ovo/transfer.php?phone_number=$account&amount=$amount&access_code=$access&to_account=$transfer_to"));
	if($ds->error == false)
	{
		$i++;
		echo "[SUCCESS] " . $ds->message . " [$i]" . "\n";
	} else {
		echo "[FAILED] " . $ds->message . "\n";
	}
	sleep(5);
} 
sleep('5');
echo "Start Open Angpao";
$max="100"; //

$x=0;
while ($x < $max) {
	$tf = json_decode(file_get_contents("http://yvelynette17.id/ovo/play_game.php?phone_number=$account&access_code=$access"));
	if($tf->error == false)
	{
		$x++;
		echo "[SUCCESS] " . $tf->message . " [$x]" . "\n";
	} else {
		echo "[FAILED] " . $tf->message . "\n";
	}
}

?>
