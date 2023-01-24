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
                    Pengiriman
                </div>
                <div class="card-body">
                    <p>
                        Kami mengirim semua produk pesanan sesuai dengan metode pengiriman. 
                        Artinya, paket Anda akan dikemas rapi dan dikirimkan sesuai dengan antrian pengiriman. 
                    </p>
                    <p>Metode pengiriman yang kami lakukan adalah: </p>
                    <ol>
                        <li>Pengirim akan langsung mengemas barang ketika pembayaran sukses</li>
                        <li>Pengirim akan langsung mengirimkan barang setelah selesai dikemas</li>
                        <li>Pengirim akan memberikan resi pengiriman kepada Customer</li>
                        <li>Jika barang sudah sampai Customer dapat memberikan bukti barang yang sampai kepada pengirim</li>
                        <li>Jika terdapat kendala harap menghubungi kontak person kami</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</main>