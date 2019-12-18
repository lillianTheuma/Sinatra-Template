require('sinatra')
require('sinatra/reloader')
require('./lib/my_class')
require('./lib/my_subclass_1')
require('pry')
also_reload('lib/**/*.rb')


# CREATE****************************

post ('/my_classs') do
  name = params[:my_class_name]
  my_class = My_class.new({:name => name, :id => nil})
  my_class.save()
  redirect to('/my_classs')
end

post ('/my_classs/:id/my_subclass_1s') do
  @my_class = My_class.find(params[:id].to_i())
  my_subclass_1 = My_subclass_1.new({:name => name, :id => nil})
  my_subclass_1.save()
  erb(:my_class)
end

# READ****************************

get('/') do
  redirect to('/my_classs')
end

get('/my_classs') do
  @my_classs = My_class.sort
  @my_classs_sold = My_class.all_sold
  erb(:my_classs)
end

get('/my_classs/search') do
  user_search = params[:search]
  @search = My_class.search(user_search)
  erb(:search)
end

get ('/my_classs/new') do
  erb(:new_my_class)
end

get ('/my_classs/:id') do
  @my_class = My_class.find(params[:id].to_i())
  erb(:my_class)
end

get ('/my_classs/:id/edit') do
  @my_class = My_class.find(params[:id].to_i())
  erb(:edit_my_class)
end

get ('/my_classs/:id/buy') do
  @my_class = My_class.find(params[:id].to_i())
  @my_class.sold
  redirect to('/my_classs')
end

get ('/my_classs/:id/my_subclass_1s/:my_subclass_1_id') do
  @my_subclass_1 = My_subclass_1.find(params[:my_subclass_1_id].to_i())
  erb(:my_subclass_1)
end

  # UPDATE****************************

  patch ('/my_classs/:id') do
    @my_class = My_class.find(params[:id].to_i())
    @my_class.update(params[:name])
    redirect to('/my_class')
  end

  patch ('/my_classs/:id/my_subclass_1s/:my_subclass_1_id') do
    @my_class = My_class.find(params[:id].to_i())
    my_subclass_1 = My_subclass_1.find(params[:my_subclass_1_id].to_i())
    my_subclass_1.update(params[:name], @my_class.id, params[:artist_name], params[:year_recorded])
    erb(:my_class)
  end

  # DELETE****************************

  delete ('/my_classs/:id') do
    @my_class = My_class.find(params[:id].to_i())
    @my_class.delete()
    redirect to('/my_classs')
  end

  delete ('/my_classs/:id/my_subclass_1s/:my_subclass_1_id') do
    my_subclass_1 = My_subclass_1.find(params[:my_subclass_1_id].to_i())
    my_subclass_1.delete
    @my_class = My_class.find(params[:id].to_i())
    erb(:my_class)
  end
