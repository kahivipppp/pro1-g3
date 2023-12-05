<div class="container">
    <h2 class="py-2 text-center h4 ">QUẢN LÝ BÀI VIẾT</h2>
    <table class="table table-hover table-bordered">
    <thead  class="thead-dark" >
        <tr>
            <th>ID</th>
            <th>Tên Loại</th>
            <th>Số Thứ Tự</th>
            <th>Trạng Thái</th>
            <th>Danh Sách Bài Viết</th>
            <th>
                <a class="btn btn-success" href="./blog_categories-add.php">Thêm Mới</a>
            </th>
            <th>
                <a class="btn btn-success" href="admin.php?page=blog_categories-trash">Thùng Rác</a>
            </th>
        </tr>
    </thead>
    <tbody>
    <?php
        require '../mvc/config/config.php';
        require '../mvc/model/conn.php';
        $stmt = $conn -> query("SELECT * FROM post_categories WHERE deleted = 0"); 
        while($blog_cate = $stmt->fetch()){
            // if($item['lang']=='vi') $lang='Vietnamse'; else $lang='English';
            if($blog_cate["status"] == 0){
                $blog_cate["status"] = "Ẩn";
            }else if($blog_cate["status"] == 1){
                $blog_cate["status"] = "hiện";
            }
            
            echo "<tr>
                <td>$blog_cate[id]</td>
                <td>$blog_cate[name]</td>
                <td>$blog_cate[stt]</td>
                <td>$blog_cate[status]</td>
                <td><a href='admin.php?page=blog&id_post_cate=$blog_cate[id]'>Xem Danh Sách Bài Viết</a></td>
                <td style='width:60px'><a href='./blog_categories-add.php?id=$blog_cate[id]'><button class='btn btn-warning'>Sửa</button></a></td>
                <td style='width:60px'><button class='btn btn-danger' onclick='deleteCategory($blog_cate[id])'>Xóa</button></td>
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
                url: "blog_categories-delete.php",
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