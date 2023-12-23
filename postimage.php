<?php

include('./dbConfig.php');

// 作った画像フォルダに繋げる（フォルダは書き込み可注意）
$targetDirectory = 'images/';
$fileName = basename($_FILES["file"]["name"]);
$targetFilePath = $targetDirectory . $fileName;
$fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

// ファイルの名前の確認や拡張子の確認

if ($_SERVER['REQUEST_METHOD'] == 'POST' && !empty($fileName)) {
    $arrImageTypes = array('jpg', 'png', 'jpeg', 'gif', 'pdf','JPG','HEIF');
    // まずは画像をフォルダにアップする
    if (in_array($fileType, $arrImageTypes)) {
        $postImageForServer = move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath);
    // その後データベースのテーブルに保存する
        if ($postImageForServer) {
            $insert = $db->query("INSERT INTO images (file_name) VALUES ('" . $fileName . "')");
        }
    }
}
// 画像一覧ページ
header('Location: ' . './html/index.php', true, 303);
exit();


