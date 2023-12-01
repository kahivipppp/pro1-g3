<div class="container">
    <h2 class="py-2 text-center h4 ">THÙNG RÁC LOẠI BÀI VIẾT</h2>
    <table class="table table-hover table-bordered">
    <thead  class="thead-dark" >
        <tr>
            <th>ID</th>
            <th>Tên Loại</th>
            <th>Số Thứ Tự</th>
            <th>Trạng Thái</th>
            <th>Danh Sách Bài Viết</th>
            <th colspan="2"></th>
        </tr>
    </thead>
    <tbody>
    <?php
        require '../config/config.php';
        require '../model/conn.php';
        $stmt = $conn -> query("SELECT * FROM post_categories WHERE deleted = 1"); 
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
                <td style='width:60px'><button class='btn btn-warning' onclick='restoreCategory($blog_cate[id])'>Khôi Phục</button></td>
                <td style='width:60px'><button class='btn btn-danger' onclick='deleteCT($blog_cate[id])'>Xóa Vĩnh Viễn</button></td>
            </tr>";
        }
            
        
    ?>
    </tbody>
</table>
</div>
<script>
    function restoreCategory(id) {
        if (confirm("Xác Nhận Khôi Phục") == true) {
            $(document).ready(function(){
            $.ajax({
                url: "blog_categories-delete.php",
                method: "POST",
                data:{id_restore:id},
                success:function(data){
                    if (data) {
                        alert("Khôi Phục Thành Công");
                        location.reload()
                    }else{
                        alert("Khôi Phục Thất Bại")
                    }
                }
               
            });
        })
        }
    }
</script>