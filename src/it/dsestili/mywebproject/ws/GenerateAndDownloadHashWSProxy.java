package it.dsestili.mywebproject.ws;

public class GenerateAndDownloadHashWSProxy implements it.dsestili.mywebproject.ws.GenerateAndDownloadHashWS {
  private String _endpoint = null;
  private it.dsestili.mywebproject.ws.GenerateAndDownloadHashWS generateAndDownloadHashWS = null;
  
  public GenerateAndDownloadHashWSProxy() {
    _initGenerateAndDownloadHashWSProxy();
  }
  
  public GenerateAndDownloadHashWSProxy(String endpoint) {
    _endpoint = endpoint;
    _initGenerateAndDownloadHashWSProxy();
  }
  
  private void _initGenerateAndDownloadHashWSProxy() {
    try {
      generateAndDownloadHashWS = (new it.dsestili.mywebproject.ws.GenerateAndDownloadHashWSServiceLocator()).getGenerateAndDownloadHashWS();
      if (generateAndDownloadHashWS != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)generateAndDownloadHashWS)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)generateAndDownloadHashWS)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (generateAndDownloadHashWS != null)
      ((javax.xml.rpc.Stub)generateAndDownloadHashWS)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public it.dsestili.mywebproject.ws.GenerateAndDownloadHashWS getGenerateAndDownloadHashWS() {
    if (generateAndDownloadHashWS == null)
      _initGenerateAndDownloadHashWSProxy();
    return generateAndDownloadHashWS;
  }
  
  public it.dsestili.mywebproject.ws.Result generateAndDownloadHash(java.lang.String folder, java.lang.String algorithm, java.lang.String mode) throws java.rmi.RemoteException{
    if (generateAndDownloadHashWS == null)
      _initGenerateAndDownloadHashWSProxy();
    return generateAndDownloadHashWS.generateAndDownloadHash(folder, algorithm, mode);
  }
  
  
}