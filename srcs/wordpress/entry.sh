
cd /var/www/;
mkdir -p wordpress;
cd wordpress;

if ! $(wp core is-installed); then
    wp core download;
    
    while true; do
       if wp config create --dbname=wordpress --dbuser=newuser --dbpass=newuser --dbhost=mysql; then
            break;
        fi;

        sleep 5;
    done;

    #wp language core activate en_US
    wp core install --url=http://172.17.0.3:5050 --title=ft_services --admin_user=florianne --admin_password=12STRONGpassword --admin_email=info@example.com;
   

    wp user create author author@example.com --role=author ;
    wp user create contributor contributor@example.com --role=contributor;
    wp user create user1 user1@example.com;
fi