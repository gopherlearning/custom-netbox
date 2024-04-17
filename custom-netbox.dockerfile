FROM docker.io/netboxcommunity/netbox:${VERSION-v3.7-2.8.0}
ADD https://raw.githubusercontent.com/EdwardFuchs/netbox_translation/main/django.mo https://raw.githubusercontent.com/EdwardFuchs/netbox_translation/main/django.po /opt/netbox/netbox/translations/ru/LC_MESSAGES/
RUN chmod -R go+r /opt/netbox/netbox/translations/ru/LC_MESSAGES && sed -i "s/ENABLE_LOCALIZATION', False)/ENABLE_LOCALIZATION', True)/g" /opt/netbox/netbox/netbox/settings.py && \
    . /opt/netbox/venv/bin/activate && \
    pip install netbox-plugin-dns \
                netbox-qrcode \
                netbox-floorplan-plugin \
                netbox-topology-views \
                netbox-attachments \
                netbox-inventory \
                netbox-reorder-rack && \
    SECRET_KEY=$(python /opt/netbox/netbox/generate_secret_key.py) /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input && \
    mkdir /opt/netbox/netbox/static/netbox_topology_views/img -p && chmod -R go+rw /opt/netbox/netbox/static/netbox_topology_views/img