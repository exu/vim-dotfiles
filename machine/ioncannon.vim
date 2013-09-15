" CRM connection to Work database
let g:dbext_default_type   = 'PGSQL'
let g:dbext_default_user   = 'jacek.wysocki'
let g:dbext_default_passwd = ''

let g:dbext_default_profile_CRMDEV = 'type=PGSQL:user=jacek.wysocki:passwd=:host=10.0.0.221:port=5432:dbname=crm'
let g:dbext_default_profile_CRMRC = 'type=PGSQL:user=jacek.wysocki:passwd=:host=10.0.0.222:port=5432:dbname=crm'
let g:dbext_default_profile_CRMQA = 'type=PGSQL:user=jacek.wysocki:passwd=:host=10.0.0.222:port=5432:dbname=crm_qa'

set tags=tags,/usr/share/php/symfony/tags
