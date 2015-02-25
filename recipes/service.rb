include_recipe 'supervisor'

supervisor_service 'pymultimonaprs' do
  command '/srv/pymultimonaprs/bin/pymultimonaprs --syslog -c /etc/pymultimonaprs.json'
end
