# Verification record

Reviewed 14 November 2026. The original academic mark does not evaluate these maintenance checks.

```sh
python tests/source_checks.py
php tests/security_contracts.php
python tests/http_security_tests.py -v
```

The existing maintenance workflow installs PHP 8.3 with gd, fileinfo and mysqli and runs lint, contracts and HTTP checks.

| Layer | Evidence | Limit |
| --- | --- | --- |
| Source checks | Header ordering, configured database access, login/session hooks and guard placement. | Static checks cannot prove request or SQL correctness. |
| PHP contracts | CSRF/session values, image inspection and storage constraints. | Requires a real PHP/gd runtime. |
| HTTP regressions | Real local PHP requests for cookie/forms, rejected methods/CSRF and uploads. | Database-free paths, not persisted user journeys. |
| Recovered schema | Four-table DDL transcribed from the report, with populated rows removed. | MySQL import/integration not executed during preparation. |

Python source checks passed (6 tests). PHP was unavailable on this preparation machine, so PHP lint, contract and HTTP checks were not rerun locally. No database-backed acceptance, full browser journey or accessibility result is claimed.

Priorities: disposable MySQL integration fixtures, feed pagination/query reduction, request throttling, concurrent likes/deletes and database failure recovery.
