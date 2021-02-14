# OpenPA


OpenPA e' un software scritto per la tenuta della rilevazione delle presenze specificatamente disegnato per la Pubblica Amministrazione. Openpa nasce 
come migrazione in ambiente web  del programma Windows Desktop denominato Winpres in uso presso diversi Enti già dalla prima versione scritta nel 2002. L'analisi del motore di calcolo e' stata realizzata all'epoca basandosi su esperienze pluriennali realizzate su Enti del comparto della Sanità e della Pubblica ammintrazione locale. Enti che usano o per i quali il prodotto e' destinato sono:Comuni, Unioni di Comuni, Enti del Comparto di Ricerca (Winpres e' usato dall'area della ricerca di Tor-vergata), Prefettura di Rieti, Porto di Civitavecchia), Enti universitari. 

Il dominio applicativo della rilevazione delle presenze e' piuttosto impegnativo sotto il profilo algoritmico, sia in ordine alle regole che fanno
parte e dei contratti nazionali sia della contrattazione decentrata richiedendo sotto l'aspetto squisitamente parametrico, elementi di configurazione
per i quali, volta per volta, si costruisce l'albero delle regole di calcolo.

OpenPa gestisce queste regole classificando la struttura su profili orari di accesso, causali, regole di indennità e consentendo, con parametri estremamente
intuitivi, la configurazione di alcuni aspetti anche piuttosto complessi. 

OpenPA usa file isam cobol con un dizionario dati che consente in modo estremamente dinamico di configurare le maschere e i layout. E' stata scelta
la libreria EASYUI https://www.jeasyui.com per la particolare versatilità. 
La componente html integra completamente la libreria di openpa che prevede i seguenti tag

<cobol>VARIABILE</cobol>  sostituisce il tag con l'equivalente valore cobol

oppure per widget piu' importanti

<cobol template=nometemplate.htm variabili="proprietà"...>VARIABILE</cobol> sostituisce il tag con la struttura in template 

e' altresi possibile includere sezioni di html con il tag

<cobol include=/template/pagina.htm></cobol>





