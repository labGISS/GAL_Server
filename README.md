# GAL Server
Server per la pubblicazione dei dati del progetto GAL. Vedi il [repository principale](https://github.com/labGISS/GAL).

## Installazione
I dati delle mappe (sia vettoriali che raster) sono pubblicati su un server [pygeoapi](https://pygeoapi.io/) tramite [OGC API - Features](https://ogcapi.ogc.org/features/) 
e [OGC API - Coverages](https://ogcapi.ogc.org/coverages/).

Per l'installazione del server eseguire i seguenti passaggi:

1. Clonare questo repository
   
    ``` 
    git clone https://github.com/labGISS/gal_server.git
    cd Gal-Server
    ```

2. Creare un virtual env e attivarlo

    ```
    python -m venv venv
    .\venv\Scripts\activate
    ```

3. Installare GDAL e rasterio

    ```
    pip install .\GDAL-3.4.2-cp310-cp310-win_amd64.whl
    pip install .\rasterio-1.2.10-cp310-cp310-win_amd64.whl
    ```

    NOTA: I file contentuti nel repository sono compatibili con Python 3.10. Per le altre versioni di Python scaricare i file wheel compatibili da qui: [GDAL](https://www.lfd.uci.edu/~gohlke/pythonlibs/#gdal) - [rasterio](https://www.lfd.uci.edu/~gohlke/pythonlibs/#rasterio).

4. Installare le restanti dipendenze

    ```
    pip install flask-cors 
    pip install -r requirements.txt
    ```

5. Avviare l'installazione
   
   ```
   python setup.py install
   ```

6. Estrarre il file `data.zip` direttamente nella root di questo repository, **senza creare ulteriori sottocartelle** (nella root deve esserci una sola cartella `data`, contenente i dataset).
   
7. Disattivare il virtual env

    ```
    deactivate
    ```

## Avvio
Per l'avvio eseguire con PowerShell (cmd non funziona), il file `start.ps1`.

```
.\start.ps1
```

Il server dovrebbe essere disponibile all'indirizzo [http://127.0.0.1:5000](http://127.0.0.1:5000).

## Accesso ai dati
L'accesso ai dati avviene mediante 4 endpoint REST.

| Risorsa             | Endpoint                                                           | Descrizione                                     |
|---------------------|--------------------------------------------------------------------|-------------------------------------------------|
| Feature collections | http://127.0.0.1:5000/collections                                  | Elenco dei dataset pubblicati dal server        |
| Feature collection  | http://127.0.0.1:5000/collections/{collectionId}                   | Metadati relativi a una collection              |
| Features            | http://127.0.0.1:5000/collections/{collectionId}/items             | Elenco delle features presenti nella collection |
| Feature             | http://127.0.0.1:5000/collections/{collectionId}/items/{featureId} | Proprietà di una feature                        |


## Altro
Please read the docs at [https://docs.pygeoapi.io](https://docs.pygeoapi.io) for more information.
