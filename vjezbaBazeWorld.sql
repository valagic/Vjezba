select * from country;
select * from city;
select * from countryLanguage;

# velika mala slova
select upper(Name) from country;
select lower(Name) from country;

# trenutacno vrijeme
select now();

# operatori uspoređivanje
# =, != (<>), <, >, <= i >=
select * from country where SurfaceArea= 800;
select * from country where SurfaceArea !=800;
select * from country where SurfaceArea <2000;
select * from country where SurfaceArea >2000;
select * from country where SurfaceArea >=5000;
select * from country where SurfaceArea <=5000;

# logički operatori - booleovi operatori - https://introcs.cs.princeton.edu/java/71boolean/images/truth-table.png
# and, or i not
select * from country where SurfaceArea>=4000 and SurfaceArea<=10000;
select * from country where SurfaceArea>=4000 or SurfaceArea<=10000;
select * from country where not (
SurfaceArea=10000 or ((SurfaceArea>=10000 and SurfaceArea<=31000) or SurfaceArea=33000));

# in, between, like, is null i is not null
select * from country where SurfaceArea in(800,1200);
select * from country where SurfaceArea between 800 and 1500;


#sve drzave čije ime počinje slovom J
select * from country where Name like 'J%';


# VJEŽBANJE

# baza mjesta
# odaberite sva mjesta koja se nalaze na kontinentu North America
select * from country where Continent='North America';


# odaberite sva mjesta koja u sebi umaju niz znakova ana
select * from country where Name like '%ana%';

# odaberite sva mjesta koja ne završavaju s nizom znakova na
select * from country where Name not like '%na';

#broj redaka u tablici
select count(*) from country;

#kojem kontinentu pripada Croatia
select * from country where Name='Croatia';


#koliko ima drzava u Africi
select count(*) from country where continent='Africa';


#odaberi sva mjesta koja su u Africi i North America; logički operator !
select * from country where continent='Africa';
select * from country where continent='North America';
select * from country where continent in('Africa','North America');

#odaberi sva mjesta koja nisu u Africi i North America; logički operator !
select * from country where continent not in('Africa','North America');

#update naredba
update country set Name='Argentinaaaaaa' where Name like '%faso';
select * from country where Name='Argentinaaaaaa';


