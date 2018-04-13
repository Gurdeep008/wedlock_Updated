create procedure PRO_LOGIN
@user varchar(15),
@password varchar(15),
@result int output
as
declare @pass varchar(15)
select @pass = pswd from user_reg where username = @user

if @pass is null
begin
set @result = -1
select @result Result
end

else if @pass = @password
begin
set @result = 1
select * from user_reg where username = @user
select @result Result
end

else if @pass<>@password
begin
set @result = -2
select @result Result
end

select *  from user_reg

exec PRO_LOGIN 'sabi008','123',1
