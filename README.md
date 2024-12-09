# Flask App Deployment with Apache on Local Linux Server

## Deployment Steps

### 1. Ensure Dependencies Are Installed
Make sure you have all necessary dependencies installed, including Flask, mod_wsgi, and any other Python libraries your app requires. You can install them using pip:
```bash
pip install Flask==2.3.2 mysql-connector-python==8.0.33 mod-wsgi==4.9.4
```
###2. Test Flask App Locally
Before deploying with Apache, ensure your Flask app works as expected when running locally:

```bash
python app.py
```
Visit http://localhost:5000 to verify everything works fine.

###3. Configure Apache for Flask
Your Apache configuration for mod_wsgi should be correct now based on the VirtualHost configuration you shared earlier. Here's a quick recap:
```bash
/etc/apache2/sites-available/leena-vachhani.conf:
<VirtualHost *:80>
    ServerAdmin webmaster@sc.iitb.ac.in
    ServerName www.sc.iitb.ac.in
    WSGIDaemonProcess leenavachhani user=www-data group=www-data threads=5
    WSGIScriptAlias /leena-vachhani /var/www/leena-vachhani-website/app.py

    <Directory /var/www/leena-vachhani-website>
        WSGIProcessGroup leenavachhani
        WSGIApplicationGroup %{GLOBAL}
        Require all granted
    </Directory>

    Alias /leena-vachhani/static /var/www/leena-vachhani-website/static

    <Directory /var/www/leena-vachhani-website/static>
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```
###4. Enable mod_wsgi and Site Configuration
Enable the necessary modules and site configuration:
```bash
sudo a2enmod wsgi
sudo a2ensite leena-vachhani.conf
sudo systemctl restart apache2
```
###5. Check Apache Logs
If you run into issues, you can check Apache's error logs to troubleshoot:
```bash
sudo tail -f /var/log/apache2/error.log
```

###6. Testing the Deployment
After restarting Apache, visit http://www.sc.iitb.ac.in/leena-vachhani to verify that your Flask app is running correctly. Ensure the static files (JS, CSS) are being served correctly and the database connection is working fine.

###7. Secure Your Server (Optional)
If your app will be publicly accessible, consider securing it with SSL using Let's Encrypt or another certificate authority to enable HTTPS.

Install certbot and run:
```bash
sudo apt install certbot python3-certbot-apache
sudo certbot --apache
```
###8. Backup & Monitor
Regularly backup your Flask app and database to avoid data loss.
Set up monitoring for your server to ensure uptime and performance.
Final Check
Database Connectivity: Ensure that your db_connect.py is correctly configured to connect to your MariaDB.
Static Files: Check that your static files (CSS, JavaScript) are correctly served from /static/.
Security: Make sure your app is secure, especially if it's publicly accessible.
You're now ready to go live with your Flask application! Best of luck with your deployment! Let me know if you need any further assistance.

