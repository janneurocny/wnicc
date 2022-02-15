# Windows NIC Configurator
Dávkový súbor určený na vyresetovanie konfigurácie a opätovné zapnutie sieťového adaptéra. Vhodné pre počítače, kde prebieha výučba konfigurácie siete. Dávkový súbor zabezpečí zapnutie sieťového adaptéru a jeho nastavenie na získanie IP adresy cez DHCP.

Súbor je možné spustiť manuálne s užívateľom, ktorý má práva na úpravu sieťového adaptéra, prípadne ako správca, prípadne použiť automatické spustenie pomocou Plánovača úloh pri spustení počítača.

## Príprava

1. Vytvoriť priečinok *Scripts* na Lokálnom disku C
2. Nakopírovať *wnicc.bat* do *C:\Scripts*
3. Otvoriť Poznámkový blok
4. Stlačiť *CTRL + O*
5. Prejsť do *C:\Scripts*
6. Vpravo dole zmeniť *Textové dokumenty (*.txt)* na *Všetky súbory* a otvoriť *wnicc.bat*
7. Nastaviť premennú *nicDescription*  
`set nicDescription='*Popis sietovej karty*'` \
**TIP:** [Ako zistiť popis sieťovej karty](#popis-sietovej-karty)
8. Uložiť - CTRL + S

## Nastavenie automatického spúšťania

1. WIN + R  
2. Zadať *taskschd.msc*
3. OK
4. Pravý klik na *Task Scheduler Library*
5. Klik na *Create Task*
6. Vyplniť  
\
**General**  
Name: Network Configurator  
Vybrač *Run whether user is logged on or not*  
Zaškrtnúť *Run with highest privileges*  
\
**Trigers**  
Klik na *New...*  
Begin the task: At startup  
Klik na OK  
\
**Actions**  
Klik na *New...*  
Action: Start a program  
Pogram/script: C:\Scripts\wnicc.bat  
Klik na OK  
7. Potvrdiť kliknutím OK, pri výzve na zadanie hesla užívateľa s administrátorskými právami, zadať heslo a potvrdiť.

---

<a id="popis-sietovej-karty"></a>

## Popis sieťovej karty
Pre získanie popisu sieťovej karty postupovať podľa návodu.

1. WIN + R 
2. Zadať *cmd*
3. OK
4. Zadať príkaz `wmic nic get Name, Description`

## Ukážka
Ukážka vo videu po kliknutí na obrázok.  
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/Ql_xxCJ_elo/0.jpg)](https://www.youtube.com/watch?v=Ql_xxCJ_elo)
