# Suunnitteluperiaatteet

Suunnitteluperiaatteet toimivat ohjeena ratkaisujen kehittämisessä. 
Lean-päätöksenteossa kehittämiseen osalliset on valtuutettuja tekemään 
suunnitteluvalintoja näiden periaatteiden pohjalta itsenäisesti. Periaatteet 
on laadittu muuttumaan ja kasvamaan toiminnan myötä, joten Neuvottelukunnan 
(advisory board) odotetaan esittävän päivityksiä periaatteisiin toiminnan 
myötä. Nämä periaatteet toimivat kriteereinä kun esitetään ja 
hyväksytään lisäyksia ratkaisun toiminnallisuuksiiin uutta pääversiota 
koostettaessa (Major Version).

## Avoimuuden periaate
Asiat oletuksena jaetaan avoimesti ja luokitellaan vain erityisestä 
tapauskohtaisesti nimetystä syystä. Sovellamme luokittelussa julkl. § 24 
mukaisia luokitteluja.

## Modulaarinen API ensin -sovellus

Rakennamme sovellukset sovellusrajapinta edellä, sitten kehitämme 
käyttökokemuksen joka tästä seuraa. Tämä mahdollistaa synergisen 
monikanavaisen lähestymisen joka yhdistää käyttökokemuksen ja 
konekäyttötapaukset mahdollistaen uudelleenkäytettävyyden, minimoiden 
regressiot. Uudelleenkäytettävät sovellusmoduulit viestivät sovelluksen 
sisäisesti standardirajapintojen kautta niin palvelimella kuin 
päätelaitteessa. API ensin -lähestyminen mahdollistaa Lean-kehittämisen 
jossa voimme kehittää muuttaen yhtä asiaa kerrallaan jo sovellusversioiden 
välissä.

## Mobiili ensin -käyttökokemus

Luomme responsiivisia käyttöliittymiä jotka sallivat käyttäjät 
valitsemaan laitteensa. Tämä on tärkeää mobiililaitteiden 
internet-käytön yleistymisen vuoksi. Sovellusrajapintojen tulisi käyttää 
avoimesti standardoituja interaktiomalleja, kun mahdollista.

## Yksinkertaisuus ja minimalistinen käyttökokemus

Kun suunnitellaan toiminnallisuuksia, toteutetaan yksinkertaisin mahdollinen 
toiminnallisuus tai käyttöliittymä jolla käyttäjä saa 
ydintoiminnallisuuden hyödyt. Näin jätämme tilaa palvelun varsinaiselle 
sisällölle.

Valittaessa toiminnallisuuksia, keskitytään yksinkertaisimpaan 
ratkaisuvaihtoehtoon ratkaisun ydinhyötyjen maksimoimimiseksi. Päätökset 
sivukäyttötapausten toteuttamisesta tulee perustua mittaustuloksiin tai 
reaalimaailman käytön havainnointiin.

## Positiivisuus

Positiivinen palvelu palkitsee käyttäjänsä, innostaa kokeilemaan uutta ja 
kannustaa seuraavaan klikkaukseen turvallisesti. Käyttäjä palaa mielellään 
uudelleen palveluun, joka tervehtii ja kiittää. Positiivinen palvelu 
kannustaa käyttäjää kokeilemaan ja tutkimaan uusia asioita luomalla 
turvallisen ja johdonmukaisen käyttökokemuksen.

## Yhteisöllisyys

Ryhmätyökaluksi ja vaikuttamisen välineeksi tarkoitettu palvelu mahdollistaa 
käyttäjien välisen kommunikaation ja sisällön reaaliaikaisen jakamisen. 
Monipuolisesti vuorovaikutteinen palvelu tuottaa käyttäjälleen vaikuttamisen 
elämyksiä.

## Voimaannuttava

Palvelu toimii käyttäjän ja yhteisön omistamana työkaluna. Se mahdollistaa 
tiedon jakamisen ja viestinnän käyttäjien välillä joustavan ja 
interaktiivisen käyttöliittymän kautta. Käyttäjien voimaannuttaminen 
itsenäiseen aloitteellisuuteen ja yhteistöhön maksimoi loppukäyttäjän 
hyödyt palvelusta. Ohjeet ja toiminnallisuudet suunnitellaan osoittamaan 
selkeästi ja konkreettisesti mitkä on käyttäjän toimien hyödyt, 
seuraukset ja seuraamukset. Käyttäjälle näytetään riittävästi 
tilatietoa istunnostaan, ja toiminnallisuuden nimet selkeästi ilmaisevat, 
mitä hyötyä toiminnallisuudet tuottaa.

## Tasavertaisuus ja inklusiivisuus

Tunnistamme kaikkien ihmisten luontaiset oikeudet ihmisinä luomalla ja 
ylläpitämällä olosuhteita jotka vaalivat käyttäjien pääomaa, 
voimaantumista, tietoisuutta ja toimintakykyä niin yksilö- ryhmä-, kuin 
organisaatiotasollakin. Käyttäjät ovat yhtäläisen tervetulleita 
käyttämään ratkaisua, ja palvelu tarjoaa visuaalista apua ja tukea 
esteellisille käyttäjille. Osallistujat ovat tervetulleita riippumatta 
motiiveistaan tai kyvykkyyksistään.  

## Tekninen saavutettavuus

Sivuston ollessa rakenteeltaan looginen ja yhtenäistä semantiikkaa 
noudattava, sekä käyttäjien navigointi että jatkokehitys helpottuu. Vrt. 
W3C suositukset rakenteellisuudesta ja semantiikasta http://www.w3.org/QA/Tips/ 

## Avuliaisuus

Käyttäjän ollessa on kiinnostuneempi asiastaan kuin siihen liittyvistä 
lainmukaisista prosesseista, täytyy palvelun tarjota hänelle lisätietoa, 
esimerkkejä, apua. Täsmällinen ohjeistus vähentää epätietoisuutta sekä 
aikaansaa positiivista palautetta.

## Lean palvelumuotoilu

Päätettäessä kehitettäviä toiminnallisuuksia, perustamme päätöksenteon 
jatkuvaan palautteen ja käyttöstatistiikan takaisinsyöttöön käyttäjiltä 
sovelluskehittäjille. Sovellukset rakennetaan pilotoimalla, selkeällä 
fokuksella aitojen konkreettisten mitattavien ongelmien ratkaisuun. Arvioimme 
käyttökokemuksellisten ratkaisujen menestyksen testaamalla sitä varsinaisia 
tunnistettuja  tarpeita vasten seuraamalla käyttäjien toimintaa piloteissa, 
ennemmin kuin luottaen arvioihin, spekulaatioihin tai ammattitestaajiin. 
Alustaa tullaan kehittämään pienissä iteraatioissa, ja toiminnallisuudet 
jalostuvat käyttäjätyytyväisyyttä jatkuvasti kohentaen.

## Monikielisyys

Kaikki komponentit tulee merkitä kielikoodilla kieliversioinnin 
mahdollistamiseksi. Kaikki koodi ja kommentit tehdään kansainvälisellä 
englannilla.

## Wow-tasoinen käyttökokemus

Varmistamme sekä käytettävyyskatselmoinnein että palvelun käyttöä 
mittaamalla että julkaistu käyttökokemus on wow-tasoinen. Seuraamme palvelun 
käyttöä ja automaattitestaamme tunnetut käyttötapaukset niin että 
käyttökokemus on toimintavarma.
