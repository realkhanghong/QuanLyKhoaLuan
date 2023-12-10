<?php  
$order = loadModel('order');
$list=$order->list_order($page=true);
?>
<?php 
require_once 'views/header.php';
  ?>

<section class="clear
fix maincontent py-3">
		<div class="w-100 container-fluid " >
			<div class="card">
				<div class="card-header">
					<div class="row">
						<div class="col-md-6"><strong class="text-danger">order Trash</strong></div>
						<div class="col-md-6 text-right">
							<a class="btb btn-danger btn-sm" href="index.php?option=order">Exit</a>
						</div>
					</div>
				</div>
				<div  class="card-block p-3">
					<?php if(has_flash('thongbao')):  ?>
					<div class="alert alert-danger" > <?php echo get_flash('thongbao') ; ?> </div>
				<?php endif; ?>
					<table id="myTable" class="table table-inverse table-hover table-bordered">
						<thead>
							<tr>
								<th class="text-center">Customer name</th>
								<th class="text-center">Customer Address</th>
								<th class="text-center" style="width:160px;">Date Submitted</th>
								<th class="text-center" style="width:160px;">Option</th>
								<th style="width:20px;" class="text-center">ID</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach($list as $row):?>
								<?php
								 $id=$row['id']; 
								?>
							<tr>
								<td class="text-center"><?php echo $row['deliveryname']  ?></td>
									<td class="text-center"><?php echo $row['deliveryaddress']  ?></td>
								<td class="text-danger"> <?php echo $row['created_ate']  ?></td>
								<td class="text-danger"><a class="btn btn-sm btn-warning" href="index.php?option=order&cat=retrash&id=<?php echo $id; ?>=<?php echo $id; ?>" > K.Phục </a>
									<a class="btn btn-sm btn-danger" href="index.php?option=order&cat=delete&id=<?php echo $id; ?>" > Xóa vv </a></td>
								<td class="text-danger"><?php echo $id; ?></td>
							</tr>
						<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
<?php require_once 'views/footer.php';  ?>