from selenium import webdriver

# Configurar las opciones del navegador Edge
edge_options = webdriver.EdgeOptions()
edge_options.add_argument("start-maximized")  # Maximizar la ventana del navegador

# Crear una instancia del controlador de Microsoft Edge
driver = webdriver.Edge(options=edge_options)

# Abrir una URL en la ventana de Microsoft Edge
driver.get("https://developer.microsoft.com/es-es/microsoft-edge/tools/webdriver/")

# Realizar acciones en la ventana abierta, como hacer clic en elementos, enviar formularios, etc.

# Cerrar la ventana de Microsoft Edge
#driver.quit()
