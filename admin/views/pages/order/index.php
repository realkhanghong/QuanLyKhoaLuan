<?php

$order = loadModel('order');

$list=$order->list_order($page=false);

require_once 'views/header.php';
  ?>
<section class="clear
fix maincontent py-3">
		<div class="w-100 container " >
			<div class="card">
				<div class="card-header">
					<div class="row">
						<div class="col-md-6"><strong class="text-danger"> LIST OF ORDERS</strong></div>
						<div class="col-md-6 text-right">
							<?php if ($_SESSION['Access']!=1) {
								echo "Bạn k có quyền sửa";
							}else{ ?>
							<a class="btb btn-danger btn-sm" href="index.php?option=order&cat=trash"><i class="fa fa-trash-o"></i> Trash</a>
						<?php } ?>
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
								<th class="text-center" style="width:100px;">ID</th>
								<th class="text-center" style="width:300px;height:10px;">Customer name</th>
								<th class="text-center">Date create</th>
								<th class="text-center">Information</th>
								<th class="text-center" style="width:200px;"> Trạng thái Đơn Hàng</th>
								<th class="text-center" style="width:160px;"> Status</th>

								
							</tr>
						</thead>
						<tbody>
						<?php foreach($list as $row):?>
							<?php $id=$row['id']; 

							?>
							<tr>
									
									<td class="text-center text-danger">0<?php echo $row['id']  ?></td>
									<td class="text-center"><h6><?php echo $row['deliveryname']  ?></td>
									<td class="text-center"><?php echo $row['created_date']  ?></td>
									<td class="text-center"><a href="index.php?option=order&cat=dathang&id=<?php echo $row['id']  ?>">View Detail</a></td>
									<td class="text-center"><?php if($row['status']==1) {echo "Đã xác nhận";} else{ echo "chờ xác nhận";}  ?></td>
									<td class="text-center">
										<?php if ($_SESSION['Access']!=1) {
								echo "Bạn k có quyền sửa";
							}else{ ?>
										<?php if($row['status']==1):  ?>
									<a class="btn btn-sm btn-success" href="index.php?option=order&cat=status&id=<?php echo $id; ?>" > <i class="fa fa-toggle-on"></i> </a>
									<?php else: ?>
										
										<a class="btn btn-sm btn-danger" href="index.php?option=order&cat=status&id=<?php echo $id; ?>" > <i class="fa fa-toggle-off"></i> </a>	
								<?php endif;  ?>
									<a class="btn btn-sm btn-danger " href="index.php?option=order&cat=detrash&id=<?php echo $id; ?>" > <i class=" fa fa-trash"></i> </a>
							<?php } ?>
							</td>


									
							</tr>
						<?php endforeach; ?>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<style type="text/css">
		
		a:hover{
    color: red;
    text-decoration: none;
}
	</style>