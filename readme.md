# 🛠️ Network Troubleshooting Docker Image

## 🚀 Descripción

Imagen Docker con herramientas esenciales para diagnóstico y troubleshooting de red en Kubernetes y contenedores.  
Incluye utilidades como:

- 🏓 `ping`
- 🌐 `curl`
- 🕵️‍♂️ `netcat`
- 🐾 `tcpdump`
- 🔎 `nslookup`
- 🛣️ `iproute2`
- 🧰 `net-tools`
- 📥 `wget`
- ...y más

Ideal para pruebas de conectividad, resolución de DNS, inspección de tráfico y debugging de red en entornos cloud y dev containers.

---

## ⚡ Uso rápido

```bash
docker run --rm -it <nombre-de-la-imagen> /bin/sh
```

---

## 📝 Ejemplos de comandos útiles

- **Probar conectividad:**
  ```sh
  ping <host>
  ```
- **Probar puertos:**
  ```sh
  nc -vz <host> <puerto>
  ```
- **Inspeccionar tráfico:**
  ```sh
  tcpdump -i eth0
  ```
- **Consultar DNS:**
  ```sh
  nslookup <dominio>
  ```

---

## 🏗️ Construcción de la imagen

```bash
docker build -t network-troubleshooting:latest .
```

---

## 📦 (Opcional) subir imagen a un repositorio

```bash
docker tag network-troubleshooting:latest url-repo/network-troubleshooting:latest
docker push url-repo/network-troubleshooting:latest
```

---

## 👤 Autor

Repositorio creado para facilitar el troubleshooting de red en entornos Kubernetes y Docker.
