<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<title>Title of the document</title>
</head>

<body>
	<div class="container">
		<? if(isset($data)) { ?>
		<div class="row" style="margin-top: 20px;" >	
			<? foreach ($data as $tree) { ?>
			<div class="col-3">
				<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
				  <div class="card-header">Tree: <? echo $tree['type'] ?></div>
				  <div class="card-body">
				    <h5 class="card-title">Summary info for <? echo $tree['type'] ?></h5>
				    <p class="card-text">Amount fruits: <? echo $tree['amount_fruits'] ?></p>
				    <p class="card-text">All weight fruits: <? echo $tree['weight'] ?> gramm</p>
				  </div>
				</div>
			</div>
			<? } ?>
		</div>
		<? } ?>
	</div>
</body>

</html>