<?php 
$id=$_REQUEST['id'];
$order= loadModel('order');
$product= loadModel('product');
$orderdetail = loadModel('orderdetail');
$row=$order->order_rowid($id);
$oorder_product=$orderdetail->orderdetail($id);

?>
<?php require_once 'views/header.php';?>

<div class="container pt-5">
	<div class="row ">
		<div class="col  col-md-6 border bg-light "> <p class="title_buy">Product information</p> </div>
		<div class="col  col-md-6 border bg-light"> <p class="title_buy">Customer information	</p> </div>	

	</div>
	<div class="row">
		<div class=" border-left border-bottom border-right  col col-md-6 pt-5 ">
		<table class="table1 ">
			
			<thead>
				<tr>
					<th style="width:10%;height:10px;" >ID</th>
					<th style="width:30%;height:10px;" >Name</th>
					<th style="width:15%;height:10px;" >Price</th>
					<th style="width:10%;height:10px;" >amount</th>
					<th style="width:20%;height:10px;" >Image</th>
				</tr>
			</thead>
			<tbody>
				<?php $total_money=0; ?>
				<?php foreach($oorder_product as $pr):?>
					<?php
					$ma=$pr['productid'];
					$list_product=$product->list_product11($ma);
					?>
					<?php foreach($list_product as $pp):?>
						<?php $money_item = $pr['quantity']*$pr['price'];
								$total_money+=$money_item; 

								?>
				<tr>
					<td><?php echo $pr['productid'];  ?></td>
					<td><?php echo $pp['name'];  ?></td>
					<td><?php echo $pp['price'];  ?></td>
					<td><?php echo $pr['quantity'];  ?></td>
					<td  ><img style="width:30%;height:30px;" src="../public/img/<?php echo $pp['img']?>" alt=""></td>
				</tr>
				<?php endforeach; ?>
			<?php endforeach; ?>
			</tbody>
		</table>
		</div>
		<div class="  border-bottom border-right   col col-md-6 pt-5 "> 
			<table >
			<tbody>
				<tr class="border-top">
					<td  class="pb-3 " style="font-weight: bold;">full name: </td>
					<td class="pb-3 pl-5"><?php echo $row['deliveryname']?></td>
				</tr>
				<tr class="border-top">
					<td class="pb-3" style="font-weight: bold;">address:</td>
					<td class="pb-3 pl-5"><?php echo $row['deliveryaddress']?></td>
				</tr>
				<tr class="border-top">
					<td class="pb-3" style=" font-weight: bold;">Phone Number:</td>
					<td class="pb-3 pl-5"><?php echo $row['deliveryphone']?></td>
				</tr>
				<tr class="border-top" >
					<td class="pb-3" style=" font-weight: bold;">Email: </td>
					<td class="pb-3 pl-5"><?php echo $row['deliveryemail']?></td>
				</tr>
				<tr class="border-top" >
					<td class="pb-3" style=" font-weight: bold;">Payments methods: </td>
					<td class="pb-3 pl-5"><?php if($row['ShipingMethods']>0){echo "Standard - $2.00";}else{echo " Free ship";}  ?></td>
				</tr>
				<tr class="border-top" >
					<td class="pb-3" style=" font-weight: bold;">Payments: </td>
					<td class="pb-3 pl-5"><?php echo "$".$row['Payments']?></td>
				</tr>
				
			</tbody></table>
		</div>
	</div>
</div>

<style type="text/css">
	
p.title_buy {
    font-size: 18px;
    font-weight: bold;
    padding-top: 15px;

    color: black;
    
}
.table1 {
	width:100%;
	margin-bottom:18px;
}
.table1 th, .table1 td {
	padding:8px;
	line-height:18px;
	text-align:left;
	vertical-align:top;
	border-top:1px solid #ddd;
	text-align: center;
}

a{
	text-decoration: none;
}
ul li{
	list-style: none;
}
</style>