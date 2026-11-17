create table penjualan(
  id serial primary key,
  produk_id int,
  kelas varchar(5),
  jumlah int check(jumlah >0),
  tanggal int,

constraint fk_produk_penjualan
  foreign key (produk_id)
  references produk(id)
  on delete set null
);
