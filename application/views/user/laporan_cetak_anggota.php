<!DOCTYPE html> 
<html> 
<head> 
<title></title> 
</head> 
<body> 
<style type="text/css"> 
.table-data{ 
width: 100%; 
border-collapse: collapse; 
} 
.table-data tr th, 
.table-data tr td{ 
border:1px solid black; 
font-size: 11pt; 
font-family:Verdana; 
padding: 10px 10px 10px 10px; 
} 
.table-data th{ 
background-color:grey;
}
h3{ 
font-family:Verdana; 
} 
</style> 
<h3><center>Laporan Data Anggota</center></h3> 
<br/> 
<table class="table-data"> 
<thead> 
<tr> 
<th>No</th> 
<th>Nama</th> 
<th>Email</th> 
<th>Member sejak</th>
<th>Image</th> 
</tr> 
</thead> 
<tbody> 
<?php 
$no = 1; 
foreach($anggota as $a){ 
?> 
<tr> 
<td scope="row"><center><?= $no++; ?>.</center></td> 
 <td><?= $a['nama']; ?></td>
 <td><?= $a['email']; ?></td>
  <td><center><?= date('d F Y', $a['tanggal_input']); ?></center></td>
   <td>
     <center><picture>
       <source srcset="" type="image/svg+xml">
         <img src="<?= base_url('assets/img/profile/') . $a['image']; ?>" class="img-fluid img-thumbnail" alt="..." style="width:80px;height:80px;">
         </picture></center>
       </td>
</tr> 
<?php 
} 
?> 
</tbody> 
</table> 
<script type="text/javascript"> 
window.print(); 
</script> 
</body> 
</html>
