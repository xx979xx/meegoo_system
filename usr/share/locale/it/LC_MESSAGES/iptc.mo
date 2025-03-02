��    #      4  /   L           	      "  !   C  ,   e     �  
   �  %   �     �     �     �       3   8  �  l     
  &   
  "   3
     V
     t
     �
  "   �
  ,   �
     �
     �
          !     )     .     2     7  I   =     �     �  �   �  $   8  �  ]  $   �  )     *   G  :   r      �     �  2   �          %  -   @  *   n  R   �    �     �  F     ,   J  )   w      �  &   �  ;   �  D   %     j     o  *   �     �  
   �     �     �     �  S   �     *  '   1  �   Y  $                                                                            !                         #   
             	          "                                 "%s" is not a known tag
 %s: Could not find dataset %d:%d %s: Could not find dataset %d:%d
 %s: Could not find dataset %d:%d, adding it
 %s: no changes to save
 %s: saved
 Can't open temporary file for writing Error opening %s
 Error parsing %s
 Error parsing headers of %s
 Error: Must specify a file
 Error: Must specify value for add/modify operation
 Examples:
  iptc image.jpg       # display the IPTC metadata contained in image.jpg
  iptc -m Caption -v "Foo" *.jpg
                       # set caption "Foo" in all jpegs of the curr. dir.
  iptc -a Keywords -v "vacation" *.jpg
  iptc -a 2:25 -v "vacation" *.jpg
                       # either command adds keyword "vacation" to all jpegs
  iptc -d Keywords:1 image.jpg
                       # removes keyword number 1 (the 2nd) from image.jpg
  iptc -d Keywords:all image.jpg
                       # removes all keywords from image.jpg

Operations:
  -a, --add=TAG        add new tag with identifier TAG
  -m, --modify=TAG     modify tag with identifier TAG (add if not present)
  -v, --value=VALUE    value for added/modified tag
  -d, --delete=TAG     delete tag with identifier TAG
  -p, --print=TAG      print value of tag with identifier TAG
      --add-version    add IPTC version number into the headers
      --add-encoding   add text encoding specification (UTF-8) into headers

Options:
  -q, --quiet          produce less verbose output
  -b, --backup         backup any modified files
      --no-sort        do not sort tags before saving

Informative output:
  -l, --list           list the names of all known tags (i.e. Caption, etc.)
  -L, --list-desc=TAG  print the name and description of TAG
      --help           print this help, then exit
      --version        print iptc program version number, then exit
 FILE Failed to create backup file, aborting Failed to generate IPTC bytestream Failed to generate PS3 header Failed to reopen file Failed to save image Must specify tag to add or modify
 Must specify value for add/modify operation
 Name No IPTC data found No information about tag
 OPTIONS Size Tag Type Usage Utility for viewing and modifying the contents of IPTC metadata in images Value Value must be an integer
 Warning: Strings encoded in UTF-8 have been added to the IPTC data, but
pre-existing data may have been encoded with a different character set.
 Written by David Moore <dcm@acm.org> Project-Id-Version: iptc
Report-Msgid-Bugs-To: dcm@acm.org
POT-Creation-Date: 2007-05-15 02:36-0400
PO-Revision-Date: 2009-06-17 18:51+0200
Last-Translator: Milo Casagrande <milo@ubuntu.com>
Language-Team: Italian <tp@lists.linux.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2009-06-07 12:32+0000
X-Generator: Launchpad (build Unknown)
 "%s" non è un'etichetta conosciuta
 %s: impossibile trovare il dataset %d: %d %s: impossibile trovare il dataset %d: %d
 %s: impossibile trovare il dataset %d: %d, viene aggiunto
 %s: nessuna modifica da salvare
 %s: salvato
 Impossibile aprire il file temporaneo in scrittura Errore nell'aprire %s
 Errore nell'analizzare %s
 Errore nell'analizzare le intestazioni di %s
 Errore: è necessario specificare un file
 Errore: è necessario specificare il valore per l'operazione di aggiunta/modifica
 Esempi:
  iptc immagine.jpg # Mostra i metadati IPTC contenuti in immagine.jpg
  iptc -m Caption -v "Foo" *.jpg
                       # Imposta l'intestazione a "Foo" in tutti i file jpeg della directory corrente
  iptc -a Keywords -v "vacanza" *.jpg
  iptc -a 2:25 -v "vacanza" *.jpg
                       # Entrambi i comandi aggiungono la parola chiave "vacanza" a tutti i file jpeg
  iptc -d Keywords:1 immagine.jpg
                       # Rimuove la parola chiave numero 1 (la 2a) da immagine.jpg
  iptc -d Keywords:all immagine.jpg
                       # Rimuove tutte le parole chiave da immagine.jpg

Operazioni:
  -a, --add=ETICHETTA Aggiunge una nuova ETICHETTA
  -m, --modify=ETICHETTA Modifica l'ETICHETTA (la aggiunge se assente)
  -v, --value=VALORE Valore per l'etichetta aggiunta/modificata
  -d, --delete=ETICHETTA Elimina l'ETICHETTA
  -p, --print=ETICHETTA Stampa il valore dell'ETICHETTA
      --add-version Aggiunge il numero di versione di IPTC nelle intestazioni
      --add-encoding Aggiunge la specifica sulla codifica del testo (UTF-8) nelle intestazioni

Opzioni:
  -q, --quiet Produce un output meno prolisso
  -b, --backup Salva una copia di sicurezza dei file modificati
      --no-sort Non ordina le etichette prima del salvataggio

Output informativo:
  -l, --list Elenca i nomi di tutte le etichette note (cioè Caption, ecc...)
  -L, --list-desc=ETICHETTA Stampa il nome e la descrizione di ETICHETTA
      --help Stampa questo aiuto ed esce
      --version Stampa il numero di versione del programma iptc ed esce
 FILE Creazione della copia di sicurezza non riuscita, interruzione in corso Generazione del bytestream IPTC non riuscita Generazione intestazione PS3 non riuscita Riapertura del file non riuscita Salvataggio dell'immagine non riuscito Occorre specificare l'etichetta da aggiungere o modificare
 Occorre specificare il valore per l'operazione di aggiunta/modifica
 Nome Nessun dato IPTC trovato Nessuna informazione riguardo l'etichetta
 OPZIONI Dimensione Etich. Tipo Uso Utilità per visualizzare e modificare i contenuti dei metadati IPTC nelle immagini Valore Il valore deve essere un numero intero
 Attenzione: le stringhe codificate in UTF-8 sono state aggiunte ai dati IPTC, ma
i dati preesistenti potrebbero essere stati codificati con un altro set di caratteri.
 Scritto da David Moore <dcm@acm.org> 