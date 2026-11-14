# Local development runbook

This is coursework source with an empty-schema recovery, not an installer. Use synthetic local accounts only.

## Runtime and setup

Use PHP 8.3 with mysqli, fileinfo and gd, plus MySQL. The recovered DDL originated in MySQL 5.7; import on a current server must be validated locally.

1. Clone using the root README command.
2. Create an empty development database and dedicated local database user.
3. Import [database/schema.sql](../database/schema.sql) into that database. It contains no user records or passwords.
4. Configure the process environment. `.env.example` is reference documentation; it is not loaded automatically.

```powershell
$env:DB_HOST = '127.0.0.1'
$env:DB_NAME = 'friendzone_db'
$env:DB_USER = 'friendzone_app'
# Supply DB_PASSWORD privately with your local environment manager.
$env:UPLOAD_DIRECTORY = Join-Path (Split-Path (Get-Location)) 'friendzone-uploads'
$env:SESSION_COOKIE_SECURE = '0' # local HTTP only
php -S 127.0.0.1:8000 -t .
```

Open `http://127.0.0.1:8000/login.php` and register a synthetic account. Keep the PHP development server local. HTTPS deployments require secure cookies and a production server configuration.

## Media and missing assets

Uploads must be stored outside the document root and served by authenticated media.php. Legacy images/default-avatar/background assets referenced by the source are not supplied in this tree. Their absence is a presentation gap; do not restore historical user photographs to repair it.

## Manual acceptance still required

Use a disposable database and two synthetic accounts. Check duplicate email handling, unsuccessful login, logout, a text post, a small PNG, comments/likes and author deletion. Confirm another account cannot delete the author's post. Reject malformed uploads without leaving files. This is a proposed acceptance journey, not an executed result.

| Symptom | Inspect |
| --- | --- |
| Generic 503 | Database availability, selected database, user grants and environment. |
| Upload/media failure | gd/fileinfo and a writable private directory outside the web root. |
| Local login fails to persist | Local HTTP cookie setting; secure cookies belong on HTTPS. |
| Empty feed | Create synthetic posts; historical rows are not imported. |

Back up the database and private media together before changing schema. Reverting code does not restore deleted rows/media. No migration tool or tested restore drill is supplied.
