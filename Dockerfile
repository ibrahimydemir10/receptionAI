# Temel bir Python imajını kullanarak başlıyoruz
FROM python:3.9

# Çalışma dizinini oluştur ve ayarla
WORKDIR /app

# Gereken dosyaları kopyala
COPY requirements.txt requirements.txt

# Gereksinimleri yükle
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyasını ve diğer gerekli dosyaları kopyala
COPY . .

# Flask uygulamasını dışarıya açmak için kullanılacak port
EXPOSE 5000

# Uygulamanın başlangıç komutu
CMD ["python3", "webapp.py","--host=0.0.0.0"]
