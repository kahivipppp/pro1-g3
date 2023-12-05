<div class="container">
    <h2 class="py-2 text-center h4 ">BÌNH LUẬN CỦA BẠN</h2>
    <table class="table table-hover table-bordered">
    <thead  class="thead-dark" >
        <tr>
            <th>Tên Sản Phẩm</th>
            <th>Nội Dung</th>
            <th>Ngày Đăng </th>
            <th>Ngày Chỉnh Sửa </th>
            <th colspan="2"><a class="btn btn-success" href="./orders-add.php">Thêm Mới</a></th>
        </tr>
        
    </thead>
    <tbody>
    <?php
        require '../mvc/config/config.php';
        require '../mvc/model/conn.php';
        if (isset($_COOKIE['usr'])) {
            $username = "where id_user = " ."'" .$_COOKIE['usr'] ."'" ;
        }
        $stmt = $conn ->prepare("SELECT cmt.id, content, id_prod, id_user, cmt.create_at, cmt.update_at, product.name 
        FROM cmt join product on cmt.id_prod = product.id $username"); 
        $stmt -> execute();
        while($cmt = $stmt->fetch()){
            echo "<tr>
                <td><a href='../index.php?page=product&id_prod=$cmt[2]'>$cmt[6]</a></td>
                <td>$cmt[1]</td>
                <td>$cmt[4]</td>
                <td>$cmt[5]</td>
                <td style='width:60px'><a href='./orders-add.php?id=$cmt[0]'><button class='btn btn-warning'>Sửa</button></a></td>
                <td style='width:60px'><button class='btn btn-danger' onclick='delete_cmt($cmt[0])'>Xóa</button></td>
            </tr>";
        }
    ?>
    </tbody>
</table>
</div>
<script>
    delete_cmt=(id)=>{
        let check=confirm("Bạn có chắc chắn xóa không ?")
        console.log(id)
        if(check){
            $.post("../model/delete_cmt.php",{'id_cmt':id},
            (data)=>{   
                console.log(data);
                if(data==0) location.reload(); else alert(data); 
            })
        }
    }
</script>