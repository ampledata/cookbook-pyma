
ruby_block 'json config' do
  block do
    f = File.new(node['pymultimonaprs']['config_path'], 'w')
    f.write(node['pymultimonaprs'].to_json)
    f.close
  end
  notifies :restart, 'supervisor_service[pymultimonaprs]'
end
