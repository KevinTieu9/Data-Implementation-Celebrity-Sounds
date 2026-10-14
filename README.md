# Antique Celebrity Sounds Instruments

Oracle SQL database design and implementation project (CS 325, Fall 2020).

**Author:** Kevin Tieu

## Business Context

Antique Celebrity Sounds Instruments is a shop that:

- Sells and rents musical instruments (beginner through professional levels)
- Offers group and individual music lessons
- Provides instrument repair and service
- Hosts monthly music receptions featuring local musicians
- Accepts instrument donations from celebrities and fans

## Files

| File | Description |
|------|-------------|
| `325design.sql` | Schema design script |
| `325populate.sql` | Data population script |
| `325queries.sql` | Queries and reports |
| `ExcelData/` | Source CSV data |
| `*.pdf` | Design and business-rule documents |

## Running the Scripts

In Oracle SQL Developer or SQL*Plus:

```sql
@325design.sql
@325populate.sql
@325queries.sql
```

## Assignment Goals

1. Design a normalized schema for the shop.
2. Implement the schema in Oracle.
3. Populate with realistic data.
4. Write queries and reports that answer business questions about competency levels, payments, donations, repairs, and receptions.
