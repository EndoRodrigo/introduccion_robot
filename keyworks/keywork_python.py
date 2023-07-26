import  os

def crear_directorio():
    os.mkdir("C:/Users/endor/OneDrive/Documentos/introduccion_robot/keyworks/acrpetnueva")

def crear_dsubcarpeta(nombre):
    os.mkdir("C:/Users/endor/OneDrive/Documentos/introduccion_robot/keyworks/acrpetnueva/"+nombre)

def concatenar_nombre(nom,ape,am):
    nombreC=f"Bienvenido al curso de automatizacion señor {nom} {ape} {am}"
    return  nombreC