include_recipe 'python'

package 'python-pkg-resources'


python_virtualenv '/srv/pymultimonaprs'


python_pip 'https://github.com/ampledata/pymultimonaprs/tarball/rewrite' do
  virtualenv '/srv/pymultimonaprs'
  action :upgrade
  notifies :restart, 'supervisor_service[pymultimonaprs]'
end
