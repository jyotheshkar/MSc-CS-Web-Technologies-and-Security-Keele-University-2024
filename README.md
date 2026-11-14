# Friendzone · MSc Computer Science

**Web Technologies and Security · Keele University · 2023/24 · 15 CATS · final module result: 83%**

A PHP/MySQL social web coursework project exploring authenticated posting, comments, likes, uploads and ownership checks. The original assignment includes relational design and a security reflection. Later maintenance adds focused session, CSRF and media protections; the academic result does not evaluate those changes.

[Assignment context](docs/ACADEMIC-CONTEXT.md) · [Redacted assignment](docs/original/assignment-redacted.md) · [Run locally](docs/RUNBOOK.md) · [Architecture](docs/ARCHITECTURE.md) · [Verification](docs/VERIFICATION.md)

## Engineering evidence

| Skill | Inspectable evidence |
| --- | --- |
| Relational modelling | Four-table users/posts/comments/likes model; [data-free schema](database/schema.sql) recovered from the original report. |
| Full-stack development | HTML/CSS/JavaScript views, PHP controllers and MySQLi prepared statements. |
| Authentication and authorisation | Password verification, session rotation, authenticated media and owner-qualified deletion. |
| Defensive input handling | CSRF controls, output escaping and bounded image inspection/re-encoding. |
| Critical evaluation | Original security reflection plus documented maintenance gaps. |

## Repository map

| Path | Purpose |
| --- | --- |
| `login.php`, `logincode.php`, `signupcode.php` | Registration and login. |
| `posts.php`, `myposts.php`, `submit_post.php`, `delete_post.php` | Feed, interactions and posting operations. |
| `security.php`, `uploads.php`, `media.php` | Shared request/session and private-media controls. |
| `database/schema.sql` | Empty development schema; no historical account data. |
| `tests/` | Source checks, PHP contracts and database-free HTTP regressions. |
| `docs/original/` | Official brief and reviewed assignment text. |

## Start here

```sh
git clone https://github.com/jyotheshkar/MSc-CS-Web-Technologies-and-Security-Keele-University-2024.git
cd MSc-CS-Web-Technologies-and-Security-Keele-University-2024
python tests/source_checks.py
```

Read the [runbook](docs/RUNBOOK.md) for PHP/MySQL configuration, private uploads and outstanding asset/setup limits. No hosted demonstration or production deployment is claimed.

## Academic and maintenance boundaries

Jyothesh Karnam is named on the individual 2024 report. The final **module** mark was checked against the owner's private transcript. Keele's [2023/24 programme specification](https://www.keele.ac.uk/media/keeleuniversity/sas/qa/pgtprogrammespecifications/pgtprogspecs2023-24/Programme-Specification-Computer-Science-Taught-Masters-2023-24.pdf) confirms the module title and credit value.

The `2024` suffix denotes the academic year. Maintenance on 11 and 14 November 2026 is separate, including AI-assisted documentation and schema recovery. [Provenance](docs/PROVENANCE.md) records hashes and redactions. Historical teaching-server access details are not deployment credentials for this edition.
