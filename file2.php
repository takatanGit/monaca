<!DOCTYPE html>
<html>
<head>
<title>サンプル</title>
</head>
<body>
ディレクトリ情報を調べる
<hr>
<table border="2">
<tr bgcolor="#AAAAAA">
<th>内容</th>
</tr>
<?php
$curdir = opendir(".");
while($name = readdir($curdir)){
	print "<tr><td>{$name}</td></tr>\n";
}
closedir($curdir);
?>
</table>
</body>
</html>