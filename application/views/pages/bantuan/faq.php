<link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/navbar-fixed/">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="<?= base_url("/assets/css/app.css") ?>">
<?php $this->load->view('layouts/_navbar') ?>

<main role="main" class="container">

    <div class="row">
        <div class="col-md-8 mx-auto">
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-header">
                    FAQ
                </div>
                <div class="card-body">
                    <ul>
                        <li>
                            Tanya: Bagaimana Cara Order?
                            <p>Untuk order atau pemesanan, setelah Anda memilih produk yang diinginkan, anda bisa melanjutkan ke proses checkout. Lalu ikuti langkah langkah selanjutnya.</p>
                        </li>
                        <li>
                            Tanya: Apa saja pilihan jenis bucket yang tersedia?
                            <p>Terdapat lima jenis bucket yaitu bucket balon, bucket bunga, bucket uang, bucket snack, dan bucket boneka</p>
                        </li>
                        <li>
                            Tanya: Kapan order saya akan diproses dan dikirimkan?
                            <p>Pesanan Anda akan segera kami proses dan kirim setelah pembayaran Anda kami terima sesuai syarat dan ketentuan yang berlaku</p>
                        </li>
                        <li>
                            Tanya: Bagaimana cara mengajukan refund?
                            <p>Cara mengajukan refund bisa dilakukan dengan menghubungi kontak person, baik melalui chat, email maupun telepon, lalu selanjutnya Tim kami akan mengonfirmasikan data-data dengan menghubungi Anda kembali secara langsung.</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</main>