<!DOCTYPE html>
<html>
<head>
<title>サンプル</title>
</head>
<body>
グラフのように表示する
<hr>
<?php
$fp = fopen("file2.txt", "r");

while(($num = fgets($fp)) != null){
	for($i=0; $i<$num; $i++){
		print "-";
	}
	print "{$num}<br/>\n";
	print "<br/>\n";
}
fclose($fp);
?>
</body>
</html>