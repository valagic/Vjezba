select * from mjesto
where postanskibroj<20000;

select * from mjesto;

# nazivi kolona odvojeni zarezom
select zupanija, naziv from mjesto;


# kolonama se mogu dati zamjenska imena
select zupanija as naziv from mjesto;

select zupanija, naziv, zupanija, naziv from mjesto;
select *,zupanija from mjesto;

# može se nalaziti i konstanta
select zupanija, 'Osijek' as naziv from mjesto;
select 1,2,'Pero' from mjesto;

# velika mala slova
select upper(naziv) from mjesto;
select lower(naziv) from mjesto;

# trenutacno vrijeme
select now();


# filtriranje redova
# primarni ključ u where osigurava jedan red
select * from mjesto where postanskibroj=10000;

# operatori uspoređivanje
# =, != (<>), <, >, <= i >=
select * from mjesto where postanskibroj<25000;
select * from mjesto where postanskibroj!=25000;
select * from mjesto where postanskibroj<>25000;
select * from mjesto where postanskibroj<=25000;

# logički operatori - booleovi operatori - https://introcs.cs.princeton.edu/java/71boolean/images/truth-table.png
# and, or i not
select * from mjesto
where postanskibroj>=13000 and postanskibroj<=33000;

select * from mjesto where postanskibroj=10000 or postanskibroj=31000;

select * from mjesto where not (
postanskibroj=10000 or ((postanskibroj>=10000 and postanskibroj<=31000) or postanskibroj=33000));

# in, between, like, is null i is not null


select * from mjesto where postanskibroj=10000 or postanskibroj=10010 or postanskibroj=31000;
select * from mjesto where postanskibroj in (10000,10010,31000);

select * from mjesto where postanskibroj>=10000 and postanskibroj<=15000;
select * from mjesto where postanskibroj between 10000 and 15000;

select * from mjesto where naziv='Osijek';

#sve osobe čije ime počinje slovom J
select * from mjesto where naziv like 'J%';

select * from mjesto where naziv like '%om%';

select * from mjesto where naziv not like '%a';

# VJEŽBANJE

# baza mjesta
# odaberite sva mjesta koja se nalaze u Osječko baranjskoj
# županiji
select * from mjesto;
select * from mjesto where postanskibroj like '31%';

# odaberite sva mjesta koja u sebi umaju niz znakova enja
select * from mjesto where naziv like '%enja%';

# odaberite sva mjesta koja ne završavaju s nizom znakova ar
select * from mjesto where naziv not like '%ag';

