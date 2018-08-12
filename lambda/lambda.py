

def handler(event, context):

    if event.fun == 'getAll':
        return getAll(event)
 
    elif event.fun == 'getOne':
        return getOne(event)
    else:
        return getAll(event)

def getAll(event):
    println("getAll")
    return [{ 
        'id' : '1',
        'email': 'user1@mail.com'
    },{
        'id' : '2',
        'email': 'user2@mail.com'
    },{
        'id' : '3',
        'email': 'user3@mail.com'
    }]  
  

      
def getOne(event):
    println("getOne " + event.entityId)

    return {
        'id' : '1',
        'email': 'user1@mail.com'
    }


