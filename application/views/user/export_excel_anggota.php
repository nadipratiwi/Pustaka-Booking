<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=$title.xls"); header("Pragma: no-cache");
header("Expires: 0");
?>
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
</thead>
<tbody>
<?php 
$no = 1; 
foreach($anggota as $a){ 
?> <tr> 
<th scope="row"><?= $no++; ?></th> 
 <td><?= $a['nama']; ?></td>
                            <td><?= $a['email']; ?></td>
                            <td><?= date('d F Y', $a['tanggal_input']); ?></td>
                            <td>
                                <center><picture>
                                    <source srcset="" type="image/svg+xml">
                                    <img src="<?= base_url('assets/img/profile/') . $a['image']; ?>">
                                </picture></center>
                            </td>
</tr> 
<?php 
} 
?> </tbody></table>
