import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="sethi",
  passwd="12345678",
  database="project"
)

# print(mydb)

# print("Hello");

cur=mydb.cursor();
print("type of cur=",type(cur))

cur1=mydb.cursor();
print("type of cur1=",type(cur1))

cur2=mydb.cursor(buffered=True);
print("type of cur1=",type(cur1))

def user_password():
	
	y=1
	while(y==1):
		first_name=input("type the first_name");
		first_name1=first_name.upper()
		for i in first_name1:
			z=ord(i)
			if(z>=65&z<=90):
				y=0
			else:
				print("try again")
				y=1
	y=1
	while(y==1):
		middle_name=input("type the middle_name or if you dont have enter hyphen(-)");
		middle_name1=middle_name.upper()
		for i in middle_name1:
			z=ord(i)
			if((z>=65&z<=90) | z==45):
				y=0
			else:
				print("try again")
				y=1
	y=1
	while(y==1):
		last_name=input("type the last_name");
		last_name1=last_name.upper()
		for i in last_name1:
			z=ord(i)
			if(z>=65&z<=90 ):
				y=0
			else:
				print("try again")
				y=1
	
	y=1
	while(y==1):
		gender=input("enter the gender like 'MALE or FEMALE'");
		gender1=gender.upper()
		
		if(gender1=="MALE"  ):
			y=0
		elif(gender1=="FEMALE"):
			y=0
		else:
			print("try again")
			y=1

	y=1
	while(y==1):
		email=input("enter the email in the format of @gmail.com or @thapar.edu");
		result=email.find('@gmail.com')
		result1=email.find('@thapar.edu')
		if(result!=-1):
			y=0
		elif(result1!=-1):
			y=0
		else:
			print("try again")
			y=1

	y=1
	while(y==1):
		Phone_no=input("enter the contact_no");
		a=len(Phone_no)
		if (a==10):
			for i in Phone_no:
				z=ord(i)
				if(z>=48&z<=57 ):
					y=0
				else:
					print("try again")
					y=1
		else:
			print("try again")
			y=1


	y=1
	while (y==1):
		username=input("type the username ");
		a=len(username)
		if(a==0):
			print("please enter valid username")
			y=1
		else:
			y=0

	y=1
	while (y==1):
		password=input("type the password 'it should be minimum of 8 characters and should include an special character' ");
		a=len(password)
		if(a<8):
			print("type again")
			y=1
		else:
			for i in password:
				z=ord(i)
				if(z>=33&z<=122):
					y=0
				else:
					print("try again")
					y=1


	confirm_password=input("confirm the password\n");
	if(password == confirm_password):

		try:
			sys="insert into face(username,password,confirm_password) values (%s,%s,%s)"
			val=(username,password,confirm_password)
			cur.execute(sys,val)
			mydb.commit()

		
			sys1="update info set gender=(%s),email=(%s),Phone_no=(%s),first_name=(%s),middle_name=(%s),last_name=(%s) where id_no= (select id_no from face where password=(%s))"
			val1=(gender,email,Phone_no,first_name,middle_name,last_name,password)
			cur.execute(sys1,val1)
			mydb.commit()
		except :
			print("some error occured")
			mydb.rollback()
		else:
			print("information entered successfully")
		
		

		global flag;
		flag=2;
	else:
		print("password does not match");


name="";
username="";
flag=0;
x=0;


def verify():
	global flag;
	while(flag==0):
		
		global username
		username=input("enter username");
		password=input("enter the password");
		global name
		name=username;
		print("name=",name,"\nusername=",username)
		cur.execute('select username from face ');
		result=cur.fetchall()
		for h in result:
			res=True
			str1=h[x]
			print("str1=",str1)
			len_u=len(str1)
			len_u1=len(username)
			if(len_u!=len_u1):
				continue;
			for t in range(0,len_u):
				if(username[t]!=str1[t]):
					res=False
					flag=0
					break;
				if(t==len_u):
					break;
			if(res==True):
				print("matched , username found")
				flag=1
				break;

		if(flag==0):
			print("try again");
		else:
			
			res=True

			cur.execute("select password from face where username=(%s)",(username,))
			result=cur.fetchone()
			str1=result[0]
				
			len_u=len(str1)
			len_u1=len(password)
			if(len_u!=len_u1):
				res=False

			if(res==True):
				for t in range(0,len_u):
					if(password[t]!=str1[t]):
						res=False
						break;
					if(t==len_u):
						break;
			if(res==True):
				print("matched ")
				name=username
				print("name=",name,"\nusername=",username)
				flag=2
				break;

		if(flag!=2):
			print("try again")
		else:
			break;




