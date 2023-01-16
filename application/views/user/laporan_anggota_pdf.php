<style type="text/css">
.table-data{width: 100%; border-collapse: collapse;}
.table-data tr th, .table-data tr td{border:1px solid black;font-size: 11pt;padding: 10px 10px 10px 10px;}
</style>
<h3><center>Laporan Data Anggota</center></h3>
<br><br>
<table class="table-data">
<tr>
<th>No</th> 
<th>Nama</th> 
<th>Email</th> 
<th>Member sejak</th>
<th>Image</th> 
</tr>
<?php 
$no = 1; 
foreach($anggota as $a){ 
?> <tr> 
<th scope="row"><?= $no++; ?>.</th> 
 <td><?= $a['nama']; ?></td>
 <td><?= $a['email']; ?></td>
  <td><?= date('d F Y', $a['tanggal_input']); ?></td>
  <td>
    <center>
      <picture>
        <source srcset="" type="image/svg+xml">
        <img src="<?= base_url('/assets/img/profile/') . $a['image']; ?>" class="img-fluid img-thumbnail" style="width:80px;height:80px;">
      </picture>
    </center>
  </td>
</tr> 
<?php 
} 
?> </table>
