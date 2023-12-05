<div class="container">
    <h2 class="py-2 text-center h4 ">QUẢN LÝ LOẠI HÀNG</h2>
    <table class="table table-hover table-bordered">
    <thead  class="thead-dark" >
        <tr>
            <th>ID</th>
            <th>Tên Loại</th>
            <th>Số Thứ Tự</th>
            <th>Trạng Thái</th>
            <th>Danh Sách Sản Phẩm</th>
            <th >
                <a class="btn btn-success" href="./categories-add.php">Thêm Mới</a>
            </th>
            <th >
                <a class="btn btn-success" href="admin.php?page=categories-trash">Thùng Rác</a>
            </th>
        </tr>
    </thead>
    <tbody>
    <?php
        require '../mvc/config/config.php';
        require '../mvc/model/conn.php';
        $stmt = $conn -> query("SELECT * FROM categories where deleted = 0"); 
        while($cate = $stmt->fetch()){
            // if($item['lang']=='vi') $lang='Vietnamse'; else $lang='English';
            if($cate["status"] == 0){
                $cate["status"] = "Ẩn";
            }else if($cate["status"] == 1){
                $cate["status"] = "hiện";
            }
            
            echo "<tr>
                <td id='id'>$cate[id]</td>
                <td>$cate[name]</td>
                <td>$cate[stt]</td>
                <td>$cate[status]</td>
                <td><a href='admin.php?page=product&id_cate=$cate[id]'>Xem Danh Sách Sản Phẩm</a></td>
                <td style='width:60px'><a href='./categories-add.php?id=$cate[id]'><button class='btn btn-warning'>Sửa</button></a></td>
                <td style='width:60px'><button id='delete_categories' class='btn btn-danger' onclick='deleteCategory($cate[id])'>Xóa</button></td>
            </tr>";
        }
            
        
    ?>
    </tbody>
</table>
</div>
<script>
    function deleteCategory(id) {
        if (confirm("Xác Nhận Xóa") == true) {
            $(document).ready(function(){
            $.ajax({
                url: "categories-delete.php",
                method: "POST",
                data:{id_delete:id},
                success:function(data){
                    if (data) {
                        alert("Xóa Thành Công");
                        location.reload();
                    }else{
                        alert("Xóa Thất Bại")
                    }
                }
            });
        })
        }
        
    }
</script>