.\venv\Scripts\Activate.ps1
$env:PYGEOAPI_OPENAPI="openapi.yml"
$env:PYGEOAPI_CONFIG="config.yml"
pygeoapi openapi generate $env:PYGEOAPI_CONFIG > $env:PYGEOAPI_OPENAPI
pygeoapi serve
deactivate