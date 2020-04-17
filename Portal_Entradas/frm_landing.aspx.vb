Imports System.Net
Imports System.Net.Mail
Imports Portal_Entradas_AD
Imports Microsoft.VisualBasic.Logging
Public Class frm_landing
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            'Limpiar()
        End If
    End Sub

#Region "Enviar Mail"
    Private Sub SendMail(ByVal Nombre As String, ByVal Apellido As String, ByVal Email As String, ByVal Telefono As String, ByVal Mensaje As String)

        Dim toAddress As String = txtEmail.Text.ToString()
        Dim fromAddress As String = "software.goodapps@gmail.com"
        Const fromPassword As String = "Passw0rd.99"
        Dim subject As String = Mensaje.ToString()
        Dim body As String = "De: " & Nombre.ToString & vbCrLf
        body += "Apellido: " & Apellido.ToString & vbCrLf
        body += "Email: " & Email.ToString & vbCrLf
        body += "Telefono: " & Telefono.ToString & vbCrLf
        body += "Mensaje: " & Mensaje.ToString & "n"

        Dim smtp = New System.Net.Mail.SmtpClient()

        smtp.Host = "smtp.gmail.com"
        smtp.Port = 587
        'smtp.UseDefaultCredentials = False
        smtp.EnableSsl = True
        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network
        smtp.Credentials = New NetworkCredential(fromAddress, fromPassword)
        smtp.Timeout = 20000

        smtp.Send(toAddress, fromAddress, subject, body)
    End Sub
#End Region

#Region "Agg a BD - EnviarMail"
    Protected Sub btn_enviar_Click(sender As Object, e As EventArgs) Handles btn_enviar.Click

        Dim oMensaje As New cLanding

        If txtNombre.Text <> Nothing And txtApellido.Text <> Nothing And txtEmail.Text <> Nothing And txtTelefono.Text <> Nothing And txtMensaje.Value <> Nothing Then
            oMensaje.Agregar(txtNombre.Text, txtApellido.Text, txtEmail.Text, txtTelefono.Text, txtMensaje.Value)

        End If

        SendMail(txtNombre.Text, txtApellido.Text, txtEmail.Text, txtTelefono.Text, txtMensaje.InnerText)

        'Limpiar()
    End Sub
#End Region

    'Private Sub Limpiar()
    '    txtApellido.Text = Nothing
    '    txtEmail.Text = Nothing
    '    txtMensaje.Value = Nothing
    '    txtNombre.Text = Nothing
    '    txtTelefono.Text = Nothing
    'End Sub
End Class