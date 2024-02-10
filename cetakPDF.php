<?php 
require_once("tcpdf/tcpdf.php");
require 'functions.php';

// Query data mahasiswa
$mahasiswa = query("SELECT * FROM mahasiswa");

// Variabel untuk nomor urutan
$nomor_urut = 1;

// create new PDF document with landscape orientation
$pdf = new TCPDF('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->setCreator(PDF_CREATOR);
$pdf->setAuthor('nota dinas keluar');
$pdf->setTitle('Data');
$pdf->setSubject('Data');
$pdf->setKeywords('Data');

$pdf->setFont('dejavusans', '', 11, '', true);

$pdf->setPrintHeader(false);
$pdf->AddPage();

// Judul di atas tabel
$pdf->writeHTML('<h1 style="text-align:center;">DAFTAR NOMOR NOTA DINAS</h1>');


// Inisialisasi array untuk menyimpan data
$data = array();

// Tambahkan header tabel
$data[] = array('No.', 'Tanggal', 'Kepada', 'No. ND Keluar', 'Perihal');

// Tambahkan data dari query ke dalam array
foreach ($mahasiswa as $row) {
    $data[] = array($nomor_urut, $row['tanggal'], $row['kepada'], $row['no_ndkeluar'], $row['perihal']);
    $nomor_urut++; // Tingkatkan nomor urutan
}

// Generate HTML for the table
$html = '<table border="1" cellpadding="10" cellspacing="0">';
foreach ($data as $row) {
    $html .= '<tr>';
    foreach ($row as $cell) {
        $html .= '<td>' . $cell . '</td>';
    }
    $html .= '</tr>';
}
$html .= '</table>';

// Print HTML to PDF
$pdf->writeHTML($html, true, false, false, false, '');

// Close and output PDF document
$pdf->Output('Data Notad dinas.pdf', 'I');
?>
