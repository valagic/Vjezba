select * from autor;
select * from katalog;
select * from izdavac;
select * from mjesto;

# velika mala slova
select upper(ime) from autor;
select lower(ime) from autor;
select upper(naslov) from katalog;
select lower(naslov) from katalog;
select upper(naziv) from izdavac;
select lower(naziv) from izdavac;
select upper(naziv) from mjesto;
select lower(naziv) from mjesto;
# trenutacno vrijeme
select now();

# operatori uspoređivanje
# =, != (<>), <, >, <= i >=
select * from autor where sifra= 15156;
select * from autor where sifra !=15156;
select * from autor where sifra <16000;
select * from autor where sifra >5000;
select * from autor where sifra >=16000;
select * from autor where sifra <=16000;

# odaberite sve knjige kojima je izdavac Hrvatska revija
select * from izdavac;
select * from izdavac where naziv like '%Hrvatska%';
select * from izdavac where sifra=1;

# odaberite sve knjig koja u sebi umaju niz znakova ana
select * from katalog where naslov like '%ana%';

# odaberite sve knjig koja ne zavrsavaju sa znakovima ana
select * from katalog where naslov not like '%ana';

#broj redaka u tablici
select count(*) from izdavac;

#koje je knjige napisala ivana brlic mazturanic
select * from autor;
select * from autor where ime='Ivana';
select * from katalog where autor=1;

#koliko je knjiga napsiala ivana b mazuranic
select count(*) from katalog where autor=1;

#odaberi sve knjige koje ivana b mazuranic nije napisala
select * from katalog;
select * from katalog where autor!=1;


#update naredba
update katalog set naslov='OsijekNovo' where naslov like '%duši';
select * from katalog where naslov='OsijekNovo';