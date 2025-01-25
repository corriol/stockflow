# Stockflow

Projecte basat en Symfony 6.4.

## Components

La part de gestió del bloc està basada en el projecte de demostració de Symfony: <https://github.com/symfony/demo/releases/tag/v2.4.0>

S'inclou la integració de Bootstrap 5 i Font Awesome 6 mitjançant Symfony Asset Mapper.

Per veure les rutes generades cal executar: `php bin/console debug:router`.

## Desplegament

Una vegada descarregat el repositori caldrà:

1. Instal·lar les dependències: `composer install`.
2. Configurar l'entorn local en el fitxer `.env.local`.
3. Crear la base de dades: `php bin/console doctrine:database:create`.
4. Executar les migracions: `php bin/console doctrine:migrations:migrate`.
5. Carregar les dades d'exemple (usuaris, entrades, etiquetes): `php bin/console doctrine:fixtures:load`.
