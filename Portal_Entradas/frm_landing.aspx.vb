Imports Portal_Entradas_AD

Public Class frm_landing
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            Limpiar()
        End If
    End Sub

    Protected Sub btn_enviar_Click(sender As Object, e As EventArgs) Handles btn_enviar.Click

        Dim oMensaje As New cLanding

        If txtNombre.Value <> Nothing And txtApellido.Value <> Nothing And txtEmail.Value <> Nothing And txtTelefono.Value <> Nothing And txtMensaje.Value <> Nothing Then
            oMensaje.Agregar(txtNombre.Value, txtApellido.Value, txtEmail.Value, txtTelefono.Value, txtMensaje.Value)
            Limpiar()

        End If

    End Sub

    Private Sub Limpiar()
        txtApellido.Value = Nothing
        txtEmail.Value = Nothing
        txtMensaje.Value = Nothing
        txtNombre.Value = Nothing
        txtTelefono.Value = Nothing
    End Sub
End Class