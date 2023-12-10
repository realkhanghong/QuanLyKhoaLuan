<?php
$id = $_REQUEST['id'];
$order = loadModel('order');
$row = $order->order_rowid($id);
$order->order_delete($id);
set_flash('thongbao',' xóa thành công');
redirect('index.php?option=order&cat=trash');
 ?>