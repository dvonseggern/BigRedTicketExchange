<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="Register.aspx.vb" Inherits="BigRedTicketExchange.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="container">

		<h1>Register</h1>

			<div class="form-group col-sm-12" id="usernamegroup">
				<label for="firstname" class="col-sm-2 control-label">First Name</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" type="text" class="form-control" placeholder="First Name" name="firstname" id="firstname"></asp:textbox>
                    <asp:RequiredFieldValidator id="requiredFirstName" runat="server"
  ControlToValidate="firstname"
  ErrorMessage="First name is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>

				</div>
			</div>
            <div class="form-group col-sm-12">
				<label class="col-sm-2 control-label">Last Name</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" class="form-control" placeholder="Smith" name="lastname" id="lastname"></asp:textbox>
                    <asp:RequiredFieldValidator id="requiredLastname" runat="server"
  ControlToValidate="lastname"
  ErrorMessage="Last name is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>

				</div>
			</div>
			<div class="form-group col-sm-12" id="passwordgroup1">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" type="password" class="form-control" placeholder="Password" name="password" id="password"></asp:textbox>
				</div>
			</div>
			<div class="form-group col-sm-12" id="passwordgroup2">
				<label for="inputPassword3" class="col-sm-2 control-label">Confirm Password</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" type="password" class="form-control" placeholder="Password" name="confirmPassword" id="confirmPassword"></asp:textbox>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<label class="col-sm-2 control-label">Email</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" class="form-control" placeholder="test@email.com" name="email" id="email"></asp:textbox>
                    <asp:RequiredFieldValidator id="requiredEmail" runat="server"
  ControlToValidate="email"
  ErrorMessage="Email is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>

				</div>
			</div>
			<div class="form-group col-sm-12">
				<label class="col-sm-2 control-label">NUID</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" class="form-control" placeholder="12345678" name="nuid" id="nuid"></asp:textbox>
                    <asp:RequiredFieldValidator id="requredNUID" runat="server"
  ControlToValidate="nuid"
  ErrorMessage="NUID is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>

				</div>
			</div>
			<div class="form-group col-sm-12">
				<label class="col-sm-2 control-label">Phone Number</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" class="form-control" placeholder="402-555-5555" name="phonenumber" id="phonenumber"></asp:textbox>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<div class="col-sm-offset-2 col-sm-10">
					<asp:button runat="server" class="btn btn-default disabled" id="registerButton" Text="Register"></asp:button>
				</div>
			</div>
	</div>


	<script>
		var usernameValid = false;
		var passwordValid = false;
		$('#username').on('keyup click', function() {
			if ($('#username').val().length != 0) {
				$('#usernamegroup').removeClass("has-error");
				$('#usernamegroup').addClass("has-success");
				usernameValid = true;
			} else {
				$('#usernamegroup').removeClass("has-success");
				$('#usernamegroup').addClass("has-error");
				usernameValid = false;
			}
		});
		$('#password,#confirmPassword').on(
				'keyup click',
				function() {
					if ($('#password').val().length != 0
							&& $('#confirmPassword').val().length != 0
							&& $('#password').val() == $('#confirmPassword')
									.val()) {
						$('#passwordgroup1,#passwordgroup2').addClass(
								"has-success");
						$('#passwordgroup1,#passwordgroup2').removeClass(
								"has-error");
						$('#registerButton').removeClass("disabled");
						passwordValid = true;
					} else {
						$('#passwordgroup1,#passwordgroup2').addClass(
								"has-error");
						$('#passwordgroup1,#passwordgroup2').removeClass(
								"has-success");
						$('#registerButton').addClass("disabled");
						passwordValid = false;
					}
				});

		$('#registerform').on('keyup keypress', function(e) {
			var keyCode = e.keyCode || e.which;
			if (keyCode === 13 && (!usernameValid || !passwordValid)) {
				e.preventDefault();
				return false;
			}
		});
	</script>
</asp:Content>
