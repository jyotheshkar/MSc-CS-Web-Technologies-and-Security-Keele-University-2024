# Academic context

| Item | Evidence |
| --- | --- |
| Programme | Keele MSc Computer Science, 2023/24. |
| Module | Web Technologies and Security, CSC-40046, 15 CATS. |
| Final module result | 83%, checked against the owner's final transcript issued 15 January 2025; full transcript private. |
| Assignment | Individual Friendzone web project, report naming Jyothesh Karnam. |
| Report submission date | 8 May 2024. The general brief states a 3 May deadline; no extension or explanation is inferred. |

The [official 2023/24 programme specification](https://www.keele.ac.uk/media/keeleuniversity/sas/qa/pgtprogrammespecifications/pgtprogspecs2023-24/Programme-Specification-Computer-Science-Taught-Masters-2023-24.pdf) confirms title and credits. The supplied [2024 assessment brief](original/CSC-40046-2024-Coursework.pdf) is the source for this assignment summary.

## Requirements and evidence

| Assessed requirement | Evidence retained | Boundary |
| --- | --- | --- |
| ER diagram, site map and SQL definitions | Report section descriptions, recovered empty schema and current diagrams. | Original embedded screenshots omitted; new diagrams are 2026 reconstructions. |
| Security reflection | Original technical prose in the redacted report. | Proposed controls do not prove every measure was implemented in 2024. |
| Login and registration | Password/session code. | No independent audit or rate-limit evidence. |
| Authenticated posting/comments/deletion | Controllers and focused request-guard tests. | Persisted application journeys need MySQL integration validation. |
| Mobile/desktop usability | Original views and CSS. | Accessibility conformance has not been certified. |

The brief assigns 40% to design and 60% to implementation, using PHP/MySQL with HTML, CSS and JavaScript. It also requested teaching-server account access for marking. Private access details and populated database rows are excluded here.

This project demonstrates connecting relational design to a multi-page application and identifying session, injection and upload risks. The academic mark is not a production security assurance. A release would need database integration, migrations, throttling, recovery and measured usability/accessibility work.