print('HELLO\nWELCOME TO THE ONLINE PRACTICE REPOSITORY\n LETS START THE GAME');

print('press 1 if you want to sign up\npress 2 for log in');
ch=int(input());



if (ch == 1):
	user_password();	
else:
	verify();



print(flag);
print("name=",name,"\nusername=",username)
if(flag == 2):
	# global name
	# global username
	print("name=",name,"\nusername=",username)
	ch3='y'
	while (ch3=='y'):


		cur1.execute("select total from info where id_no=(select id_no from face where username=(%s))",(name,))
		total=cur1.fetchone()
		print("type of total=",type(total),'type of total[0]',type(total[0]))

		
		print('\nPress 1 for linked list\nPress 2 for pointer\nPress 3 for queue\nPress 4 for stack\nPress 5 for string\nPress 6 for editing personal information\nPress 7 for viewing personal information');

		inp=int(input("Enter Choice: "));

	
		if(inp==1 or inp==2 or inp==3 or inp==4 or inp==5):
			print("asking level")
			ch2=int(input("enter 1 for easy (each question for 1 mark)\nenter 2 for medium(each question for 3 marks)\nenter 3 for difficult (each question for 5 marks)"))
		else:
			print()

		if (inp==1):
			if(ch2==1):
				try:
					cur.execute("select question,answer,attribute from l_l where attribute='easy'");
					myresult=cur.fetchone();
					print("hello")
					
				except :
					print('some error occured')
				
				
			elif(ch2==2):
				cur.execute("select question,answer,attribute from l_l where attribute='medium'");
				myresult=cur.fetchone();
			else:
				cur.execute("select question,answer,attribute from l_l where attribute='difficult'");
				myresult=cur.fetchone();
		elif (inp==2):
			if(ch2==1):
				cur.execute("select question,answer,attribute from pointer where attribute='easy'");
				myresult=cur.fetchone();
			elif(ch2==2):
				cur.execute("select question,answer,attribute from pointer where attribute='medium'");
				myresult=cur.fetchone();
			else:
				cur.execute("select question,answer,attribute from pointer where attribute='difficult'");
				myresult=cur.fetchone();

		elif (inp==3):
			if(ch2==1):
				cur.execute("select question,answer,attribute from queue where attribute='easy'")
				myresult=cur.fetchone();

			elif(ch2==2):
				cur.execute("select question,answer,attribute from queue where attribute='medium'");
				myresult=cur.fetchone();

			else:
				cur.execute("select question,answer,attribute from queue where attribute='difficult'");
				myresult=cur.fetchone();

		elif (inp==4):
			if(ch2==1):
				cur.execute("select question,answer,attribute from stack where attribute='easy'");
				myresult=cur.fetchone();

			elif(ch2==2):
				cur.execute("select question,answer,attribute from stack where attribute='medium'");
				myresult=cur.fetchone();

			else:
				cur.execute("select question,answer,attribute from stack where attribute='difficult'");
				myresult=cur.fetchone();

		elif (inp==5):
			if(ch2==1):
				cur.execute("select question,answer,attribute from string where attribute='easy'");
				myresult=cur.fetchone();

			elif(ch2==2):
				cur.execute("select question,answer,attribute from string where attribute='medium'");
				myresult=cur.fetchone();

			else:
				cur.execute("select question,answer,attribute from string where attribute='difficult'");
				myresult=cur.fetchone();



		elif(inp==6):

			ch2=int(input("press 1 for editing first_name\nPress 2 for middle name\npress 3 for last name\npress 4 for mail \npress 5 for contact Phone_no\nPress 6 for gender\nPress 7 for resetting password "))

		
			if(ch2==1):
				new=input("enter the new first_name")
				cur.execute("update info set first_name = (%s) where id_no=(select id_no from face where username=(%s))",(new,name))
				mydb.commit()
			elif(ch2==2):
				new=input("enter the new middle_name")
				cur.execute("update info set middle_name = (%s) where id_no=(select id_no from face where username=(%s))",(new,name))
				mydb.commit()
			elif(ch2==3):
				new=input("enter the new last_name")
				cur.execute("update info set last_name = (%s) where id_no=(select id_no from face where username=(%s))",(new,name))
				mydb.commit()
			elif(ch2==4):
				new=input("enter the new mail")
				cur.execute("update info set email = (%s) where id_no=(select id_no from face where username=(%s))",(new,name))
				mydb.commit()
			elif(ch2==5):
				new=input("enter the new Phone_no")
				cur.execute("update info set Phone_no = (%s) where id_no=(select id_no from face where username=(%s))",(new,name))
				mydb.commit()
			elif(ch2==6):
				new=input("enter the new gender")
				cur.execute("update info set gender = (%s) where id_no=(select id_no from face where username=(%s))",(new,name))
				mydb.commit()
			elif(ch2==7):
				new=input("enter the new password")
				cur.execute("update face set password=(%s) where username=(%s)",(new,name))
				mydb.commit()
			else:
				print("enter the correct choice")

		elif(inp==7):
			print(name)
			cur.execute("select * from info where id_no=(select id_no from face where username=(%s))",(name,))
			myresult = cur.fetchall()

			for x in myresult:
  				print(x)


		else:
			print("please select the correct choice")

		if(inp==1 or inp==2 or inp==3 or inp==4 or inp==5):
			while myresult is not None:
				j=0
				while(j==0):
					print(myresult[0])
					
					print("answer the question,")
					ans=input("enter your choice")

					if(ans=='a' or ans=='b' or ans=='c' or ans == 'd' or ans=='e'):
						if(ans==myresult[1]):
							print("your answer is correct")
							# total=str(total[0])
							print('total=',total)       #(0,)
							# print(total[0])           #0
							# print(total[0][0])  cant execute
							try:
								total=total[0]
							except:
								print()
							else:
								print('success')


							# cur1.execute("select total from info where id_no=(select id_no from face where username=(%s))",(name,))
							# total=cur1.fetchone()
							if(myresult[2]=='easy'):
								total=total+1;
							elif(myresult[2]=='medium'):
								total=total+3;
							else:
								total=total+5;

							print("updating total")

							# sys="update info set total=(%s) where id_no=(select id_no from face where username=(%s))"
							# val=(total,name)
							# cur2.execute(sys,val)
							# faaltu=cur2.fetchone()
							# mydb.commit()

							# try:
							# 	cur1.execute("update info set total=(%s) where id_no=(select id_no from face where username=(%s))",(total,name))
							# 	mydb.commit()
							# 	print("info updated")
							# 	cur1.execute("update q_solved set total=(%s) where id_no=(select id_no from face where username=(%s))",(total,name))
							# 	mydb.commit()
							# 	print("q_solved updated")
							# except :
							# 	print("something went wrong")
							# 	mydb.rollback()
							# else:
							# 	print("score updated successfully")
							
						else:
							print("answer is wrong")

						j=1
						myresult=cur.fetchone()
					else:
						print("please enter a valid choice")
						j=0

		if(inp==1 or inp==2 or inp==3 or inp==4 or inp==5):
			sys="update info set total=(%s) where id_no=(select id_no from face where username=(%s))"
			val=(total,name)
			cur2.execute(sys,val)
			mydb.commit()

		print("if want to continue enter y else press any othe key to exit")
		ch3=input()
		
else:
	print("sorry")




