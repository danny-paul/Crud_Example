Imports System.Data.OleDb
Imports System.Web.Script.Serialization
Imports System.IO

Public Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    <System.Web.Services.WebMethod()>
    Protected Function getAllInventory() As String
        Dim serializer As New JavaScriptSerializer
        Dim query As String = ""
        Dim message As String = "bigtest"
        Dim success As Boolean = True

        Return serializer.Serialize(New With {
            .success = success,
            .message = message
        })
    End Function

End Class