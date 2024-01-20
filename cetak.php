<?php

include "library/fpdf.php";

// Mengatur kertas menjadi landscape
$pdf = new FPDF('L', 'mm', 'A4');
$pdf->AddPage();

$pdf->SetFont('Times', 'B', 13);
$pdf->Cell(0, 10, 'NOTA DINAS KELUAR', 0, 1, 'C');

$pdf->SetFont('Times', 'B', 11);

$pdf->Cell(10, 7, 'No.', 1, 0, 'C');
$pdf->Cell(20, 7, 'Tanggal', 1, 0, 'C');
$pdf->Cell(40, 7, 'Kepada', 1, 0, 'C');
$pdf->Cell(40, 7, 'No. ND', 1, 0, 'C');
$pdf->Cell(80, 7, 'Perihal', 1, 1, 'C'); // Tambahkan 1 untuk pindah ke baris baru

$pdf->SetFont('Times', '', 11);

$no = 1;
$koneksi = mysqli_connect("localhost", "root", "", "web_notadinas");

// Periksa koneksi
if (mysqli_connect_errno()) {
    echo "Koneksi database gagal: " . mysqli_connect_error();
    exit();
}

$query = "SELECT * FROM mahasiswa";
$data = mysqli_query($koneksi, $query);

// Periksa apakah query berhasil
if (!$data) {
    echo "Error: " . mysqli_error($koneksi);
    exit();
}

while ($d = mysqli_fetch_array($data)) {
    $pdf->Cell(10, 7, $no++, 1, 0, 'C');
    $pdf->Cell(20, 7, $d['tanggal'], 1, 0, 'C');
    $pdf->Cell(40, 7, $d['kepada'], 1, 0, 'C');
    $pdf->Cell(40, 7, $d['no_ndkeluar'], 1, 0, 'C');
    $pdf->Cell(80, 7, $d['perihal'], 1, 1, 'C'); // Tambahkan 1 untuk pindah ke baris baru
}

$pdf->Output();
?>
