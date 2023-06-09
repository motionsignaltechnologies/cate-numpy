-----------
DESCRIPTION
-----------

Python client for extracting data from CATE archives to numpy arrays

------------
INSTALLATION
------------

-----
USAGE
-----

See also :func:`catenp.Example`

.. function::

   from catenp import Authenticate,DatabaseInfo,GetData

   # Authenitcate to the server
   tk = Authenticate(serverAddress,serverPort,cateUserName,catePassword)
   
   # Optional get server info
   info = DatabaseInfo(serverAddress,serverPort,cateUserName)
   print("Info: ")
   for kk in info: 
     if kk !="segments": 
         print("  ",kk,":",info[kk])
     else:
         print("  segments:")
         for xx in info[kk]:
             for ll in xx: print("    ",ll,":",xx[ll]) 
             print("")
   
   
   # Exract some data    
   arr=GetData(serverAddress,serverPort,cateUserName,tstart,tstop,cstart,cstop)




------------------------
BUILDING AND DEVELOPMENT
------------------------

Building the docker image
-------------------------

..

   docker build -t motionsignaltechnologies/cate-numpy:latest .


Docker-Compose development environment
--------------------------------------

.. 

   $ docker-compose run -it dev

   