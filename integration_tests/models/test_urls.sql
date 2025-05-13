
with data as (

    select * from {{ ref('data_urls') }}

)

select
    {{ demo_private_pkg.get_url_parameter('url', 'utm_medium') }} as actual,
    medium as expected

from data

union all

select
    {{ demo_private_pkg.get_url_parameter('url', 'utm_source') }} as actual,
    source as expected

from data