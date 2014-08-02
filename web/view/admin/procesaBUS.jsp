
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
	   
	   
	   String user="momo"; //nombre root de la base de datos
     String clave="M0m0l52g";//por default nada
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
    Statement Sentencias52=null;
    Statement Sentencias53=null;
    Statement Sentencias54=null;
    Statement Sentencias55=null;
    Statement Sentencias56=null;
    Statement Sentencias57=null;
    Statement Sentencias58=null;
    Statement Sentencias59=null;
    Statement Sentencias60=null;
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
	
	
	
	//* Declaracion de Variables con Objetos

String nombres= request.getParameter("txtnombreentrev");
String apellidopaterno= request.getParameter("txtapellidopaternoentrev");
String apellidomaterno= request.getParameter("txtapellidomaternoentrev");
String sector= request.getParameter("txtsector");
String folio= request.getParameter("txtfolio");
String estadocivil=request.getParameter("txtestadocivilentre");
String escolaridad=request.getParameter("txtescolaridadentre");
String ocupacion=request.getParameter("txtocupacionentre");
String religion=request.getParameter("txtreligionentre"); 
String calle=request.getParameter("txtcalle");
String numero=request.getParameter("txtnumero");
String entrecalles=request.getParameter("txtentre");
String colonia=request.getParameter("txtcolonia"); 
String delegacion=request.getParameter("txtdelegacion"); 
String telefono=request.getParameter("txttelefono"); 
String papellidopaterno=request.getParameter("txtfapellidopaterno");
String papellidomaterno=request.getParameter("txtfapellidomaterno");
String pnombres=request.getParameter("txtfnombres");
String pedad=request.getParameter("txtfedad"); 
String pparentesco=request.getParameter("txtfparentesco"); 
String pedocivil=request.getParameter("txtestadocivilentrev"); 
String psexo=request.getParameter("txtsexo"); 
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
String mapellidopaterno=request.getParameter("mtxtfapellidopaterno");
String mapellidomaterno=request.getParameter("mtxtfapellidomaterno");
String mnombres=request.getParameter("mtxtfnombres");
String medad=request.getParameter("mtxtfedad"); 
String mparentesco=request.getParameter("mtxtfparentesco"); 
String medocivil=request.getParameter("mtxtestadocivilentrev"); 
String msexo=request.getParameter("mtxtsexo"); 
String mtrabaja=request.getParameter("mtxttrabaja");
String mocupacion=request.getParameter("mtxtocupacionentrev");
String mingresomensual=request.getParameter("mtxtingreso");
String mreligion=request.getParameter("mtxtreligionentrev"); 
String mescolaridad=request.getParameter("mtxtescolaridadentrev"); 
String mnacimiento=request.getParameter("mtxtnacimiento"); 
String martesanal=request.getParameter("mtxtartesania"); 
String mcualartesanal=request.getParameter("mtxtartesaniacual"); 
String mdialecto=request.getParameter("mtxtdialecto"); 
String mcualdialecto=request.getParameter("mtxtdialectocual"); 
String mnegocio=request.getParameter("mtxtnegocio");     
String mcualnegocio=request.getParameter("mtxtnegociocual"); 
String h1apellidopaterno=request.getParameter("h1txtfapellidopaterno");
String h1apellidomaterno=request.getParameter("h1txtfapellidomaterno");
String h1nombres=request.getParameter("h1txtfnombres");
String h1edad=request.getParameter("h1txtfedad"); 
String h1parentesco=request.getParameter("h1txtfparentesco"); 
String h1edocivil=request.getParameter("h1txtestadocivilentrev"); 
String h1sexo=request.getParameter("h1txtsexo"); 
String h1trabaja=request.getParameter("h1txttrabaja");
String h1ocupacion=request.getParameter("h1txtocupacionentrev");
String h1ingresomensual=request.getParameter("h1txtingreso");
String h1religion=request.getParameter("h1txtreligionentrev"); 
String h1escolaridad=request.getParameter("h1txtescolaridadentrev"); 
String h1nacimiento=request.getParameter("h1txtnacimiento"); 
String h1artesanal=request.getParameter("h1txtartesania"); 
String h1cualartesanal=request.getParameter("h1txtartesaniacual"); 
String h1dialecto=request.getParameter("h1txtdialecto"); 
String h1cualdialecto=request.getParameter("h1txtdialectocual"); 
String h1negocio=request.getParameter("h1txtnegocio");     
String h1cualnegocio=request.getParameter("h1txtnegociocual"); 
String h2apellidopaterno=request.getParameter("h2txtfapellidopaterno");
String h2apellidomaterno=request.getParameter("h2txtfapellidomaterno");
String h2nombres=request.getParameter("h2txtfnombres");
String h2edad=request.getParameter("h2txtfedad"); 
String h2parentesco=request.getParameter("h2txtfparentesco"); 
String h2edocivil=request.getParameter("h2txtestadocivilentrev"); 
String h2sexo=request.getParameter("h2txtsexo"); 
String h2trabaja=request.getParameter("h2txttrabaja");
String h2ocupacion=request.getParameter("h2txtocupacionentrev");
String h2ingresomensual=request.getParameter("h2txtingreso");
String h2religion=request.getParameter("h2txtreligionentrev"); 
String h2escolaridad=request.getParameter("h2txtescolaridadentrev"); 
String h2nacimiento=request.getParameter("h2txtnacimiento"); 
String h2artesanal=request.getParameter("h2txtartesania"); 
String h2cualartesanal=request.getParameter("h2txtartesaniacual"); 
String h2dialecto=request.getParameter("h2txtdialecto"); 
String h2cualdialecto=request.getParameter("h2txtdialectocual"); 
String h2negocio=request.getParameter("h2txtnegocio");     
String h2cualnegocio=request.getParameter("h2txtnegociocual");                      										
String h3apellidopaterno=request.getParameter("h3txtfapellidopaterno");
String h3apellidomaterno=request.getParameter("h3txtfapellidomaterno");
String h3nombres=request.getParameter("h3txtfnombres");
String h3edad=request.getParameter("h3txtfedad"); 
String h3parentesco=request.getParameter("h3txtfparentesco"); 
String h3edocivil=request.getParameter("h3txtestadocivilentrev"); 
String h3sexo=request.getParameter("h3txtsexo"); 
String h3trabaja=request.getParameter("h3txttrabaja");
String h3ocupacion=request.getParameter("h3txtocupacionentrev");
String h3ingresomensual=request.getParameter("h3txtingreso");
String h3religion=request.getParameter("h3txtreligionentrev"); 
String h3escolaridad=request.getParameter("h3txtescolaridadentrev"); 
String h3nacimiento=request.getParameter("h3txtnacimiento"); 
String h3artesanal=request.getParameter("h3txtartesania"); 
String h3cualartesanal=request.getParameter("h3txtartesaniacual"); 
String h3dialecto=request.getParameter("h3txtdialecto"); 
String h3cualdialecto=request.getParameter("h3txtdialectocual"); 
String h3negocio=request.getParameter("h3txtnegocio");     
String h3cualnegocio=request.getParameter("h3txtnegociocual");
String h4apellidopaterno=request.getParameter("h4txtfapellidopaterno");
String h4apellidomaterno=request.getParameter("h4txtfapellidomaterno");
String h4nombres=request.getParameter("h4txtfnombres");
String h4edad=request.getParameter("h4txtfedad"); 
String h4parentesco=request.getParameter("h4txtfparentesco"); 
String h4edocivil=request.getParameter("h4txtestadocivilentrev"); 
String h4sexo=request.getParameter("h4txtsexo"); 
String h4trabaja=request.getParameter("h4txttrabaja");
String h4ocupacion=request.getParameter("h4txtocupacionentrev");
String h4ingresomensual=request.getParameter("h4txtingreso");
String h4religion=request.getParameter("h4txtreligionentrev"); 
String h4escolaridad=request.getParameter("h4txtescolaridadentrev"); 
String h4nacimiento=request.getParameter("h4txtnacimiento"); 
String h4artesanal=request.getParameter("h4txtartesania"); 
String h4cualartesanal=request.getParameter("h4txtartesaniacual"); 
String h4dialecto=request.getParameter("h4txtdialecto"); 
String h4cualdialecto=request.getParameter("h4txtdialectocual"); 
String h4negocio=request.getParameter("h4txtnegocio");     
String h4cualnegocio=request.getParameter("h4txtnegociocual"); 					
String h5apellidopaterno=request.getParameter("h5txtfapellidopaterno");
String h5apellidomaterno=request.getParameter("h5txtfapellidomaterno");
String h5nombres=request.getParameter("h5txtfnombres");
String h5edad=request.getParameter("h5txtfedad"); 
String h5parentesco=request.getParameter("h5txtfparentesco"); 
String h5edocivil=request.getParameter("h5txtestadocivilentrev"); 
String h5sexo=request.getParameter("h5txtsexo"); 							
String h5trabaja=request.getParameter("h5txttrabaja");
String h5ocupacion=request.getParameter("h5txtocupacionentrev");
String h5ingresomensual=request.getParameter("h5txtingreso");
String h5religion=request.getParameter("h5txtreligionentrev"); 
String h5escolaridad=request.getParameter("h5txtescolaridadentrev"); 
String h5nacimiento=request.getParameter("h5txtnacimiento"); 
String h5artesanal=request.getParameter("h5txtartesania"); 
String h5cualartesanal=request.getParameter("h5txtartesaniacual"); 
String h5dialecto=request.getParameter("h5txtdialecto"); 
String h5cualdialecto=request.getParameter("h5txtdialectocual"); 
String h5negocio=request.getParameter("h5txtnegocio");     
String h5cualnegocio=request.getParameter("h5txtnegociocual"); 
String h6apellidopaterno=request.getParameter("h6txtfapellidopaterno");
String h6apellidomaterno=request.getParameter("h6txtfapellidomaterno");
String h6nombres=request.getParameter("h6txtfnombres");
String h6edad=request.getParameter("h6txtfedad"); 
String h6parentesco=request.getParameter("h6txtfparentesco"); 
String h6edocivil=request.getParameter("h6txtestadocivilentrev"); 
String h6sexo=request.getParameter("h6txtsexo"); 
String h6trabaja=request.getParameter("h6txttrabaja");
String h6ocupacion=request.getParameter("h6txtocupacionentrev");
String h6ingresomensual=request.getParameter("h6txtingreso");
String h6religion=request.getParameter("h6txtreligionentrev"); 
String h6escolaridad=request.getParameter("h6txtescolaridadentrev"); 
String h6nacimiento=request.getParameter("h6txtnacimiento"); 
String h6artesanal=request.getParameter("h6txtartesania"); 
String h6cualartesanal=request.getParameter("h6txtartesaniacual"); 
String h6dialecto=request.getParameter("h6txtdialecto"); 
String h6cualdialecto=request.getParameter("h6txtdialectocual"); 
String h6negocio=request.getParameter("h6txtnegocio");     
String h6cualnegocio=request.getParameter("h6txtnegociocual"); 
String o1apellidopaterno=request.getParameter("o1txtfapellidopaterno");
String o1apellidomaterno=request.getParameter("o1txtfapellidomaterno");
String o1nombres=request.getParameter("o1txtfnombres");
String o1edad=request.getParameter("o1txtfedad"); 
String o1parentesco=request.getParameter("o1txtfparentesco"); 
String o1edocivil=request.getParameter("o1txtestadocivilentrev"); 
String o1sexo=request.getParameter("o1txtsexo"); 
String o1trabaja=request.getParameter("o1txttrabaja");
String o1ocupacion=request.getParameter("o1txtocupacionentrev");
String o1ingresomensual=request.getParameter("o1txtingreso");
String o1religion=request.getParameter("o1txtreligionentrev"); 
String o1escolaridad=request.getParameter("o1txtescolaridadentrev"); 
String o1nacimiento=request.getParameter("o1txtnacimiento"); 
String o1artesanal=request.getParameter("o1txtartesania"); 
String o1cualartesanal=request.getParameter("o1txtartesaniacual"); 
String o1dialecto=request.getParameter("o1txtdialecto"); 
String o1cualdialecto=request.getParameter("o1txtdialectocual"); 
String o1negocio=request.getParameter("o1txtnegocio");     
String o1cualnegocio=request.getParameter("o1txtnegociocual"); 
String o2apellidopaterno=request.getParameter("o2txtfapellidopaterno");
String o2apellidomaterno=request.getParameter("o2txtfapellidomaterno");
String o2nombres=request.getParameter("o2txtfnombres");
String o2edad=request.getParameter("o2txtfedad"); 
String o2parentesco=request.getParameter("o2txtfparentesco"); 
String o2edocivil=request.getParameter("o2txtestadocivilentrev"); 
String o2sexo=request.getParameter("o2txtsexo"); 
String o2trabaja=request.getParameter("o2txttrabaja");
String o2ocupacion=request.getParameter("o2txtocupacionentrev");
String o2ingresomensual=request.getParameter("o2txtingreso");
String o2religion=request.getParameter("o2txtreligionentrev"); 
String o2escolaridad=request.getParameter("o2txtescolaridadentrev"); 
String o2nacimiento=request.getParameter("o2txtnacimiento"); 
String o2artesanal=request.getParameter("o2txtartesania"); 
String o2cualartesanal=request.getParameter("o2txtartesaniacual"); 
String o2dialecto=request.getParameter("o2txtdialecto"); 
String o2cualdialecto=request.getParameter("o2txtdialectocual"); 
String o2negocio=request.getParameter("o2txtnegocio");     
String o2cualnegocio=request.getParameter("o2txtnegociocual"); 
String o3apellidopaterno=request.getParameter("o3txtfapellidopaterno");
String o3apellidomaterno=request.getParameter("o3txtfapellidomaterno");
String o3nombres=request.getParameter("o3txtfnombres");
String o3edad=request.getParameter("o3txtfedad"); 
String o3parentesco=request.getParameter("o3txtfparentesco"); 
String o3edocivil=request.getParameter("o3txtestadocivilentrev"); 
String o3sexo=request.getParameter("o3txtsexo"); 
String o3trabaja=request.getParameter("o3txttrabaja");
String o3ocupacion=request.getParameter("o3txtocupacionentrev");
String o3ingresomensual=request.getParameter("o3txtingreso");
String o3religion=request.getParameter("o3txtreligionentrev"); 
String o3escolaridad=request.getParameter("o3txtescolaridadentrev"); 
String o3nacimiento=request.getParameter("o3txtnacimiento"); 
String o3artesanal=request.getParameter("o3txtartesania"); 
String o3cualartesanal=request.getParameter("o3txtartesaniacual"); 
String o3dialecto=request.getParameter("o3txtdialecto"); 
String o3cualdialecto=request.getParameter("o3txtdialectocual"); 
String o3negocio=request.getParameter("o3txtnegocio");     
String o3cualnegocio=request.getParameter("o3txtnegociocual"); 
String qdesayuno=request.getParameter("txtdesayuno");
String qcomida=request.getParameter("txtcomida");
String qcena=request.getParameter("txtcena");
String qotra=request.getParameter("txtcotros"); 
String qcualdesayuno=request.getParameter("txtdesayunocual"); 
String qcualcomida=request.getParameter("txtcomidacual"); 
String qcualcena=request.getParameter("txtcenacual"); 
String qcualotra=request.getParameter("txtcotroscual"); 
String qobservaciones=request.getParameter("txtobservacionescomida"); 							
String qtipovivienda=request.getParameter("txttipovivienda");
String qtipotecho=request.getParameter("txtmaterialtecho");
String qstatusvivienda=request.getParameter("txtsucasa");
String qtipopiso=request.getParameter("txtmaterialpisos"); 
String qtipopared=request.getParameter("txtmaterialparedes"); 
String qtitulopropiedad=request.getParameter("txttitulopropiedad"); 
String qtv=request.getParameter("txttv");
String qestereo=request.getParameter("txtestereo");
String qdvd=request.getParameter("txtdvd");
String qestufa=request.getParameter("txtestufa"); 
String qmicroondas=request.getParameter("txtmicroondas"); 
String qlavadora=request.getParameter("txtlavadora"); 
String qrefrigerador=request.getParameter("txtrefrigerador"); 
String qcomputadora=request.getParameter("txtcomputadora"); 
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
String qtipocalle=request.getParameter("txttipocalle");
String qmatcalle=request.getParameter("txtmaterialcalle");
String qcocina=request.getParameter("txtcocina");
String qsala=request.getParameter("txtsala");
String qcomedor=request.getParameter("txtcomedor");
String qrecamaras=request.getParameter("txtrecamara"); 
String qbanocompleto=request.getParameter("txtbanocompleto"); 
String qcuartoredondo=request.getParameter("txtcuartoredondo"); 
String qmediobano=request.getParameter("txtmediobano"); 
String qimss=request.getParameter("txtimss");
String qissste=request.getParameter("txtissste");
String qcentrosalud=request.getParameter("txtcentrosalud");
String qdispensario=request.getParameter("txtdispensario"); 
String qotrosalud=request.getParameter("txtotromedico"); 
String qvisitas=request.getParameter("txtmedicoveces"); 
String qrespi=request.getParameter("txtrespiratorias");
String qgastro=request.getParameter("txtgastro");
String qderma=request.getParameter("txtderma");
String qobesidad=request.getParameter("txtobesidad"); 
String qotrasenferm=request.getParameter("txtotrasenfermedades"); 
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
String qtipo1=request.getParameter("txtenfermedadpaciente1");
String qnombrepadece1=request.getParameter("txtquienpadecepaciente1");
String qobservaciones1=request.getParameter("txtobservacionespaciente1");
String qtipo2=request.getParameter("txtenfermedadpaciente2");
String qnombrepadece2=request.getParameter("txtquienpadecepaciente2");
String qobservaciones2=request.getParameter("txtobservacionespaciente2");
String qtipo3=request.getParameter("txtenfermedadpaciente3");
String qnombrepadece3=request.getParameter("txtquienpadecepaciente3");
String qobservaciones3=request.getParameter("txtobservacionespaciente3");
String qtipo4=request.getParameter("txtenfermedadpaciente4");
String qnombrepadece4=request.getParameter("txtquienpadecepaciente4");
String qobservaciones4=request.getParameter("txtobservacionespaciente4");
String qtipo5=request.getParameter("txtenfermedadpaciente5");
String qnombrepadece5=request.getParameter("txtquienpadecepaciente5");
String qobservaciones5=request.getParameter("txtobservacionespaciente5");
String qpsocial=request.getParameter("txtproblemasocial");
String qpurbano=request.getParameter("txtproblemaurbano");
String qpfamiliar=request.getParameter("txtproblemafamiliar");
String qobentrev=request.getParameter("txtobservacionesentrev");
String qfecha=request.getParameter("txtfecha");
String qaplicador=request.getParameter("txtaplicador");
	
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
                                        Sentencias3=conexion.createStatement();
											String consulta2="insert into datosentrevistado(idusuario,estadocivil, escolaridad, ocupacion, religion) values ('"+cod+"','"+estadocivil+"','"+escolaridad+"','"+ocupacion+"','"+religion+"')";
											int resultado3 = Sentencias3.executeUpdate(consulta2);
												if (resultado3==1)
												{
													String cod1= (resultado2.getString(1));
											  
														Sentencias4 = conexion.createStatement(); 
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
																									 
                                   
																										Sentencias8 = conexion.createStatement(); 
																										Sentencias8=conexion.createStatement();
																										String consulta8="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+codf+"','"+codd+"','"+ptrabaja+"','"+pocupacion+"','"+pingresomensual+"','"+preligion+"','"+pescolaridad+"','"+pnacimiento+"','"+partesanal+"','"+pcualartesanal+"','"+pdialecto+"','"+pcualdialecto+"','"+pnegocio+"','"+pcualnegocio+"')";
																										int resultado8 = Sentencias8.executeUpdate(consulta8);
																								if (resultado8==1){
    
																									Sentencias39 = conexion.createStatement(); 

																									Sentencias39=conexion.createStatement();
																						String consulta39="insert into datosalimenticios (idusuario, desayuno, comida, cena, otracomida, infodesayuno, infocomida, infocena, infootra, infoobservaciones) values ('"+codd+"','"+qdesayuno+"','"+qcomida+"','"+qcena+"','"+qotra+"','"+qcualdesayuno+"','"+qcualcomida+"','"+qcualcena+"','"+qcualotra+"','"+qobservaciones+"')";
																						int resultado39 = Sentencias39.executeUpdate(consulta39);

																				if (resultado39==1){
																					Sentencias40 = conexion.createStatement(); 
																					Sentencias40=conexion.createStatement();
																					String consulta40="insert into datosvivienda (idusuario, tipovivienda, tipotecho, statusvivienda, tipopiso, tipopared, titulopropiedad) values ('"+codd+"','"+qtipovivienda+"','"+qtipotecho+"','"+qstatusvivienda+"','"+qtipopiso+"','"+qtipopared+"','"+qtitulopropiedad+"')";
																					int resultado40 = Sentencias40.executeUpdate(consulta40);
																		if (resultado40==1){
																		Sentencias41 = conexion.createStatement(); 
		
																		Sentencias41=conexion.createStatement();
																		String consulta41="insert into aparatosvivienda (idusuario, tv, estereo, dvd, estufa, hornomicroondas, lavadora, refrigerador, computadora) values ('"+codd+"','"+qtv+"','"+qestereo+"','"+qdvd+"','"+qestufa+"','"+qmicroondas+"','"+qlavadora+"','"+qrefrigerador+"','"+qcomputadora+"')";
																		int resultado41 = Sentencias41.executeUpdate(consulta41);
																	if (resultado41==1){
																Sentencias42 = conexion.createStatement(); 

																Sentencias42=conexion.createStatement();
																String consulta42="insert into serviciosvivienda (idusuario, agua, telefono, celular, numerocelulares, tvcable, internet, combustible, serviciohigienico,servicioelectrico, alumbrado) values ('"+codd+"','"+qagua+"','"+qtelfijo+"','"+qcelular+"','"+qcuantoscel+"','"+qtvcable+"','"+qinternet+"','"+qcombustible+"','"+qservhigienico+"','"+qservelectric+"','"+qalumbrado+"')";
																int resultado42 = Sentencias42.executeUpdate(consulta42);

															if (resultado42==1){
													Sentencias44 = conexion.createStatement(); 
	
													Sentencias44=conexion.createStatement();
													String consulta44="insert into tipocalle (idusuario, estilocalle, materialcalle) values ('"+codd+"','"+qtipocalle+"','"+qmatcalle+"')";
													int resultado44= Sentencias44.executeUpdate(consulta44);
												if (resultado44==1){
												Sentencias45 = conexion.createStatement(); 

												Sentencias45=conexion.createStatement();
												String consulta45="insert into electrodomesticosvivienda (idusuario, cocina, sala, comedor, recamaras, banocompleto, cuartoredondo, mediobano) values ('"+codd+"','"+qcocina+"','"+qsala+"','"+qcomedor+"','"+qrecamaras+"','"+qbanocompleto+"','"+qcuartoredondo+"','"+qmediobano+"')";
												int resultado45 = Sentencias45.executeUpdate(consulta45);
											if (resultado45==1){
										Sentencias46 = conexion.createStatement(); 

                                        Sentencias46=conexion.createStatement();
										String consulta46="insert into serviciossaludfamilia (idusuario, imss, issste, centrodesalud, dispensario, otrosalud, visitasmedicas) values ('"+codd+"','"+qimss+"','"+qissste+"','"+qcentrosalud+"','"+qdispensario+"','"+qotrosalud+"','"+qvisitas+"')";
										int resultado46 = Sentencias46.executeUpdate(consulta46);

                                    if (resultado46==1){
									Sentencias47 = conexion.createStatement(); 
									Sentencias47=conexion.createStatement();
                                    String consulta47="insert into enfermedadesfamilia (idusuario, respiratorias, gastrointestinales, dermatologicas, obesidad, otrasenfermedades) values ('"+codd+"','"+qrespi+"','"+qgastro+"','"+qderma+"','"+qobesidad+"','"+qotrasenferm+"')";
                                    int resultado47 = Sentencias47.executeUpdate(consulta47);

                                    
                                    
                                    
                                    
                            if (resultado47==1){
						Sentencias48 = conexion.createStatement(); 
                                                        Sentencias48=conexion.createStatement();
							String consulta48="insert into quienpadeceenfermedad (idusuario, claseenfermedad, nombreenfermedad, nombrefami) values ('"+codd+"','"+qclaseenfermedad1+"','"+qnombreenfermedad1+"','"+qnombrefamiliar1+"')";
                            int resultado48 = Sentencias48.executeUpdate(consulta48);
                    if (resultado48==1){
                        
                        Sentencias49 = conexion.createStatement(); 
                    Sentencias49=conexion.createStatement();
                    String consulta49="insert into enfermedadcronica (idusuario, tipo, nombrefam, observaciones) values ('"+codd+"','"+qtipo1+"','"+qnombrepadece1+"','"+qobservaciones1+"')";
                    int resultado49 = Sentencias49.executeUpdate(consulta49);
            if (resultado49==1){
                Sentencias50 = conexion.createStatement(); 
            Sentencias50=conexion.createStatement();
            String consulta50="insert into otrosdatos (idusuario, tipoproblemasocial, tipoproblemaurbano, tipoproblemafamiliar, observacionesentrevistador) values ('"+codd+"','"+qpsocial+"','"+qpurbano+"','"+qpfamiliar+"','"+qobentrev+"')";
            int resultado50 = Sentencias50.executeUpdate(consulta50);
                        if (resultado50==1){
    Sentencias51 = conexion.createStatement(); 
    Sentencias51=conexion.createStatement();
    String consulta51="insert into aplicador (idusuario, fechaaplic, nombreaplicador) values ('"+codd+"','"+qfecha+"','"+qaplicador+"')";
    int resultado51 = Sentencias51.executeUpdate(consulta51);
if (resultado51==1){
    
    Sentencias52 = conexion.createStatement(); 
                                                        Sentencias52=conexion.createStatement();
							String consulta52="insert into quienpadeceenfermedad (idusuario, claseenfermedad, nombreenfermedad, nombrefami) values ('"+codd+"','"+qclaseenfermedad2+"','"+qnombreenfermedad2+"','"+qnombrefamiliar2+"')";
                            int resultado52 = Sentencias52.executeUpdate(consulta52);
                    if (resultado52==1){
                        
                        Sentencias53 = conexion.createStatement(); 
                    Sentencias53=conexion.createStatement();
                    String consulta53="insert into enfermedadcronica (idusuario, tipo, nombrefam, observaciones) values ('"+codd+"','"+qtipo2+"','"+qnombrepadece2+"','"+qobservaciones2+"')";
                    int resultado53 = Sentencias53.executeUpdate(consulta53);
            if (resultado53==1){
			
			Sentencias54 = conexion.createStatement(); 
                                                        Sentencias54=conexion.createStatement();
							String consulta54="insert into quienpadeceenfermedad (idusuario, claseenfermedad, nombreenfermedad, nombrefami) values ('"+codd+"','"+qclaseenfermedad3+"','"+qnombreenfermedad3+"','"+qnombrefamiliar3+"')";
                            int resultado54 = Sentencias54.executeUpdate(consulta54);
                    if (resultado54==1){
                        
                        Sentencias55 = conexion.createStatement(); 
                    Sentencias55=conexion.createStatement();
                    String consulta55="insert into enfermedadcronica (idusuario, tipo, nombrefam, observaciones) values ('"+codd+"','"+qtipo3+"','"+qnombrepadece3+"','"+qobservaciones3+"')";
                    int resultado55 = Sentencias55.executeUpdate(consulta55);
            if (resultado55==1){
			
			Sentencias56 = conexion.createStatement(); 
                                                        Sentencias56=conexion.createStatement();
							String consulta56="insert into quienpadeceenfermedad (idusuario, claseenfermedad, nombreenfermedad, nombrefami) values ('"+codd+"','"+qclaseenfermedad4+"','"+qnombreenfermedad4+"','"+qnombrefamiliar4+"')";
                            int resultado56 = Sentencias56.executeUpdate(consulta56);
                    if (resultado56==1){
                        
                        Sentencias57 = conexion.createStatement(); 
                    Sentencias57=conexion.createStatement();
                    String consulta57="insert into enfermedadcronica (idusuario, tipo, nombrefam, observaciones) values ('"+codd+"','"+qtipo4+"','"+qnombrepadece4+"','"+qobservaciones4+"')";
                    int resultado57 = Sentencias57.executeUpdate(consulta57);
            if (resultado57==1){
			
				Sentencias58 = conexion.createStatement(); 
                                                        Sentencias58=conexion.createStatement();
							String consulta58="insert into quienpadeceenfermedad (idusuario, claseenfermedad, nombreenfermedad, nombrefami) values ('"+codd+"','"+qclaseenfermedad5+"','"+qnombreenfermedad5+"','"+qnombrefamiliar5+"')";
                            int resultado58 = Sentencias58.executeUpdate(consulta58);
                    if (resultado58==1){
                        
                        Sentencias59 = conexion.createStatement(); 
                    Sentencias59=conexion.createStatement();
                    String consulta59="insert into enfermedadcronica (idusuario, tipo, nombrefam, observaciones) values ('"+codd+"','"+qtipo5+"','"+qnombrepadece5+"','"+qobservaciones5+"')";
                    int resultado59 = Sentencias59.executeUpdate(consulta59);
            if (resultado59==1){
                
                
                
                
                
                
                
                
                
                
                
                            Sentencias9 = conexion.createStatement(); 
                     
                            Sentencias9=conexion.createStatement();
                                String consulta9="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+mapellidopaterno+"','"+mapellidomaterno+"','"+mnombres+"','"+medad+"','"+mparentesco+"','"+medocivil+"','"+msexo+"')";
                                int resultado9 = Sentencias9.executeUpdate(consulta9);
                                
                                if (resultado9==1){
                                    
                                         
                                        Sentencias10 = conexion.createStatement(); 

                                        Sentencias10=conexion.createStatement();
                                        String consulta10= "select idfamiliar from familiares where fnombres='"+mnombres+"' and fapellidopaterno='"+mapellidopaterno+"' and fapellidomaterno='"+mapellidomaterno+"' and idusuario='"+codd+"' ";
                                        tbresultado8 = Sentencias10.executeQuery(consulta10);
                                   while (tbresultado8.next())
                                    {
                                      
                                        String mcod= (tbresultado8.getString(1));
                                        Sentencias11 = conexion.createStatement(); 

                                        Sentencias11=conexion.createStatement();
                                        String consulta11="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+mcod+"','"+codd+"','"+mtrabaja+"','"+mocupacion+"','"+mingresomensual+"','"+mreligion+"','"+mescolaridad+"','"+mnacimiento+"','"+martesanal+"','"+mcualartesanal+"','"+mdialecto+"','"+mcualdialecto+"','"+mnegocio+"','"+mcualnegocio+"')";
                                        int resultado11 = Sentencias11.executeUpdate(consulta11);

                                    if (resultado11==1){
                
                                        
                                        
                                        
                                        Sentencias12 = conexion.createStatement(); 
                                        Sentencias12=conexion.createStatement();
                                        String consulta12="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+h1apellidopaterno+"','"+h1apellidomaterno+"','"+h1nombres+"','"+h1edad+"','"+h1parentesco+"','"+h1edocivil+"','"+h1sexo+"')";
                                        int resultado12 = Sentencias12.executeUpdate(consulta12);

                                if (resultado12==1){
                                        Sentencias13 = conexion.createStatement(); 
                                        Sentencias13=conexion.createStatement();
                                    String consulta13= "select idfamiliar from familiares where fnombres='"+h1nombres+"' and fapellidopaterno='"+h1apellidopaterno+"' and fapellidomaterno='"+h1apellidomaterno+"' and idusuario='"+codd+"' ";
                                     tbresultado9 = Sentencias13.executeQuery(consulta13);
                                   while (tbresultado9.next())
                                    {
                                      
                                     String h1cod= (tbresultado9.getString(1));
                                   
                                        Sentencias14 = conexion.createStatement(); 
                                        Sentencias14=conexion.createStatement();
                                    String consulta14="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+h1cod+"','"+codd+"','"+h1trabaja+"','"+h1ocupacion+"','"+h1ingresomensual+"','"+h1religion+"','"+h1escolaridad+"','"+h1nacimiento+"','"+h1artesanal+"','"+h1cualartesanal+"','"+h1dialecto+"','"+h1cualdialecto+"','"+h1negocio+"','"+h1cualnegocio+"')";
                                    int resultado14 = Sentencias14.executeUpdate(consulta14);

                                   
                                    if (resultado14==1){
                                        
                                        Sentencias15 = conexion.createStatement(); 
                     
                                        Sentencias15=conexion.createStatement();
                                    String consulta15="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+h2apellidopaterno+"','"+h2apellidomaterno+"','"+h2nombres+"','"+h2edad+"','"+h2parentesco+"','"+h2edocivil+"','"+h2sexo+"')";
                                    int resultado15 = Sentencias15.executeUpdate(consulta15);
                                
                                if (resultado15==1){
                                    
                                         
                                        Sentencias16 = conexion.createStatement(); 

                                        Sentencias16=conexion.createStatement();
                                            String consulta16= "select idfamiliar from familiares where fnombres='"+h2nombres+"' and fapellidopaterno='"+h2apellidopaterno+"' and fapellidomaterno='"+h2apellidomaterno+"' and idusuario='"+codd+"' ";
                                             tbresultado10 = Sentencias16.executeQuery(consulta16);
                                           while (tbresultado10.next())
                                            {
                                      
                                     String h2cod= (tbresultado10.getString(1));
                                   
                                        Sentencias17 = conexion.createStatement(); 
                                        Sentencias17=conexion.createStatement();
                                    String consulta17="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+h2cod+"','"+codd+"','"+h2trabaja+"','"+h2ocupacion+"','"+h2ingresomensual+"','"+h2religion+"','"+h2escolaridad+"','"+h2nacimiento+"','"+h2artesanal+"','"+h2cualartesanal+"','"+h2dialecto+"','"+h2cualdialecto+"','"+h2negocio+"','"+h2cualnegocio+"')";
                                    int resultado17 = Sentencias17.executeUpdate(consulta17);

                                    
                                    
                                    if (resultado17==1){
                                        
                                         Sentencias18 = conexion.createStatement(); 
                     
                                        Sentencias18=conexion.createStatement();
                                    String consulta18="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+h3apellidopaterno+"','"+h3apellidomaterno+"','"+h3nombres+"','"+h3edad+"','"+h3parentesco+"','"+h3edocivil+"','"+h3sexo+"')";
                                    int resultado18 = Sentencias18.executeUpdate(consulta18);
                                
                                if (resultado18==1){
                                    
                                         
                                        Sentencias19 = conexion.createStatement(); 

                                        Sentencias19=conexion.createStatement();
                                    String consulta19= "select idfamiliar from familiares where fnombres='"+h3nombres+"' and fapellidopaterno='"+h3apellidopaterno+"' and fapellidomaterno='"+h3apellidomaterno+"' and idusuario='"+codd+"' ";
                                     tbresultado11 = Sentencias19.executeQuery(consulta19);
                                   while (tbresultado11.next())
                                    {
                                      
                                     String h3cod= (tbresultado11.getString(1));
                                   
                                    Sentencias20 = conexion.createStatement(); 
                                    Sentencias20=conexion.createStatement();
                                    String consulta20="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+h3cod+"','"+codd+"','"+h3trabaja+"','"+h3ocupacion+"','"+h3ingresomensual+"','"+h3religion+"','"+h3escolaridad+"','"+h3nacimiento+"','"+h3artesanal+"','"+h3cualartesanal+"','"+h3dialecto+"','"+h3cualdialecto+"','"+h3negocio+"','"+h3cualnegocio+"')";
                                    int resultado20 = Sentencias20.executeUpdate(consulta20);

                                    
                                    
                                    if (resultado20==1){
                                        
                                        Sentencias21 = conexion.createStatement(); 
                     
                                    Sentencias21=conexion.createStatement();
                                String consulta21="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+h4apellidopaterno+"','"+h4apellidomaterno+"','"+h4nombres+"','"+h4edad+"','"+h4parentesco+"','"+h4edocivil+"','"+h4sexo+"')";
                                int resultado21 = Sentencias21.executeUpdate(consulta21);
                                
                                if (resultado21==1){
                                    
                                         
                                        Sentencias22 = conexion.createStatement(); 

                                        Sentencias22=conexion.createStatement();
                                    String consulta22= "select idfamiliar from familiares where fnombres='"+h4nombres+"' and fapellidopaterno='"+h4apellidopaterno+"' and fapellidomaterno='"+h4apellidomaterno+"' and idusuario='"+codd+"' ";
                                     tbresultado12 = Sentencias22.executeQuery(consulta22);
                                   while (tbresultado12.next())
                                    {
                                      
                                     String h4cod= (tbresultado12.getString(1));
                                   
                                    Sentencias23 = conexion.createStatement(); 
                                    Sentencias23=conexion.createStatement();
                                    String consulta23="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+h4cod+"','"+codd+"','"+h4trabaja+"','"+h4ocupacion+"','"+h4ingresomensual+"','"+h4religion+"','"+h4escolaridad+"','"+h4nacimiento+"','"+h4artesanal+"','"+h4cualartesanal+"','"+h4dialecto+"','"+h4cualdialecto+"','"+h4negocio+"','"+h4cualnegocio+"')";
                                    int resultado23 = Sentencias23.executeUpdate(consulta23);

                                    
                                    
                                    if (resultado23==1){
                                        
                                        Sentencias24 = conexion.createStatement(); 
                     
                            Sentencias24=conexion.createStatement();
                        String consulta24="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+h5apellidopaterno+"','"+h5apellidomaterno+"','"+h5nombres+"','"+h5edad+"','"+h5parentesco+"','"+h5edocivil+"','"+h5sexo+"')";
                        int resultado24 = Sentencias24.executeUpdate(consulta24);
                                
                                if (resultado24==1){
                                    
                                         
                                        Sentencias25 = conexion.createStatement(); 

                                        Sentencias25=conexion.createStatement();
                                    String consulta25= "select idfamiliar from familiares where fnombres='"+h5nombres+"' and fapellidopaterno='"+h5apellidopaterno+"' and fapellidomaterno='"+h5apellidomaterno+"' and idusuario='"+codd+"' ";
                                     tbresultado13 = Sentencias25.executeQuery(consulta25);
                                   while (tbresultado13.next())
                                    {
                                      
                                     String h5cod= (tbresultado13.getString(1));
                                   
                                    Sentencias26 = conexion.createStatement(); 
                                    Sentencias26=conexion.createStatement();
                                    String consulta26="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+h5cod+"','"+codd+"','"+h5trabaja+"','"+h5ocupacion+"','"+h5ingresomensual+"','"+h5religion+"','"+h5escolaridad+"','"+h5nacimiento+"','"+h5artesanal+"','"+h5cualartesanal+"','"+h5dialecto+"','"+h5cualdialecto+"','"+h5negocio+"','"+h5cualnegocio+"')";
                                    int resultado26 = Sentencias26.executeUpdate(consulta26);

                                    if (resultado26==1){
				Sentencias27 = conexion.createStatement(); 
                                Sentencias27=conexion.createStatement();
                        String consulta27="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+h6apellidopaterno+"','"+h6apellidomaterno+"','"+h6nombres+"','"+h6edad+"','"+h6parentesco+"','"+h6edocivil+"','"+h6sexo+"')";
                        int resultado27 = Sentencias27.executeUpdate(consulta27);
                                
                                if (resultado27==1){
                                    
                                         
                                        Sentencias28 = conexion.createStatement(); 

                                        Sentencias28=conexion.createStatement();
                                    String consulta28= "select idfamiliar from familiares where fnombres='"+h6nombres+"' and fapellidopaterno='"+h6apellidopaterno+"' and fapellidomaterno='"+h6apellidomaterno+"' and idusuario='"+codd+"' ";
                                     tbresultado14 = Sentencias28.executeQuery(consulta28);
                                   while (tbresultado14.next())
                                    {
                                      
                                     String h6cod= (tbresultado14.getString(1));
                                   
                                    Sentencias29 = conexion.createStatement(); 
                                       Sentencias29=conexion.createStatement();
                                    String consulta29="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+h6cod+"','"+codd+"','"+h6trabaja+"','"+h6ocupacion+"','"+h6ingresomensual+"','"+h6religion+"','"+h6escolaridad+"','"+h6nacimiento+"','"+h6artesanal+"','"+h6cualartesanal+"','"+h6dialecto+"','"+h6cualdialecto+"','"+h6negocio+"','"+h6cualnegocio+"')";
                                    int resultado29 = Sentencias29.executeUpdate(consulta29);

                                    if (resultado29==1){
				Sentencias30 = conexion.createStatement(); 
                                Sentencias30=conexion.createStatement();
                        String consulta30="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+o1apellidopaterno+"','"+o1apellidomaterno+"','"+o1nombres+"','"+o1edad+"','"+o1parentesco+"','"+o1edocivil+"','"+o1sexo+"')";
                        int resultado30 = Sentencias30.executeUpdate(consulta30);
                                
                                if (resultado30==1){
                                    
                                         
                                        Sentencias31 = conexion.createStatement(); 

                                        Sentencias31=conexion.createStatement();
                                    String consulta31= "select idfamiliar from familiares where fnombres='"+o1nombres+"' and fapellidopaterno='"+o1apellidopaterno+"' and fapellidomaterno='"+o1apellidomaterno+"' and idusuario='"+codd+"' ";
                                     tbresultado15 = Sentencias31.executeQuery(consulta31);
                                   while (tbresultado15.next())
                                    {
                                      
                                     String o1cod= (tbresultado15.getString(1));
                                   
                                    Sentencias32 = conexion.createStatement(); 

                                        
                                        Sentencias32=conexion.createStatement();
                                    String consulta32="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+o1cod+"','"+codd+"','"+o1trabaja+"','"+o1ocupacion+"','"+o1ingresomensual+"','"+o1religion+"','"+o1escolaridad+"','"+o1nacimiento+"','"+o1artesanal+"','"+o1cualartesanal+"','"+o1dialecto+"','"+o1cualdialecto+"','"+o1negocio+"','"+o1cualnegocio+"')";
                                    int resultado32 = Sentencias32.executeUpdate(consulta32);

                                    if (resultado32==1){
				Sentencias33 = conexion.createStatement(); 
                                Sentencias33=conexion.createStatement();
                        String consulta33="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+o2apellidopaterno+"','"+o2apellidomaterno+"','"+o2nombres+"','"+o2edad+"','"+o2parentesco+"','"+o2edocivil+"','"+o2sexo+"')";
                        int resultado33 = Sentencias33.executeUpdate(consulta33);
                                
                                if (resultado33==1){
                                    
                                         
                                        Sentencias34 = conexion.createStatement(); 

                                        Sentencias34=conexion.createStatement();
                                    String consulta34= "select idfamiliar from familiares where fnombres='"+o2nombres+"' and fapellidopaterno='"+o2apellidopaterno+"' and fapellidomaterno='"+o2apellidomaterno+"' and idusuario='"+codd+"' ";
                                     tbresultado16 = Sentencias34.executeQuery(consulta34);
                                   while (tbresultado16.next())
                                    {
                                      
                                     String o2cod= (tbresultado16.getString(1));
                                   
                                    Sentencias35 = conexion.createStatement(); 
                                        Sentencias35=conexion.createStatement();
                                    String consulta35="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+o2cod+"','"+codd+"','"+o2trabaja+"','"+o2ocupacion+"','"+o2ingresomensual+"','"+o2religion+"','"+o2escolaridad+"','"+o2nacimiento+"','"+o2artesanal+"','"+o2cualartesanal+"','"+o2dialecto+"','"+o2cualdialecto+"','"+o2negocio+"','"+o2cualnegocio+"')";
                                    int resultado35 = Sentencias35.executeUpdate(consulta35);

                                   if (resultado35==1){
				Sentencias36 = conexion.createStatement(); 
                     
                            Sentencias36=conexion.createStatement();
                        String consulta36="insert into familiares(idfamiliar, idusuario, fapellidopaterno, fapellidomaterno, fnombres, fedad, fparentesco, festadocivil, sexo) values (null,'"+codd+"','"+o3apellidopaterno+"','"+o3apellidomaterno+"','"+o3nombres+"','"+o3edad+"','"+o3parentesco+"','"+o3edocivil+"','"+o3sexo+"')";
                        int resultado36 = Sentencias36.executeUpdate(consulta36);
                                
                                if (resultado36==1){
                                    
                                         
                                        Sentencias37 = conexion.createStatement(); 

                                        Sentencias37=conexion.createStatement();
                                    String consulta37= "select idfamiliar from familiares where fnombres='"+o3nombres+"' and fapellidopaterno='"+o3apellidopaterno+"' and fapellidomaterno='"+o3apellidomaterno+"' and idusuario='"+codd+"' ";
                                     tbresultado17 = Sentencias37.executeQuery(consulta37);
                                   while (tbresultado17.next())
                                    {
                                      
                                     String o3cod= (tbresultado17.getString(1));
                                   
                                    Sentencias38 = conexion.createStatement(); 
                                    Sentencias38=conexion.createStatement();
                                    String consulta38="insert into ocupacionfamiliares (idfamiliar, idusuario, trabaja, ocupacion, ingresomensual, religion, escolaridad, lugarnacimiento, conocimientoartesanal,cualartesanal,conocimientodialecto,cualdialecto,tienenegocio,cualnegocio) values ('"+o3cod+"','"+codd+"','"+o3trabaja+"','"+o3ocupacion+"','"+o3ingresomensual+"','"+o3religion+"','"+o3escolaridad+"','"+o3nacimiento+"','"+o3artesanal+"','"+o3cualartesanal+"','"+o3dialecto+"','"+o3cualdialecto+"','"+o3negocio+"','"+o3cualnegocio+"')";
                                    int resultado38 = Sentencias38.executeUpdate(consulta38);

                                    
                                    
                                    if (resultado38==1){
                
                                        
                                        
                                        
                                        
                                        
                                        
                
                                                
                                            out.println("<script>alert('El registro se guardo correctamente')</script>");
                                            out.println("<meta http-equiv='refresh' content='0;url=index.jsp'");
                            
                                    }
                                } tbresultado17.close();
                            }
                        }
                      } tbresultado16.close();
					}
				}
			} tbresultado15.close();
            }
			}
			} tbresultado14.close();
			}
			}
			} tbresultado13.close();
			}
			}
       } tbresultado12.close();
                   }
                                                                }
                   } tbresultado11.close();
                                                                                                                                                                                                }
                                                                                                                                                                                                                }
                                                                                                                                                                                                }  tbresultado10.close();
                                                                                                                                                                }
                                                                                                                                }
                                                                                                } tbresultado9.close(); 
                                                                } 
                   }}  tbresultado8.close(); }    }
       
			
                    }
            }
                    }
            }
                    }
            }
                    }
}
                        }}}
                            }
                                    }
                                                                                        }
                                                                                                }
                                                                                                                        }
                                                                                                                                        }
                                                                                                                                                }
                                                                                                                                                                }
                                                                                                                                                                                                }
                                                                                                                                                                                                                } resultado7.close();
                                                                                                                                                                                                }
                                                                                                                                                                }  resultado5.close();
                                                                                                                                }
                                                                                                }
                                                                }  resultado2.close();
                   }  conexion.close();
       
       
                   
			
                    
                   
%>
    </body>
</html>
