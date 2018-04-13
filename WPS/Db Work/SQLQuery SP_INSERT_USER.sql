create procedure INSERT_USER
@fname varchar(25),
@lname varchar(25),
@email varchar(20),
@gender char(1),
@dob varchar(10),
@pass varchar(15),
@address varchar(50),
@username varchar(15),
@rel varchar(20),
@contact varchar(15)
as
begin
insert into user_reg(first_name,last_name,username,pswd,email,sex,dob,religion,contact,addr)
  values( @fname,@lname,@username,@pass,@email,@gender,@dob,@rel,@contact,@address)
end

--exec INSERT_USER 'Akash', 'Dubey', 'aksh008','123456','sjdsdsd','M','sds','dsds','dwsds','dwdwdw'


select * from user_reg
