<?php 
$uri = $_SERVER['REQUEST_URI'];

// 画面詳細のURLにいたときの処理とそうでない時の処理
if(strpos($uri, 'imageDetail.php')!==false){
    $imageId = $_GET['id'];

    $sql="SELECT*FROM images WHERE id =" .$imageId;
    $sth = $db->prepare($sql);
    $sth->execute();
    // 選択した画像を一個だけ取得する
    $data['image']=$sth->fetch();

    // 降順でデータをとってくる。新しい画像を上に
    $sql2 = "SELECT * FROM comments WHERE image_id = " . $imageId . " ORDER BY create_date DESC";

    // 準び、実行、全部とってくる
    $sth = $db->prepare($sql2);
    $sth->execute();
    $data['comments']=$sth->fetchAll();
    $countComment = count($data['comments']);



}else{
    $sql="SELECT*FROM images ORDER BY create_data DESC";
    $sth = $db->prepare($sql);
    $sth->execute();
    $data = $sth->fetchAll();

}

return $data;
 


 