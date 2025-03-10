#!/bin/bash

# Actualizar paquetes e instalar dependencias necesarias
echo "Actualizando paquetes e instalando dependencias..."
sudo apt update && sudo apt install -y unzip python3-venv

# Crear entorno virtual en la carpeta home del usuario
VENV_DIR="$HOME/venv_reflex"
echo "Creando entorno virtual en $VENV_DIR..."
python3 -m venv "$VENV_DIR"

# Activar el entorno virtual
echo "Activando entorno virtual..."
source "$VENV_DIR/bin/activate"

# Instalar Reflex
echo "Instalando Reflex..."
pip install --upgrade pip
pip install reflex

echo "Instalación completada. Para usar Reflex, ejecuta:"
echo "source $VENV_DIR/bin/activate"
