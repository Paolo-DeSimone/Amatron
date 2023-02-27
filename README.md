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

Adriano lavora su qualcosa che riguarda i venditori e fa il push col SUO branch e poi crea il pull request, avvisando quindi Francesco Esposito una volta fatto.

Francesco Esposito (che avrà anche lui un branch personale) controllerà il lavoro di Adriano e farà il merge delle sue modifiche col branch DI GRUPPO.

Quando Francesco ha fatto ciò, fa una pull request del branch del suo gruppo verso il main ed avvisa Paolo De Simone.

Paolo De Simone controlla il pull request e fa il merge col main.

In poche parole: membro/jolly--->Responsabile di gruppo--->resposabile GIT ossia Paolo De Simone

# COMANDI GIT

COMANDI GIT BASH LISTATI PER ORDINE D'USO, OCCHIO AGLI SPAZI:

Scegli la cartella il cui salvare la repository: cd Deskt...premere TAB per far completare al programma la parola

Clona la repo nella cartella scelta: git clone https://github.com/KevOdo/DOITA08.git

OGNI VOLTA che ci si mette a lavoro, quindi prima di modificare un file, dare questi comandi: git pull origin main e git pull origin {nome del branch personale}

...Fai delle modifiche dentro Visual Studio…

Per controllare cosa hai cambiato usa git status

Per confermare le modifiche al codice usare il comando git add qualcosa.
Il qualcosa può essere il nome del file oppure può essere --all per confermare tutti i cambiamenti

Per controllare se è tutto ok usare ancora git status

Per spostare le modifiche online bisogna prima fare git commit -m "Il tuo messaggio di commit" 

Una volta che un commit è stato creato, si può fare il push SEGUENDO LE REGOLE STABILITE SOPRA.

Il comando è git push origin {branchName}

Per eliminare tutti i comandi che si vedono nella schermata di Git Bash, qualora uno le trovasse confusionarie, usare clear. Solo clear, non git clear.
