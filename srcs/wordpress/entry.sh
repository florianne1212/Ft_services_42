

if ! $(wp core is-installed); then
    cd /www/wordpress;
    wp core download;

    rm -rf wp-config.php;

    while true; do
        if wp config create --dbname=wordpress --dbuser=newuser --dbpass=newuser --dbhost=mysql; then
            break;
        fi;
        sleep 5
    done;

    wp core install --url=172.17.0.3: --title=ft_services --admin_user=florianne --admin_password=12STRONGpassword --admin_email=info@example.com || true;

    wp user create author author@example.com --role=author
    wp user create contributor contributor@example.com --role=contributor
    wp user create user1 user1@example.com
fi