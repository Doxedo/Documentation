<html xmlns="http://www.w3.org/1999/xhtml" xmlns:l="http://www.linkorb.com/linkorbhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		{literal}
		<style>
			img.coverlogo {
				width: 300;
				text-align: center;
				margin-top: 100;
				margin-bottom: 50;
			}
			h2 {
				color: #[color1];
			}
		</style>
		{/literal}
	</head>
	<body>
	<center>
	{if $brand=="onatal"}
	<img class="coverlogo" src="{$metapath}public/templates/linkorb/onatal/images/onatal_logo_login.png" /><br />
	{else}
	<img class="coverlogo" src="{$metapath}public/images/linkorblogo-full.png" /><br />
	{/if}
	<h1>{$doctitle}</h1>
	<h2>{$docsubtitle}</h2>
	<h3>{$version}</h3>
	<h3>&copy; {$copyright}</h3>
	<h3>{$author}</h3>
	</center>
	</body>
</html>
