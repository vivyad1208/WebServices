package jaxws.service;

public class PersonServiceImplProxy implements PersonServiceImpl {
  private String _endpoint = null;
  private jaxws.service.PersonServiceImpl _personServiceImpl = null;
  
  public PersonServiceImplProxy() {
    _initPersonServiceImplProxy();
  }
  
  public PersonServiceImplProxy(String endpoint) {
    _endpoint = endpoint;
    _initPersonServiceImplProxy();
  }
  
  private void _initPersonServiceImplProxy() {
    try {
      _personServiceImpl = (new jaxws.service.PersonServiceImplServiceLocator()).getPersonServiceImpl();
      if (_personServiceImpl != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)_personServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)_personServiceImpl)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (_personServiceImpl != null)
      ((javax.xml.rpc.Stub)_personServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public jaxws.service.PersonServiceImpl getPersonServiceImpl() {
    if (_personServiceImpl == null)
      _initPersonServiceImplProxy();
    return _personServiceImpl;
  }
  
  public boolean addPerson(jaxws.beans.Person p) throws java.rmi.RemoteException{
    if (_personServiceImpl == null)
      _initPersonServiceImplProxy();
    return _personServiceImpl.addPerson(p);
  }
  
  public jaxws.beans.Person getPerson(int id) throws java.rmi.RemoteException{
    if (_personServiceImpl == null)
      _initPersonServiceImplProxy();
    return _personServiceImpl.getPerson(id);
  }
  
  public boolean deletePerson(int id) throws java.rmi.RemoteException{
    if (_personServiceImpl == null)
      _initPersonServiceImplProxy();
    return _personServiceImpl.deletePerson(id);
  }
  
  public jaxws.beans.Person[] getAllPersons() throws java.rmi.RemoteException{
    if (_personServiceImpl == null)
      _initPersonServiceImplProxy();
    return _personServiceImpl.getAllPersons();
  }
  
  
}