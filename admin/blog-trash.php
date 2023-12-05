<?php
    if(isset($_REQUEST['id_post_cate'])){
        $id_cate = "and post_categories.id = " . "".$_REQUEST['id_post_cate']."";
    }else{
        $id_cate = "";
    }
?>
<div class="container">
    <h2 class="py-2 text-center h4 ">QUẢN LÝ BÀI VIẾT</h2>
    <table class="table table-hover table-bordered">
    <thead  class="thead-dark" >
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Hình ảnh</th>
            <th>Mô Tả</th>
            <th>Lượt Xem</th>
            <th>Tên Loại</th>
            <th>Ngày Tạo</th>
            <th>Ngày Cập Nhật</th>
            <th colspan="2"></th>
        </tr>
        
    </thead>
    <tbody>
    <?php
        require '../mvc/config/config.php';
        require '../mvc/model/conn.php';
        $stmt = $conn -> query("SELECT * FROM post join post_categories where post.id_cate = post_categories.id $id_cate AND post.deleted = 1 order by post.id"); 
        while($blog = $stmt->fetch()){
            if($blog[15] == 1){
                $disabled= "disabled";
            }else{
                $disabled= "";
            }
            echo "<tr>
                <td>$blog[0]</td>
                <td><a href = '../index.php?page=blog-details&id_blog=$blog[0]'>$blog[1]</a></td>
                <td><img src='../uploads_blog/$blog[img]' style='width: 70px; height: 70px;' alt=''></td>
                <td>$blog[meta_description]</td>
                <td>$blog[view]</td>
                <td>$blog[10]</td>
                <td>$blog[create_at]</td>
                <td>$blog[update_at]</td>
                <td style='width:60px'><button class='btn btn-warning' $disabled onclick='restoreBlog($blog[0])'>Khôi Phục</button></td>
                <td style='width:60px'><button class='btn btn-danger' onclick='restoreBlog($blog[0])'>Xóa Vĩnh Viễn</button></td>
            </tr>";
        }
    ?>
    </tbody>
</table>
</div>
<script>
    function restoreBlog(id) {
        if (confirm("Xác Nhận Khôi Phục") == true) {
            $(document).ready(function(){
            $.ajax({
                url: "blog-delete.php",
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
