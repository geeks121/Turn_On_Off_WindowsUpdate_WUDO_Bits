# Turn On/Off Windows Update, WUDO, Bits

**Windows Update**
Tentu kita semua udah tau fungsi Windows Update ini. Ya tugasnya adalah untuk memperbaiki sistem kita dari celah - celah bug.
Hal ini membuat PC/Laptop kita semakin aman dari bug - bug tersebut. Tapi terkadang update yang dilakukan dalam jumlah besar sehingga untuk user kuota ini sangat mencekik sekali.

Info selengkapnya ada disini [Windows Update](https://support.microsoft.com/en-us/help/12373/windows-update-faq)

**Windows Update Delivery Optimization**
WUDO adalah singkatan dari Windows Update Delivery Optimization. Pasti asing kan mendengar hal ini. Gampangnya adalah kita dapat melakukan update windows update dan app store melalui PC lain yang sudah mendownload sebelumnya. Terdengar baik bukan? Ya sangat baik tetapi ini juga menjadi ketakutan sekali lagi untuk user kuota. Bayangkan saja kita mendownload file update dan mengirimkannya pada komputer lainnya.

Info selengkapnya ada disini [WUDO](https://privacy.microsoft.com/en-us/windows-10-windows-update-delivery-optimization)

**Background Intelligent Transfer Service**
BITS ini merupakan salah satu sumber masalah yang terjadi pada OS Windows khususnya pada Windows 10. Karena BITS diperuntukkan untuk aplikasi yang mempunyai proses syncing dengan server yang berjalan di background. Jadi kita tidak tahu jika kadang BITS ini berjalan dengan sendirinya.

Info selengkapnya ada disini [BITS](https://msdn.microsoft.com/en-us/library/windows/desktop/bb968799(v=vs.85).aspx)

## TIPS
1. Saya sangat MENYARANKAN untuk MEMATIKAN WUDO agar kita tidak perlu menjadi Host untuk orang lain dan pengguna lainnya yang ingin mendownload update bisa langsung menuju direct ke server Microsoft via Windows Update
2. Jika anda sedang dalam koneksi cepat dan unlimited, segera lakukan update di windows update. Tetapi jika anda dalam koneksi cepat namun kuota, saya sarankan untuk turn off Windows Update dan Bits


## Penjelasan
- Off_WUDO.bat            = Mematikan service WUDO
- Off_WinUpdate_Bits.bat  = Mematikan service Windows Update dan BITS
- On_WinUpdate_Bits.bat   = Menyalakan service Windows Update dan BITS


## Cara Penggunaan
1. Download file hosts ini dengan cara klik "Clone or Download" dan pilih "Download Zip". Lalu extract terlebih dahulu
2. Saya sarankan untuk mematikan WUDO, jadi klik kanan pada Off_WUDO.bat lalu pilih Run As Administrator.
3. Setelah langkah kedua, silahkan pilih off / on sesuai kebutuhan anda. Jika ingin melakukan proses update, silahkan pilih yang On_WinUpdate_Bits. Tetapi jika tidak sedang update, silahkan pilih Off_WinUpdate_Bits. Jangan lupa untuk klik kanan dan pilih Run As Administrator
