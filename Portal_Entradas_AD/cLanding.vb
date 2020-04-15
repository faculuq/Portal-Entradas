Imports Microsoft.VisualBasic
Imports System.DataSqlClient
Imports System.Data
Imports System.IO
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.Configuration
Public Class cLanding

    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn")
    End Sub

    Public Function Agregar(ByVal Nombre As String, ByVal Apellido As String, ByVal Email As String, ByVal Telefono As String, ByVal Mensaje As String) As Double
        Return oDatabase.ExecuteScalar("PortalEntradasMensajesAgregar", Nombre, Apellido, Email, Telefono, Mensaje)
    End Function

End Class
