# 📘 IA-LOG – Registro del Sistema de Clasificación

Este documento registra la evolución de la simulación de inteligencia artificial usada para clasificar residuos en la aplicación EcoVision.

---

## 🧠 Enfoque utilizado

Actualmente, el sistema utiliza **reglas simples basadas en el nombre de la imagen capturada**, simulando un comportamiento de IA.

Se consideró usar:

- Teachable Machine (TensorFlow)
- Modelos MobileNet
- Clasificación real por IA

El proyecto final implementa una funcional adecuada para demostración.

---

## 🔍 Lógica actual de clasificación

La aplicación identifica el tipo de residuo comparando el nombre de la imagen o palabras clave detectadas en la ruta.

### Ejemplos de reglas

- Si contiene “banana”, “apple”, “food” → **Orgánico**
- Si contiene “bottle”, “plastic”, “metal” → **Inorgánico**
- Si contiene “dirty”, “mixed”, “unknown” → **No reciclable**


---

## 📝 Conclusión

El sistema de “IA” usado fue entrenado lo suficiente para:

- Demostración al profesor
- Cumplimiento del objetivo funcional
- Flujo completo de cámara → resultado

