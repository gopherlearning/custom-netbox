# Кастомизированный и локализованный инстанс netbox

## Чистая установка
```bash
git clone 
docker build -t lacalizated-netbox -f custom-netbox.dockerfile .

```

## Обновление существующего
```bash

docker build -t lacalizated-netbox -f custom-netbox.dockerfile .

```


## Используемые плагины
- [Русский перевод от коллег](https://github.com/EdwardFuchs/netbox_translation)
- [NetBox DNS](https://github.com/peteeckel/netbox-plugin-dns) - Плагин NetBox DNS позволяет NetBox управлять оперативными данными DNS, такими как серверы имен, зоны, записи и представления, а также данными регистрации для доменов. Он может автоматизировать задачи, такие как создание PTR-записей, генерацию серийных номеров зон, записи NS и SOA, а также проверку имен и значений ресурсных записей для обеспечения согласованности, актуальности и соответствия зонных данных соответствующим RFC
- [Netbox QR Code Plugin](https://github.com/netbox-community/netbox-qrcode) - Плагин Netbox для генерации QR-кодов для объектов: стойки, устройства, кабеля
- [NetBox Floorplan Plugin](https://github.com/netbox-community/netbox-floorplan-plugin) - Плагин NetBox, обеспечивающий возможность создания планов помещений для локаций и сайтов
- [Netbox Reorder Rack Plugin](https://github.com/minitriga/netbox-reorder-rack/) - Позволяет изменять порядок блоков стоек в NetBox с помощью интерфейса перетаскивания и выпадающего меню
- []() - 
- []() - 