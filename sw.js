const CACHE_NAME = "iqra-portfolio-cache-v1";
const urlsToCache = [
  "./",
  "./index.html",
  "./manifest.json",
  "./icon.png"
];

// Install Service Worker
self.addEventListener("install", (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => {
      console.log("Opened cache");
      return cache.addAll(urlsToCache);
    })
  );
});

// Fetch from Cache or Network
self.addEventListener("fetch", (event) => {
  event.respondWith(
    caches.match(event.request).then((response) => {
      // Agar cache mein file hai toh wahan se load karega, warna internet (network) se
      return response || fetch(event.request);
    })
  );
});

// Update Service Worker aur purana cache delete karna
self.addEventListener("activate", (event) => {
  const cacheWhitelist = [CACHE_NAME];
  event.waitUntil(
    caches.keys().then((cacheNames) => {
      return Promise.all(
        cacheNames.map((cacheName) => {
          if (!cacheWhitelist.includes(cacheName)) {
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});
