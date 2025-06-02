
USE DATABASE DATAOPS_EVENT_PROD;
USE SCHEMA HACKATHON_DATASETS;
create or replace table IMPACTED_POPULATION_GROUPS as with pop as(
            select
                P0120027 + P0120003 AS "under 5",
                P0120028 + P0120004 AS "5 to 9",
                P0120029 + P0120005 AS "10 to 14",
                P0120030 + P0120006 AS "15 to 17",
                P0120031 + P0120007 AS "18 to 19",
                P0120032 + P0120008 AS "20",
                P0120033 + P0120009 AS "21",
                P0120034 + P0120010 AS "22 to 24",
                P0120035 + P0120011 AS "25 to 29",
                P0120036 + P0120012 AS "30 to 34",
                P0120037 + P0120013 AS "35 to 39",
                P0120038 + P0120014 AS "40 to 44",
                P0120039 + P0120015 AS "45 to 49",
                P0120040 + P0120016 AS "50 to 54",
                P0120041 + P0120017 AS "55 to 59",
                P0120042 + P0120018 AS "60 and 61",
                P0120043 + P0120019 AS "62 to 64",
                P0120044 + P0120020 AS "65 and 66",
                P0120045 + P0120021 AS "67 to 69",
                P0120046 + P0120022 AS "70 to 74",
                P0120047 + P0120023 AS "75 to 79",
                P0120048 + P0120024 AS "80 to 84",
                P0120049 + P0120025 AS "85 plus",
                geoid,
                geo,
                objectid
            from
                population_census_block
        ),
        u5 as (
            SELECT
                "under 5" as population,
                geoid,
                geo,
                1 as priority
            FROM
                pop
        ),
        "5t9" as (
            SELECT
                "5 to 9" as population,
                geoid,
                geo,
                0.9 as priority
            FROM
                pop
        ),
        "10t14" as (
            SELECT
                "10 to 14" as population,
                geoid,
                geo,
                0.8 as priority
            FROM
                pop
        ),
        "15t17" as (
            SELECT
                "15 to 17" as population,
                geoid,
                geo,
                0.7 as priority
            FROM
                pop
        ),
        "18t19" as (
            select
                "18 to 19" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "20t20" as (
            select
                "20" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "21t21" as (
            select
                "21" as population,
                geoid,
                geo,
                0.7 as priority
            FROM
                pop
        ),
        "22t24" as (
            select
                "22 to 24" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "25t29" as (
            select
                "25 to 29" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "30t34" as (
            select
                "30 to 34" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "35t39" as (
            select
                "35 to 39" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "40t44" as (
            select
                "40 to 44" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "45t49" as (
            select
                "45 to 49" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "50t54" as (
            select
                "50 to 54" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "55t59" as (
            select
                "55 to 59" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "60t61" as (
            select
                "60 and 61" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "62t64" as (
            select
                "62 to 64" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "65t66" as (
            select
                "65 and 66" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "67t69" as (
            select
                "67 to 69" as population,
                geoid,
                geo,
                0.6 as priority
            FROM
                pop
        ),
        "70t74" as (
            select
                "70 to 74" as population,
                geoid,
                geo,
                0.7 as priority
            FROM
                pop
        ),
        "75t79" as (
            select
                "75 to 79" as population,
                geoid,
                geo,
                0.8 as priority
            FROM
                pop
        ),
        "80t84" as (
            select
                "80 to 84" as population,
                geoid,
                geo,
                0.9 as priority
            FROM
                pop
        ),
        "85tplus" as (
            select
                "85 plus" as population,
                geoid,
                geo,
                0.9 as priority
            FROM
                pop
        ),
        priorities as (
            select
                *
            from
                u5
            union all
            select
                *
            from
                "5t9"
            union all
            select
                *
            from
                "10t14"
            union all
            select
                *
            from
                "15t17"
            union all
            select
                *
            from
                "18t19"
            union all
            select
                *
            from
                "20t20"
            union all
            select
                *
            from
                "21t21"
            union all
            select
                *
            from
                "22t24"
            union all
            select
                *
            from
                "25t29"
            union all
            select
                *
            from
                "30t34"
            union all
            select
                *
            from
                "35t39"
            union all
            select
                *
            from
                "40t44"
            union all
            select
                *
            from
                "45t49"
            union all
            select
                *
            from
                "50t54"
            union all
            select
                *
            from
                "55t59"
            union all
            select
                *
            from
                "60t61"
            union all
            select
                *
            from
                "62t64"
            union all
            select
                *
            from
                "65t66"
            union all
            select
                *
            from
                "67t69"
            union all
            select
                *
            from
                "70t74"
            union all
            select
                *
            from
                "75t79"
            union all
            select
                *
            from
                "80t84"
            union all
            select
                *
            from
                "85tplus"
        ),
        final as(
            select
                population,
                geoid,
                st_x(st_centroid(geo)) as geox,
                st_y(st_centroid(geo)) as geoy,
                geo,
                priority,
                hash(population, geoid, priority) group_id
            from
                priorities
        )
        select
            population,
            geoid,
            geox,
            geoy,
            priority,
            group_id
        from
            final
            join hurricane_tracks on st_intersects(final.geo, hurricane_tracks.geo);