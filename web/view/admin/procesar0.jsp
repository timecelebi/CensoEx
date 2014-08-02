<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Llenado Datos</title>
    </head>
    <body>
       <%
          

     String user="root"; //nombre root de la base de datos
     String clave="";//por default nada
     String ruta="jdbc:mysql://localhost:3306/dbaa";
//esto lo podemos hallar manual pero lo unico que cambia es /jsp es el nombre
//de la  base
    Connection conexion=null; // esto lo llenamos mas adelante
    Statement Sentencias = null;
    Connection conexion2=null; // esto lo llenamos mas adelante
    Statement Sentencias2 = null;
    Connection conexion3=null; // esto lo llenamos mas adelante
    Statement Sentencias3= null;
    Connection conexion4=null; // esto lo llenamos mas adelante
    Statement Sentencias4=null;
    Connection conexion5=null; // esto lo llenamos mas adelante
    Statement Sentencias5=null;
    Connection conexion6=null; // esto lo llenamos mas adelante
    Statement Sentencias6=null;
    Connection conexion7=null; // esto lo llenamos mas adelante
    Statement Sentencias7=null;
    Statement Sentencias8=null;
    Statement Sentencias9=null;
    Statement Sentencias10=null;
    Statement Sentencias11=null;
    Statement Sentencias12=null;
    Statement Sentencias13=null;
    Statement Sentencias14=null;
    Statement Sentencias15=null;
    Statement Sentencias16=null;
    Statement Sentencias17=null;
    Statement Sentencias18=null;
    Statement Sentencias19=null;
    Statement Sentencias20=null;
      Statement Sentencias21=null;
    Statement Sentencias22=null;
    Statement Sentencias23=null;
    Statement Sentencias24=null;
    Statement Sentencias25=null;
    Statement Sentencias26=null;
    Statement Sentencias27=null;
    Statement Sentencias28=null;
    Statement Sentencias29=null;
    Statement Sentencias30=null;
      Statement Sentencias31=null;
    Statement Sentencias32=null;
    Statement Sentencias33=null;
    Statement Sentencias34=null;
    Statement Sentencias35=null;
    Statement Sentencias36=null;
    Statement Sentencias37=null;
    Statement Sentencias38=null;
    Statement Sentencias39=null;
    Statement Sentencias40=null;
    Statement Sentencias41=null;
    Statement Sentencias42=null;
    Statement Sentencias43=null;
    Statement Sentencias44=null;
    Statement Sentencias45=null;
    Statement Sentencias46=null;
    Statement Sentencias47=null;
    Statement Sentencias48=null;
    Statement Sentencias49=null;
    Statement Sentencias50=null;
    Statement Sentencias51=null;
    ResultSet resultado2 = null;
    ResultSet resultado5 = null;
    ResultSet resultado7 = null;
    ResultSet tbresultado8 = null;
    ResultSet tbresultado9 = null;
    ResultSet tbresultado10 = null;
    ResultSet tbresultado11 = null;
    ResultSet tbresultado12 = null;
    ResultSet tbresultado13 = null;
    ResultSet tbresultado14 = null;
    ResultSet tbresultado15 = null;
    ResultSet tbresultado16 = null;
    ResultSet tbresultado17 = null;
    
     
        

              String nombres= request.getParameter("txtnombreentrev");
              String apellidopaterno= request.getParameter("txtapellidopaternoentrev");
              String apellidomaterno= request.getParameter("txtapellidomaternoentrev");
              String sector= request.getParameter("txtsector");
              String folio= request.getParameter("txtfolio");
              
              Class.forName("com.mysql.jdbc.Driver").newInstance();
        conexion =DriverManager.getConnection(ruta,user,clave);
        Sentencias = conexion.createStatement();
              
              Sentencias=conexion.createStatement();
              String consulta= "insert into entrevistado(idusuario,nombres,apellidopaterno,apellidomaterno,sector,foliocenso) values(null,'"+nombres+"','"+apellidopaterno+"','"+apellidomaterno+"','"+sector+"','"+folio+"')";
              
              int resultado = Sentencias.executeUpdate(consulta);
               if(resultado==1)
                   {
                     
                       
                        Sentencias2 = conexion.createStatement(); 
                     
              Sentencias2=conexion.createStatement();
                    String consulta3= "select idusuario from entrevistado where nombres='"+nombres+"' and apellidopaterno='"+apellidopaterno+"' and apellidomaterno='"+apellidomaterno+"' and sector='"+sector+"' ";
                     resultado2 = Sentencias2.executeQuery(consulta3);
                   while (resultado2.next())
                    {
                      String cod= (resultado2.getString(1));
                       
                        Sentencias3 = conexion.createStatement(); 
                     
                            String estadocivil=request.getParameter("txtestadocivilentre");
                            String escolaridad=request.getParameter("txtescolaridadentre");
                            String ocupacion=request.getParameter("txtocupacionentre");
                            String religion=request.getParameter("txtreligionentre"); 
                            Sentencias3=conexion.createStatement();
                        String consulta2="insert into datosentrevistado(idusuario,estadocivil, escolaridad, ocupacion, religion) values ('"+cod+"','"+estadocivil+"','"+escolaridad+"','"+ocupacion+"','"+religion+"')";
                        int resultado3 = Sentencias3.executeUpdate(consulta2);
                        if (resultado3==1)
                        {
                            String cod1= (resultado2.getString(1));
                      
                        Sentencias4 = conexion.createStatement(); 
                     
                            String calle=request.getParameter("txtcalle");
                            String numero=request.getParameter("txtnumero");
                            String entrecalles=request.getParameter("txtentre");
                            String colonia=request.getParameter("txtcolonia"); 
                            String delegacion=request.getParameter("txtdelegacion"); 
                            String telefono=request.getParameter("txttelefono"); 
                            Sentencias4=conexion.createStatement();
                        String consulta4="insert into direccion(idusuario, calle, numero, entrecalles, colonia, delegacion, telefono) values ('"+cod1+"','"+calle+"','"+numero+"','"+entrecalles+"','"+colonia+"','"+delegacion+"','"+telefono+"')";
                        int resultado4 = Sentencias4.executeUpdate(consulta4);
                            
                            if (resultado4==1)
                            {
                                
                                Sentencias5 = conexion.createStatement(); 
                     
              Sentencias5=conexion.createStatement();
                    String consulta5= "select idusuario from entrevistado where nombres='"+nombres+"' and apellidopaterno='"+apellidopaterno+"' and apellidomaterno='"+apellidomaterno+"' and sector='"+sector+"' ";
                     resultado5 = Sentencias5.executeQuery(consulta5);
                   while (resultado5.next())
                    {
                      String codd= (resultado5.getString(1));
 
 
                        
                        Sentencias6 = conexion.createStatement(); 
                     
                        
                        
                            String papellidopaterno=request.getParameter("txtfapellidopaterno");
                            String papellidomaterno=request.getParameter("txtfapellidomaterno");
                            String pnombres=request.getParameter("txtfnombres");
                            String pedad=request.getParameter("txtfedad"); 
                            String pparentesco=request.getParameter("txtfparentesco"); 
                            String pedocivil=request.getParameter("txtestadocivilentrev"); 
                            String psexo=request.getParameter("txtsexo"); 
                             
                            Sentencias6=conexion.createStatement();
                        String consulta6="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+papellidopaterno+"','"+papellidomaterno+"','"+pnombres+"','"+pedad+"','"+pparentesco+"','"+pedocivil+"','"+psexo+"')";
                        int resultado6 = Sentencias6.executeUpdate(consulta6);
                                
                                if (resultado6==1){
                                    
                                         
                                        Sentencias7 = conexion.createStatement(); 

                                        Sentencias7=conexion.createStatement();
                                    String consulta7= "select idfamiliar from familiares where fnombres='"+pnombres+"' and fapellidopaterno='"+papellidopaterno+"' and fapellidomaterno='"+papellidomaterno+"' and idusuario='"+codd+"' ";
                                     resultado7 = Sentencias7.executeQuery(consulta7);
                                   while (resultado7.next())
                                    {
                                      String codf= (resultado7.getString(1));
                                     String codda= (resultado2.getString(1));
                                   
                                    Sentencias8 = conexion.createStatement(); 

                                        String ptrabaja=request.getParameter("txttrabaja");
                                        String pocupacion=request.getParameter("txtocupacionentrev");
                                        String pingresomensual=request.getParameter("txtingreso");
                                        String preligion=request.getParameter("txtreligionentrev"); 
                                        String pescolaridad=request.getParameter("txtescolaridadentrev"); 
                                        String pnacimiento=request.getParameter("txtnacimiento"); 
                                        String partesanal=request.getParameter("txtartesania"); 
                                        String pcualartesanal=request.getParameter("txtartesaniacual"); 
                                        String pdialecto=request.getParameter("txtdialecto"); 
                                        String pcualdialecto=request.getParameter("txtdialectocual"); 
                                        String pnegocio=request.getParameter("txtnegocio");     
                                        String pcualnegocio=request.getParameter("txtnegociocual"); 
                                        
                                        Sentencias8=conexion.createStatement();
                                    String consulta8="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+codf+"','"+codd+"','"+ptrabaja+"','"+pocupacion+"','"+pingresomensual+"','"+preligion+"','"+pescolaridad+"','"+pnacimiento+"','"+partesanal+"','"+pcualartesanal+"','"+pdialecto+"','"+pcualdialecto+"','"+pnegocio+"','"+pcualnegocio+"')";
                                    int resultado8 = Sentencias8.executeUpdate(consulta8);

                                    
                                    
                                    if (resultado8==1){
                                        
                                         
                                        
                                        
                                   
                                    Sentencias39 = conexion.createStatement(); 

                                        String qdesayuno=request.getParameter("txtdesayuno");
                                        String qcomida=request.getParameter("txtcomida");
                                        String qcena=request.getParameter("txtcena");
                                        String qotra=request.getParameter("txtcotros"); 
                                        String qcualdesayuno=request.getParameter("txtdesayunocual"); 
                                        String qcualcomida=request.getParameter("txtcomidacual"); 
                                        String qcualcena=request.getParameter("txtcenacual"); 
                                        String qcualotra=request.getParameter("txtcotroscual"); 
                                        String qobservaciones=request.getParameter("txtobservacionescomida"); 
                                        
                                        Sentencias39=conexion.createStatement();
                                    String consulta39="insert into datosalimenticios (idusuario, desayuno, comida, cena, otracomida, infodesayuno, infocomida, infocena, infootra, infoobservaciones) values ('"+codd+"','"+qdesayuno+"','"+qcomida+"','"+qcena+"','"+qotra+"','"+qcualdesayuno+"','"+qcualcomida+"','"+qcualcena+"','"+qcualotra+"','"+qobservaciones+"')";
                                    int resultado39 = Sentencias39.executeUpdate(consulta39);

                                    
                                    
                                    if (resultado39==1){


				Sentencias40 = conexion.createStatement(); 

                                        String qtipovivienda=request.getParameter("txttipovivienda");
                                        String qtipotecho=request.getParameter("txtmaterialtecho");
                                        String qstatusvivienda=request.getParameter("txtsucasa");
                                        String qtipopiso=request.getParameter("txtmaterialpisos"); 
                                        String qtipopared=request.getParameter("txtmaterialparedes"); 
                                        String qtitulopropiedad=request.getParameter("txttitulopropiedad"); 

                                        
                                        Sentencias40=conexion.createStatement();
                                    String consulta40="insert into datosvivienda (idusuario, tipovivienda, tipotecho, statusvivienda, tipopiso, tipopared, titulopropiedad) values ('"+codd+"','"+qtipovivienda+"','"+qtipotecho+"','"+qstatusvivienda+"','"+qtipopiso+"','"+qtipopared+"','"+qtitulopropiedad+"')";
                                    int resultado40 = Sentencias40.executeUpdate(consulta40);

                                    
                                    
                                    if (resultado40==1){



			Sentencias41 = conexion.createStatement(); 

                                        String qtv=request.getParameter("txttv");
                                        String qestereo=request.getParameter("txtestereo");
                                        String qdvd=request.getParameter("txtdvd");
                                        String qestufa=request.getParameter("txtestufa"); 
                                        String qmicroondas=request.getParameter("txtmicroondas"); 
                                        String qlavadora=request.getParameter("txtlavadora"); 
		        String qrefrigerador=request.getParameter("txtrefrigerador"); 
		        String qcomputadora=request.getParameter("txtcomputadora"); 


                                        
                                        Sentencias41=conexion.createStatement();
                                    String consulta41="insert into aparatosvivienda (idusuario, tv, estereo, dvd, estufa, hornomicroondas, lavadora, refrigerador, computadora) values ('"+codd+"','"+qtv+"','"+qestereo+"','"+qdvd+"','"+qestufa+"','"+qmicroondas+"','"+qlavadora+"','"+qrefrigerador+"','"+qcomputadora+"')";
                                    int resultado41 = Sentencias41.executeUpdate(consulta41);

                                    
                                   	
                                    
                                    
                                    if (resultado41==1){



			Sentencias43 = conexion.createStatement(); 

                                        String qagua=request.getParameter("txtagua");
                                        String qtelfijo=request.getParameter("txttelefonofijo");
                                        String qcelular=request.getParameter("txtcelular");
                                        String qcuantoscel=request.getParameter("txtcelularcuantos"); 
                                        String qtvcable=request.getParameter("txttvcable"); 
                                        String qinternet=request.getParameter("txtinternet"); 
		        String qcombustible=request.getParameter("txtcombustible"); 
		        String qservhigienico=request.getParameter("txtserviciohigienico"); 
			String qservelectric=request.getParameter("txtservicioelectrico"); 
			String qalumbrado=request.getParameter("txtalumbrado"); 

                                        
                                        Sentencias43=conexion.createStatement();
                                    String consulta43="insert into serviciosvivienda (idusuario, agua, telefono, celular, numerocelulares, tvcable, internet, combustible, serviciohigienico,servicioelectrico, alumbrado) values ('"+codd+"','"+qagua+"','"+qtelfijo+"','"+qcelular+"','"+qcuantoscel+"','"+qtvcable+"','"+qinternet+"','"+qcombustible+"','"+qservhigienico+"','"+qservelectric+"','"+qalumbrado+"')";
                                    int resultado43 = Sentencias43.executeUpdate(consulta43);

                                    
                                    
                                    if (resultado43==1){


				Sentencias44 = conexion.createStatement(); 

                                        String qtipocalle=request.getParameter("txttipocalle");
                                        String qmatcalle=request.getParameter("txtmaterialcalle");
                                        

                                        
                                        Sentencias44=conexion.createStatement();
                                    String consulta44="insert into tipocalle (idusuario, estilocalle, materialcalle) values ('"+codd+"','"+qtipocalle+"','"+qmatcalle+"')";
                                    int resultado44= Sentencias44.executeUpdate(consulta44);

                                    
                                    
                                    if (resultado44==1){


			Sentencias45 = conexion.createStatement(); 

                                        String qcocina=request.getParameter("txtcocina");
                                        String qsala=request.getParameter("txtsala");
                                        String qcomedor=request.getParameter("txtcomedor");
                                        String qrecamaras=request.getParameter("txtrecamara"); 
                                        String qbanocompleto=request.getParameter("txtbanocompleto"); 
                                        String qcuartoredondo=request.getParameter("txtcuartoredondo"); 
		        String qmediobano=request.getParameter("txtmediobano"); 

                                        
                                        Sentencias45=conexion.createStatement();
                                    String consulta45="insert into electrodomesticosvivienda (idusuario, cocina, sala, comedor, recamaras, banocompleto, cuartoredondo, mediobano) values ('"+codd+"','"+qcocina+"','"+qsala+"','"+qcomedor+"','"+qrecamaras+"','"+qbanocompleto+"','"+qcuartoredondo+"','"+qmediobano+"')";
                                    int resultado45 = Sentencias45.executeUpdate(consulta45);

                                    
                                    
                                    if (resultado45==1){



			Sentencias46 = conexion.createStatement(); 

                                        String qimss=request.getParameter("txtimss");
                                        String qissste=request.getParameter("txtissste");
                                        String qcentrosalud=request.getParameter("txtcentrosalud");
                                        String qdispensario=request.getParameter("txtdispensario"); 
                                        String qotrosalud=request.getParameter("txtotromedico"); 
                                        String qvisitas=request.getParameter("txtmedicoveces"); 


                                        
                                        Sentencias46=conexion.createStatement();
                                    String consulta46="insert into serviciossaludfamilia (idusuario, imss, issste, centrodesalud, dispensario, otrosalud, visitasmedicas) values ('"+codd+"','"+qimss+"','"+qissste+"','"+qcentrosalud+"','"+qdispensario+"','"+qotrosalud+"','"+qvisitas+"')";
                                    int resultado46 = Sentencias46.executeUpdate(consulta46);

                                    
                                    
                                    if (resultado46==1){

			Sentencias47 = conexion.createStatement(); 

                                        String qrespi=request.getParameter("txtrespiratorias");
                                        String qgastro=request.getParameter("txtgastro");
                                        String qderma=request.getParameter("txtderma");
                                        String qobesidad=request.getParameter("txtobesidad"); 
                                        String qotrasenferm=request.getParameter("txtotrasenfermedades"); 


                                        
                                        Sentencias47=conexion.createStatement();
                                    String consulta47="insert into enfermedadesfamilia (idusuario, respiratorias, gastrointestinales, dermatologicas, obesidad, otrasenfermedades) values ('"+codd+"','"+qrespi+"','"+qgastro+"','"+qderma+"','"+qobesidad+"','"+qotrasenferm+"')";
                                    int resultado47 = Sentencias47.executeUpdate(consulta47);

                                    
                                    
                                    if (resultado47==1){




				Sentencias48 = conexion.createStatement(); 

                                        String qclaseenfermedad1=request.getParameter("txtclaseenferm1");
                                        String qnombreenfermedad1=request.getParameter("txtcualenfermedad1");
                                        String qnombrefamiliar1=request.getParameter("txtquienpadece1");
                                        String qclaseenfermedad2=request.getParameter("txtclaseenferm2");
                                        String qnombreenfermedad2=request.getParameter("txtcualenfermedad2");
                                        String qnombrefamiliar2=request.getParameter("txtquienpadece2");
			String qclaseenfermedad3=request.getParameter("txtclaseenferm3");
                                        String qnombreenfermedad3=request.getParameter("txtcualenfermedad3");
                                        String qnombrefamiliar3=request.getParameter("txtquienpadece3");
			String qclaseenfermedad4=request.getParameter("txtclaseenferm4");
                                        String qnombreenfermedad4=request.getParameter("txtcualenfermedad4");
                                        String qnombrefamiliar4=request.getParameter("txtquienpadece4");
			String qclaseenfermedad5=request.getParameter("txtclaseenferm5");
                                        String qnombreenfermedad5=request.getParameter("txtcualenfermedad5");
                                        String qnombrefamiliar5=request.getParameter("txtquienpadece5");


                                        
                                        Sentencias48=conexion.createStatement();
                                    String consulta48="insert into quienpadeceenfermedad (idusuario, claseenfermedad, nombreenfermedad, nombrefamiliar) values ('"+codd+"','"+qclaseenfermedad1+"','"+qnombreenfermedad1+"','"+qnombrefamiliar1+"'), ('"+codd+"','"+qclaseenfermedad2+"','"+qnombreenfermedad2+"','"+qnombrefamiliar2+"'), ('"+codd+"','"+qclaseenfermedad3+"','"+qnombreenfermedad3+"','"+qnombrefamiliar3+"'), ('"+codd+"','"+qclaseenfermedad4+"','"+qnombreenfermedad4+"','"+qnombrefamiliar4+"'), ('"+codd+"','"+qclaseenfermedad5+"','"+qnombreenfermedad5+"','"+qnombrefamiliar5+"')";
                                    int resultado48 = Sentencias48.executeUpdate(consulta48);

                                    
                                    
                                    if (resultado48==1){



                                            out.println("<script>alert('El registro se guardo correctamente')</script>");
                                            out.println("<meta http-equiv='refresh' content='0;url=index.jsp'");
                            
                                    }
                                }
                            }
                        }
                            }}}}
                                    }}}}}}}}} //*}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
                    
                   
%>
    </body>
</html>
