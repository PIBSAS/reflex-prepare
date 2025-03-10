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

# Crear el directorio 'proyecto' y entrar en él
PROYECTO_DIR="$HOME/proyecto"
echo "Creando directorio de proyecto en $PROYECTO_DIR..."
mkdir -p "$PROYECTO_DIR"
cd "$PROYECTO_DIR"

# Inicializar Reflex con plantilla en blanco
echo "Inicializando proyecto Reflex..."
reflex init --template blank

# Abrir proyecto.py con nano
echo "Abriendo proyecto.py con nano..."
nano "$PROYECTO_DIR/proyecto.py"

echo "Configuración completada. Para continuar trabajando, recuerda activar el entorno con:"
echo "source $VENV_DIR/bin/activate"
