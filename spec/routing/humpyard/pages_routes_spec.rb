require 'spec_helper'

describe 'routes for page admin backend' do
  it { humpyard_pages_path.should == '/admin/pages' }
  it { { get: '/admin/pages'}.should route_to(controller: 'humpyard/pages', action: 'index') }
  
  it { new_humpyard_page_path.should == '/admin/pages/new' }
  it { { get: '/admin/pages/new'}.should route_to(controller: 'humpyard/pages', action: 'new') }
  it { { post: '/admin/pages'}.should route_to(controller: 'humpyard/pages', action: 'create') }
  
  it { edit_humpyard_page_path(42).should == '/admin/pages/42/edit' }
  it { { get: '/admin/pages/42/edit'}.should route_to(controller: 'humpyard/pages', action: 'edit', id: '42') }
  it { { put: '/admin/pages/42'}.should route_to(controller: 'humpyard/pages', action: 'update', id: '42') }
  
  it { { delete: '/admin/pages/42'}.should route_to(controller: 'humpyard/pages', action: 'destroy', id: '42') }
  
  it { move_humpyard_page_path(42).should == '/admin/pages/42/move' }
  it { { post: '/admin/pages/42/move'}.should route_to(controller: 'humpyard/pages', action: 'move', id: '42')}
  
  it { humpyard_sitemap_path.should == '/sitemap.xml' }
  it { { delete: '/sitemap.xml'}.should route_to(controller: 'humpyard/pages', action: 'sitemap') }
  
  it { humpyard_page_path(42).should == '/admin/pages/42' }
  it { { get: '/admin/pages/42'}.should route_to(controller: 'humpyard/pages', action: 'show', id: '42') }
  
  it { { get: '/'}.should route_to(controller: 'humpyard/pages', action: 'show', webpath: 'index') }
  it { { get: '/en/some_path/some_page.html'}.should route_to(controller: 'humpyard/pages', action: 'show', webpath: 'some_path/some_page', format: 'html', locale: 'en') }
end