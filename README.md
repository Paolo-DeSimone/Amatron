# Amatron
Progetto finale DOITA08



# GESTIONE REPO
Ogni membro di ogni gruppo, inclusi i "jolly" ossia le persone che vengono spostate a lavorare in un certo gruppo ma che in realtà appartengono ad un gruppo diverso, avrà un suo Branch (es: B-Desimone), sul quale farà i push ed i pull request autonomamente. 

I membri possono fare pull request dal loro branch PERSONALE solo verso il branch del PROPRIO GRUPPO (il Group Branch. es: GB-CLIENTI) di appartenza.

Ad accettare questi pull request saranno i responsabili di ogni gruppo/di ogni group branch.

Poi solo i responsabili di ogni gruppo potranno fare il pull request del main e Paolo De Simone dovrà approvarli.

ESEMPIO:

Adriano Ricciardi è un membro del gruppo Venditori. Adriano può diventare jolly nel momento in cui va a dare una mano al gruppo Clienti.

Il resposabile del gruppo Venditori è Francesco Esposito.

Ecco come si lavora: 

Adriano lavora su qualcosa che riguarda i venditori e fa il push sul SUO branch e poi crea il pull request, avvisando quindi Francesco Esposito una volta fatto.

Francesco Esposito (che avrà comunque anche lui un branch personale) controllerà la pull request di Adriano e farà il merge delle sue modifiche col branch DI GRUPPO.

Quando Francesco ha fatto ciò, fa una pull request del branch del suo gruppo verso il main ed avvisa Paolo De Simone.

Paolo De Simone controlla il pull request e fa il merge col main.

In poche parole: membro/jolly--->Responsabile di gruppo--->resposabile GIT ossia Paolo De Simone



# GESTIONE CONFLITTI

Tendenzialmente un conflitto nasce quando 2 branch diversi hanno modifiche nelle stessa linea di un certo file oppure quando un file è stato cancellato
in un branch ma editato nell'altro.
In questi due casi GIT lancia un conflitto perché non sa quale delle due versioni tenere. Quindi le regole per evitare un conflitto sono:

- Fare GIT pull prima di iniziare a lavorare la mattina.
  
- Suddividersi con chiarezza le task, così da sapere bene chi fa cosa e non lavorare in più persone sullo stesso file.
  
- Se è opportuno, vanno creati più file dello stesso tipo così da non modificare tutti quanti lo stesso. Esempio: creare più file .css .

Per risolvere un conflitto, basta seguire l'interfaccia di GitHub finché non si apre il loro editor online. 
Dentro l'editor appariranno dei simboli, che di seguito spiego:

- "<<<<<<< HEAD"...codice... "=======": tutto il codice che esiste tra questi due simboli è il codice che GitHub ha già salvato.

- "======="...codice...">>>>>>> NomeBranch": Il codice che c'è tra questi due simboli è quello che stiamo cercando di caricare

A questo punto, bisogna decidere quali modifiche tenere: si potrebbero tenere solo le vecchie, solo le nuove o fare un mix dei due file.
Il cosa fare, dipende da caso a caso ed ogni conflitto va analizzato singolarmente.



# COMANDI GIT

COMANDI GIT BASH LISTATI PER ORDINE D'USO, OCCHIO AGLI SPAZI:

1) Scegli la cartella il cui salvare la repository: cd Deskt...premere TAB per far completare al programma la parola

2) Clona la repo nella cartella scelta: git clone https://github.com/Paolo-DeSimone/Amatron.git

3)OGNI VOLTA che ci si mette a lavoro, quindi prima di modificare un file, fare quanto segue: 
- essere certi di essere dentro il main in locale digitando git checkout main. Poi fare git pull origin main.
- Ora spostarsi nel branch di gruppo con git checkout {nome del branch di gruppo} e fare git pull origin {nome del branch di gruppo}
- Infine spostarsi nel propri branch personale con git checkout {nome del branch personale} e fare git pull origin {nome del branch personale}

4)...Fai delle modifiche dentro Visual Studio…

5)Per controllare cosa hai cambiato usa git status

6)Per confermare le modifiche al codice usare il comando git add qualcosa.
  Il qualcosa può essere il nome del file oppure può essere --all per confermare tutti i cambiamenti

7)Per controllare se è tutto ok usare ancora git status

8)Per spostare le modifiche online bisogna prima fare git commit -m "Il tuo messaggio di commit" -m "Se serve, un descrizione del commit"

9)Una volta che un commit è stato creato, si può fare il push SEGUENDO LE REGOLE STABILITE SOPRA IN GESTIONE REPO.

10)Il comando è git push origin {branchName}

11)Per eliminare tutti i comandi che si vedono nella schermata di Git Bash, qualora uno le trovasse confusionarie, usare clear. Solo clear, non git clear.
