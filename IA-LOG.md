# 🤖 IA-LOG – Registro de Interacción con la IA

Este documento contiene **5 prompts reales** basados en lo que trabajamos durante el desarrollo de EcoVision, incluyendo: lo que pregunte, lo que respondió la IA y lo que aprendí. Este formato cumple con los requisitos solicitados por el profesor y refleja el proceso de aprendizaje con cada interacción.

---

## 🧠 **1. Prompt 1 – Error con permisos Bluetooth en Android 12+**

**Prompt:**  
“¿Por qué Flutter no me deja usar Bluetooth y me marca error con los permisos de Android 12+?”

**Respuesta (extendida):**  
La IA explicó que a partir de Android 12, las políticas de permisos para Bluetooth cambiaron significativamente. Ahora, además del permiso clásico `BLUETOOTH`, es obligatorio agregar permisos nuevos como `BLUETOOTH_CONNECT` para conectarse a dispositivos Bluetooth y `BLUETOOTH_SCAN` para buscar dispositivos cercanos. También se mencionó que, si la app accede a la ubicación del usuario para ciertos dispositivos, se requiere permiso `ACCESS_FINE_LOCATION`. Todo esto debe configurarse en `AndroidManifest.xml` y solicitarse en tiempo de ejecución dentro de la app.

**Aprendizaje:**  
Aprendimos que los cambios en Android 12 afectan directamente la funcionalidad de Bluetooth en Flutter. Fue fundamental actualizar los permisos para garantizar que el módulo de comunicación funcione correctamente, y entendimos cómo manejar permisos modernos en Android para evitar errores en la app.

---

## 🧠 **2. Prompt 2 – Cómo tomar una foto en Flutter y pasarla a otra pantalla**

**Prompt:**  
“¿Cómo hago para tomar una foto con la cámara en Flutter y luego mostrarla en otra pantalla para analizarla?”

**Respuesta (extendida):**  
La IA recomendó utilizar el paquete `image_picker`, que permite abrir la cámara del dispositivo y capturar una imagen como un objeto de tipo `XFile`. Luego, esa imagen se puede convertir a un `File` y enviarla a otra pantalla mediante el constructor del widget. También sugirió cómo manejar la navegación entre pantallas y asegurarse de que la imagen se muestre correctamente al usuario mientras se mantiene la compatibilidad con distintas plataformas.

**Aprendizaje:**  
Comprendimos el flujo completo de cámara → archivo → nueva pantalla, asegurando que la app pueda capturar imágenes, pasarlas entre widgets y mostrarlas sin problemas. Esto nos permitió implementar la funcionalidad de análisis de residuos correctamente dentro de la aplicación.

---

## 🧠 **3. Prompt 3 – Cómo estructurar el clasificador simulado**

**Prompt:**  
“¿Cómo puedo crear un archivo en Flutter que reciba la foto y devuelva una clasificación simulada para orgánico, inorgánico o no reciclable?”

**Respuesta (extendida):**  
La IA sugirió crear un archivo llamado `classifier.dart` con una función que reciba la imagen y devuelva aleatoriamente una categoría válida. La estructura propuesta permite reemplazar fácilmente esta función simulada por un modelo de IA real más adelante, sin afectar la arquitectura general de la app. Se explicó cómo mantener la separación de responsabilidades y el flujo de datos para que la integración futura sea sencilla.

**Aprendizaje:**  
Esto nos permitió simular el comportamiento de la IA real mientras preparábamos el pipeline final. Pudimos probar la interfaz de usuario y el flujo de clasificación sin depender todavía de un modelo entrenado, asegurando que la app funcionara correctamente desde el inicio.

---

## 🧠 **4. Prompt 4 – Elección del modelo de IA (MobileNet vs Teachable Machine)**

**Prompt:**  
“¿Cuál es mejor para clasificar residuos: MobileNet o Teachable Machine?”

**Respuesta (extendida):**  
La IA analizó las características de ambos modelos. MobileNet es un modelo generalista eficiente, capaz de clasificar una gran variedad de objetos, pero puede ser menos preciso para un conjunto específico de residuos. Por otro lado, Teachable Machine permite entrenar un modelo personalizado usando nuestras propias imágenes de residuos, lo que incrementa la precisión en nuestro caso de uso. También se mencionó la facilidad de exportación e integración en Flutter.

**Aprendizaje:**  
Decidimos usar **Teachable Machine** porque permite entrenar el modelo con ejemplos reales de nuestros residuos, aumentando la precisión y adaptando el sistema a las necesidades específicas de EcoVision. Esto nos enseñó la importancia de seleccionar la herramienta adecuada según el contexto y los objetivos del proyecto.

---

## 🧠 **5. Prompt 5 – Cómo preparar dataset para entrenar IA**

**Prompt:**  
“¿Cuántas imágenes necesito para entrenar un modelo de residuos en Teachable Machine y cómo deben tomarse?”

**Respuesta (extendida):**  
La IA recomendó usar entre 30 y 50 imágenes por clase, asegurando buena iluminación, distintos ángulos y variedad de objetos dentro de cada categoría (orgánico, inorgánico y no reciclable). Además, sugirió evitar imágenes borrosas y uniformes, para que el modelo aprenda a reconocer correctamente los residuos en distintas condiciones del mundo real.

**Aprendizaje:**  
Esto nos permitió planear y organizar correctamente nuestro dataset, asegurando que el modelo entrenado tuviera buena precisión y pudiera clasificar residuos de forma confiable al integrarse en la app. Aprendimos la importancia de la calidad y diversidad de los datos para el desempeño de un modelo de IA.
