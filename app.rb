require('sinatra')
    require('sinatra/reloader')
    require('./lib/my_class')
    also_reload('lib/**/*.rb')
    get('/') do

    end
    get('/my_class') do

    end

    get('/my_class/new') do

    end

    get('/my_class/:id') do

    end
    post('/my_class') do

    end

    get('/my_class/:id/edit') do

    end

    patch('/my_class/:id') do

    end

    delete('/my_class/:id') do

    end

    get('/custom_route') do

    end
    