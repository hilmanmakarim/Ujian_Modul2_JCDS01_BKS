# Ujian_Modul2_JCDS01_BKS

![purwadhika logo](https://static.wixstatic.com/media/2e6af2_f69a4271c3534ae1869a7ed63e278b2b~mv2.png/v1/fill/w_246,h_39,al_c,usm_0.66_1.00_0.01/2e6af2_f69a4271c3534ae1869a7ed63e278b2b~mv2.png)

Selamat datang di Ujian Modul 2, JCDS Bekasi.
Pada ujian kali ini, Anda akan menggunakan data dari database MySQL yaitu database World. Database World terbagi menjadi 3 (tiga) tables, antara lain:
1. city
2. country
3. countrylanguage

Ujian kali ini akan dibagi menjadi 2 (dua) bagian, yaitu:
1. Query Test
2. Data Visualization Test

## 1. Query Test (Total Point 30)
Buka MySQL Workbench Anda dan selesaikan persoalan di bawah ini menggunakan database: world.

1. Tampilkan 10 (sepuluh) kota terpadat di Indonesia. Minimal kolom yang perlu ditampilkan adalah __(Poin 5)__:
    - id kota
    - nama kota
    - country code
    - nama distrik
    - populasi

    Hasil yang diharapkan

    ![soal1](https://github.com/ridhoaryo/SEA_Games/blob/master/soal_sql1.jpg?raw=trueha)


2. Tampilkan 10 (sepuluh) kota terpadat di dunia. Minimal kolom yang perlu ditampilkan adalah __(Poin 5)__:
    - id kota
    - nama kota
    - district
    - population

    Hasil yang diharapkan

    ![soal2](https://github.com/ridhoaryo/SEA_Games/blob/master/soal_sql2.jpg?raw=true "soal 2")

3. Tampilkan 10 (sepuluh) negara yang menggunakan Bahasa Inggris dan dipakai sebagai bahasa resmi. Minimal kolom yang perlu ditampilkan adalah __(Poin 10)__:
    - code negara
    - nama negara
    - language
    - isOfficial
    - percentage

    ![soal3](https://github.com/ridhoaryo/SEA_Games/blob/master/soal_sql3.jpg?raw=true)

4. Tampilkan 10 (sepuluh) negara di Asia yang angka harapan hidup nya di atas rata-rata angka harapan hidup di Benua Eropa. Minimal kolom yang perlu ditampilkan adalah __(Poin 10)__:
    - nama negara
    - nama benua
    - angka harapan hidup negara tersebut
    - GNP

    ![soal4](https://github.com/ridhoaryo/SEA_Games/blob/master/soal_sql4.jpg?raw=true)

Simpan semua query ke dalam satu buah text file (boleh di Notepad). 

## 2. Data Visualization Test __(Total Poin 70)__
Silahkan membuka Jupyter Notebook Anda.

1. __(Poin 5)__ Import semua table yang ada di database world (ada 3 tables), jadikan table-table tersebut menjadi 3 dataframe yang berbeda. Tampilkan 3 dataframe tersebut dengan ketentuan sebagai berikut:
    - Menggunakan Dataframe `country`, tampilkan 10 (sepuluh) negara dengan populasi terkecil.
    ![slicing1](https://github.com/ridhoaryo/SEA_Games/blob/master/slicing1.jpg?raw=true)

    - Menggunakan Dataframe `city`, tampilkan 10 (sepuluh) countrycode dengan rata-rata populasi terbesar.
    ![slicing2](https://github.com/ridhoaryo/SEA_Games/blob/master/slicing2.jpg?raw=true)

    - Menggunakan Dataframe `countrylanguage`, tampilkan 10 (sepuluh) bahasa yang paling banyak digunakan di dunia.
    ![slicing3](https://github.com/ridhoaryo/SEA_Games/blob/master/slicing3.jpg?raw=true)

2. __(Poin 5)__ Menggunakan Dataframe `country` buatlah sebuah Pie Chart yang menampilkan presentase populasi dari setiap benua. Dengan menggunakan Pie Chart yang sudah dibuat. Kriteria Pie Chart:
    - Tampilkan presentase pada Pie Chart hingga pembulatan 1 (satu) decimal. Contoh: 20.1%
jawablah pertanyaan berikut:
    - Dilihat dari presentase tiap benua, benua manakah yang menjadi penyumbang populasi terbanyak?
    - Berapa presentase populasi manusia yang berada di benua Amerika?

3. __(Poin 10)__ Dari soal nomer 2, kita sudah mengetahui benua mana yang menyumbang populasi terbanyak. Pada soal nomor 3 ini, buatlah sebuah horizontal barplot, yang membagi tiap negara dalam benua tersebut. Tampilkan secara berurutan dalam barplot, 10 (sepuluh) negara yang menyumbang populasi terbanyak. Kriteria barplot:
    - Munculkan text `Total Population: ` pada tiap bar seperti contoh di bawah ini.

        ![contoh](https://github.com/ridhoaryo/SEA_Games/blob/master/contoh%20barplot.jpg?raw=true)

    Jawablah pertanyaan di bawah ini, berdasarkan horizontal bar plot yang sudah Anda buat.
    - Sebutkan negara dengan populasi terbanyak!
    - Negara apakah yang menjadi urutan ke 10 berdasarkan horizontal barplot yang sudah Anda buat?
    - Berapakah populasi negara yang berada di urutan ke-3?

4. __(Poin 20)__ __Hitunglah:__
    - IQR dari Angka Harapan Hidup (Life Expectancy) dari Benua Asia
    - Hitunglah juga, Mean, Median, Standard Deviation, Upper Boundaries serta Lower Boundaries.

    Buatlah sebuah Distribution Plot dari Angka Harapan Hidup di Benua Asia. Dan tampilkan pula di dalam Distribution Plot tersebut:
    - Garis vertikal untuk menandakan dimanakah letak Mean, Median, Upper Boundaries dan Lower Boundaries.
    - Tampilkan Legend agar memudahkan membaca plotnya.

    Menurut Distribution Plot tersebut jawablah pertanyaan ini:
    - Apakah terdapat negara yang Angka Harapan Hidup-nya berada pada outliers? Jika ada, tampilkan dalam bentuk Dataframe, data dari negara tersebut.
    - Jika tidak ada, cukup jawab dengan 'Tidak ada.'

5. __(Poin 10)__ Data GNP (Gross National Product) pada Dataframe `country` saat ini, masih dalam satuan "million USD". Sehingga, jika Anda menemukan negara dengan GNP 10, maka nominal GNP sesungguhnya dari negara tersebut adalah 10,000,000 USD. Mengetahui hal itu maka, selesaikan tugas berikut:
    - Ubah value dalam kolom GNP ke nominal sesungguhnya (dikali 1,000,000)
    - Buatlah sebuah function bernama `percapita()` yang berisi rumus untuk menghitung GNP per Capita. Kemudian, buatlah kolom baru bernama `GNPperCapita` di Dataframe `country`, lalu isi kolom tersebut menggunakan function yang tadi sudah dibuat.

6. __(Poin 20)__ Saya memiliki asumsi bahwa negara-negara dengan `LifeExpectancy` yang tinggi akan selalu memiliki `GNPperCapita` yang tinggi pula. Dan ini berarti `LifeExpectancy` dan `GNPperCapita` memiliki korelasi positif yang signifikan. Apakah Anda setuju dengan asumsi saya?
    - Jawablah pertanyaan ini menggunakan chart/plot yang sesuai (setidaknya ada 2 chart/plot), sehingga dapat melandasi jawaban Anda.
    - Jika Anda setuju jelaskan alasannya, dan jika anda tidak setuju jelaskan juga alasannya.
    - Serta benua manakah yang salah satu negaranya mencetak GNP tertinggi, jika dibandingkan dari benua-benua lainnya?

## Catatan Penting:
Upload Text File yang berisi jawaban Query dan file ipynb ini ke dalam satu buah repository di github. Lalu kirim linknya ke email ridhoaryo@gmail.com dan email operasional Purwadhika.

## Happy Coding And Analyzing!
