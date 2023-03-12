from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
import json
import os
from datetime import datetime
import random
from instamojo_wrapper import Instamojo

API_KEY = "test_7dc5dd59322f57864d34db2789d"
AUTH_TOKEN = "test_1494eed8f4665d2c952f3c9b3c6"
# 4242 4242 4242
#  01/25
# 111

api = Instamojo(api_key=API_KEY, auth_token=AUTH_TOKEN, endpoint='https://test.instamojo.com/api/1.1/')


with open('config.json', 'r') as c:
    params = json.load(c)["params"]


local_server = params['local_server']

app = Flask(__name__)
app.secret_key = 'super-secret-key'
app.config['UPLOAD_FOLDER'] = params['post_image_loc']
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = params['gmail_id'],
    MAIL_PASSWORD=  params['gmail_id_pass']
)

mail = Mail(app)

if (local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']

else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']


db = SQLAlchemy(app)

class Contact(db.Model):
    '''
    sno, name phone_num, msg, date, email
    '''
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    mono = db.Column(db.String(12), nullable=False)
    message = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    email = db.Column(db.String(20), nullable=False)

class Posts(db.Model):
    title = db.Column(db.String(80),primary_key=True,nullable=False)
    slug = db.Column(db.String(21), nullable=True)
    content = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    pcategory = db.Column(db.String(50), nullable=False)
    image = db.Column(db.String(100), nullable=False)
    no = db.Column(db.Integer, nullable=True)
    introvideo = db.Column(db.String(100), nullable=False)
    bannerimg = db.Column(db.String(100), nullable=False)
    courceprice = db.Column(db.String(50), nullable=False)

class Accounts(db.Model):
    user_name = db.Column(db.String(80), nullable=False)
    password = db.Column(db.String(120), primary_key=True, nullable=False)
    mail = db.Column(db.String(12), nullable=False)
    mo_no = db.Column(db.String(100), nullable=False)
    sdate = db.Column(db.Integer, nullable=True)

class Lecture(db.Model):
    lid = db.Column(db.String(11),nullable=False)
    lecturename = db.Column(db.String(100), nullable=False, primary_key=True)
    lecturecontent = db.Column(db.String(500), nullable=False)
    video = db.Column(db.String(100), nullable=False)
    lecturedate = db.Column(db.Integer, nullable=True)
    category = db.Column(db.String(50), nullable=False)


class Coursebuyform(db.Model):
    fname = db.Column(db.String(50), nullable=False)
    lname = db.Column(db.String(50), nullable=False)
    umail = db.Column(db.String(50), nullable=False)
    telno = db.Column(db.String(50), nullable=False)
    price = db.Column(db.String(50), nullable=False)
    course = db.Column(db.String(50), nullable=False)
    coursename = db.Column(db.String(50), nullable=False)
    subdate = db.Column(db.Integer, nullable=True)
    sn = db.Column(db.Integer, nullable=True, primary_key=True)


@app.route('/')
def home():
    if 'username' in session:
        posts =  Posts.query.filter_by().all()[0:params["post_section_feature_post_number"]]
        btntext = "sign out"
        btnlink = "/signout"
        return render_template('index.html', params=params, posts=posts, btntext=btntext, btnlink=btnlink)
    else:
        posts =  Posts.query.filter_by().all()[0:params["post_section_feature_post_number"]]
        btntext = "sign in"
        btnlink = "/signin"
        return render_template('index.html', params=params, posts=posts, btntext=btntext, btnlink=btnlink)



@app.route("/post/<string:post_slug>", methods = ['GET', 'POST'])
def post_route(post_slug):
        if(request.method=='POST'):
            fname = request.form.get('fname')
            lname = request.form.get('lname')
            umail = request.form.get('umail')
            telno = request.form.get('telno')
            subdate = datetime.now()
            coursename = request.form.get('coursename')
            course = request.form.get('course')
            price = request.form.get('price')

            response = api.payment_request_create(
                amount=price,
                purpose=coursename,
                send_email=True,
                email=umail,
                redirect_url="http://127.0.0.1:5000/what"
            )

            entry = Coursebuyform(fname = fname, lname = lname, umail = umail, telno= telno, subdate = subdate, price=price, course = course, coursename=coursename)
            db.session.add(entry)
            db.session.commit()

            mail.send_message('New Message Send From Super Web',
            sender =  umail,
            recipients = [params['gmail_id']],
            body = "Name : "+fname+ "\n"+"Number : "+telno+"\n"+"\n"+"\t"+"new user buy the course...."+"\n"+"\n"+"Course Name : "+coursename + "\n"+"\n" + "price : "+ price
            )

            return redirect(response['payment_request']['longurl'])
        else:
            btntext = "sign in"
            btnlink = "/signin"    
            post = Posts.query.filter_by(slug=post_slug).first()
            return render_template('post.html', params=params, post=post, btntext=btntext, btnlink=btnlink)


@app.route('/what', methods = ['GET', 'POST'])
def what():
    if 'username' in session:
        gbtghntext = "go to my course"
        gbtnddlink = "/mycourse"
        btntext= "logout"
        btnlink = "/signout"
        return render_template('what.html', params=params, gbtghntext=gbtghntext, gbtnddlink=gbtnddlink, btntext=btntext, btnlink=btnlink)
    else:
        gbtghntext = "please click here to signup to access you course"
        gbtnddlink = "/signup"
        btntext= "sign in"
        btnlink = "/signin"
    return render_template('what.html', params=params, gbtghntext=gbtghntext, gbtnddlink=gbtnddlink, btntext=btntext, btnlink=btnlink)


# @app.route('/pay')
# def pay():
#     return render_template('payment.html', params=params)


@app.route("/mycourse", methods = ['GET', 'POST'])
def add():
    if 'username' in session:
        uname = session['username']
        mono = session['mono']
        add = Coursebuyform.query.filter_by(fname = uname, telno = mono).all()
        print(add)
        if add:
            return render_template("addmylist.html", params=params, add=add, uname=uname, mono=mono)
    else:
        btntext = "sign in"
        btnlink = "/signin"    
        return render_template('error.html', params=params, btntext=btntext, btnlink=btnlink)

@app.route("/lec/<string:cate>", methods = ['GET', 'POST'])
def lect(cate):
    if 'username' in session:
        btntext = "sign out"
        btnlink = "/signout"
        lectures = Lecture.query.filter_by(category=cate).all()
        return render_template("lecturerout.html", params=params, lectures=lectures, btntext=btntext, btnlink=btnlink)
    else:
        btntext = "sign in"
        btnlink = "/signin"    
        return render_template('error.html', params=params, btntext=btntext, btnlink=btnlink)

@app.route('/projects')
def project():
    if 'username' in session:
        posts_for_project_page = Posts.query.filter_by().all()
        btntext = "sign out"
        btnlink = "/signout"
        return render_template('projects.html', params=params, posts_for_project_page=posts_for_project_page, btntext=btntext, btnlink=btnlink)
    else:
        posts_for_project_page =  Posts.query.filter_by().all()
        btntext = "sign in"
        btnlink = "/signin"
        return render_template('projects.html', params=params, posts_for_project_page=posts_for_project_page, btntext=btntext, btnlink=btnlink)

@app.route('/admin', methods = ['GET', 'POST'])
def admin():
    rerror=''
    if('user' in session and session['user'] == params['admin_id']):
        posts = Posts.query.all()
        return render_template('dashboard.html', params=params, posts=posts)

    if request.method=='POST':
        username = request.form.get('username')
        password = request.form.get('password')
        if(username == params['admin_id'] and password == params['admin_password']):
            session['user'] = username
            posts = Posts.query.all()
            return render_template('dashboard.html', params=params, posts=posts)
        else:
            rerror = 'please enter right username'

    return render_template('login.html',params=params, rerror=rerror)


@app.route('/edit/<string:no>', methods = ['GET', 'POST'])
def edit_post(no):
    if('user' in session and session['user'] == params['admin_id']):
        if(request.method=='POST'):
            title = request.form.get('title')
            image_url = request.form.get('image')
            content = request.form.get('content')
            date = datetime.now()
            pcategory = request.form.get('pcategory')
            introvideo = request.form.get('introvideo')
            bannerimg = request.form.get('bannerimg')
            courceprice = request.form.get('courceprice')

            slug = title.replace(" ", "-")

            if no=="0":
                post= Posts(title=title, image=image_url, content=content, slug=slug, date=date, pcategory=pcategory, introvideo=introvideo, bannerimg=bannerimg, courceprice=courceprice)
                db.session.add(post)
                db.session.commit()
            
            else:
                post = Posts.query.filter_by(no=no).first()
                post.title = title
                post.slug = slug
                post.content = content
                post.image = image_url
                post.date = date 
                post.pcategory = pcategory
                post.introvideo = introvideo
                post.bannerimg = bannerimg
                post.courceprice = courceprice
                db.session.commit()
                return redirect('/edit/' + no)
        post = Posts.query.filter_by(no=no).first()
        return render_template('edit.html', params=params, post=post, no=no)



@app.route('/uploader', methods = ['GET', 'POST'])
def uploader():
    if('user' in session and session['user'] == params['admin_id']):
        if(request.method == 'POST'):
            f = request.files['file1']
            f.save(os.path.join(app.config['UPLOAD_FOLDER'] + f.filename))
            return "<h1 style='font-size:30px; text-align: center; line-height:50%;  margin-top:23%; text-transform: uppercase'>image uploaded successfully</h1>"

@app.route('/logout')
def logout():
    if('user' in session and session['user'] == params['admin_id']):
        session.pop('user')
        return redirect('/admin')


@app.route('/delete/<string:no>', methods = ['GET', 'POST'])
def delete(no):
    if('user' in session and session['user'] == params['admin_id']):
        post = Posts.query.filter_by(no=no).first()
        db.session.delete(post)
        db.session.commit()
    return redirect('/admin')


@app.route("/contact", methods = ['GET', 'POST'])
def contacts():
    if 'username' in session:
        btntext = "sign out"
        btnlink = "/signout"
        if(request.method=='POST'):
            '''Add entry to the database'''
            name = request.form.get('name')
            email = request.form.get('email')
            number = request.form.get('number')
            message = request.form.get('message')
            entry = Contact(name=name, mono= number, message= message, date= datetime.now(), email = email )
            db.session.add(entry)
            db.session.commit()
            mail.send_message('New Message Send From Super Web',
                            sender =  email,
                            recipients = [params['gmail_id']],
                            body = "Name : "+name+ "\n"+"Number : "+number+"\n"+"\n"+"\t"+message
                            )
        return render_template('contact.html', params=params, btntext=btntext, btnlink=btnlink)
    else:
        btntext = "sign in"
        btnlink = "/signin"
        return render_template('contact.html', params=params, btntext=btntext, btnlink=btnlink)




@app.route("/signup", methods = ['GET', 'POST'])
def signup():
    if(request.method=='POST'):
            user_name = request.form.get('username')
            password = request.form.get('password')
            semail = request.form.get('email')
            mono = request.form.get('mono')
            sdate = datetime.now()
            entry = Accounts(user_name=user_name, password= password, mail = semail, mo_no= mono, sdate = sdate )
            db.session.add(entry)
            db.session.commit()
            return redirect('/signin') 
    return render_template("signup.html", params=params)



@app.route("/signin", methods = ['GET', 'POST'])
def signin():

    if(request.method=='POST'):
        username = request.form.get('username')
        password = request.form.get('password')
        mono = request.form.get('mono')
        account = Accounts.query.filter_by(user_name=username, password=password, mo_no=mono).first()


        if('username' in session and session['username'] == account.user_name):
            return redirect('/')


        if account:
            session['username'] = username
            session['mono'] = mono
            return redirect('/')
            
        else:
            errormsg = "please enter the correct information"
            return render_template("signin.html", params=params, errormsg=errormsg)

    return render_template("signin.html", params=params)


@app.route('/signout')
def signout():
    if 'username' in session:
        session.pop('username')
        session.pop('mono')
        return redirect('/')

@app.route("/lecture/<string:lid>", methods = ['GET', 'POST'])
def lecture(lid):
    if 'username' in session:
        btntext = "sign out"
        btnlink = "/signout"
        lectures = Lecture.query.filter_by(lid=lid).first()
        return render_template("lecture.html", params=params, lectures=lectures, btntext=btntext, btnlink=btnlink)
    else:
        btntext = "sign in"
        btnlink = "/signin"    
        return render_template('error.html', params=params, btntext=btntext, btnlink=btnlink) 

@app.route("/lecturefatch", methods = ['GET', 'POST'])
def lecturefatch():
    if('user' in session and session['user'] == params['admin_id']):
        lec= Lecture.query.all()
        return render_template("lecturefatch.html", params=params, lec=lec)


@app.route("/usernfo", methods = ['GET', 'POST'])
def usernfo():
    if('user' in session and session['user'] == params['admin_id']):
        acc= Accounts.query.all()
        return render_template("usernfo.html", params=params, acc=acc)
        

@app.route("/lectureedit/<string:lid>", methods = ['GET', 'POST'])
def lectureedit(lid):
    if('user' in session and session['user'] == params['admin_id']):
        if(request.method=='POST'):
            lecturename = request.form.get('lecturename')
            video = request.form.get('video')
            lecturecontent = request.form.get('lecturecontent')
            lecturedate = datetime.now()
            category = request.form.get('category')


            if lid=="0":
                acco = Lecture(lecturename=lecturename, video=video, lecturecontent=lecturecontent, lecturedate = lecturedate, category=category)
                db.session.add(acco)
                db.session.commit()
            
            else:
                acco = Lecture.query.filter_by(lid=lid).first()
                acco.lecturename = lecturename
                acco.lecturecontent = lecturecontent
                acco.video = video
                acco.lecturedate = lecturedate 
                acco.category = category
                db.session.commit()
                return redirect('/lectureedit/' + lid)
        acco = Lecture.query.filter_by(lid=lid).first()
        return render_template('lectureedit.html', params=params, acco=acco, lid=lid)

@app.route('/deletelec/<string:lid>', methods = ['GET', 'POST'])
def deletelec(lid):
    if('user' in session and session['user'] == params['admin_id']):
        lect = Lecture.query.filter_by(lid=lid).first()
        db.session.delete(lect)
        db.session.commit()
    return redirect('/lecturefatch')


@app.route('/deleteuser/<string:user_name>', methods = ['GET', 'POST'])
def deleteuser(user_name):
    if('user' in session and session['user'] == params['admin_id']):
        ac = Accounts.query.filter_by(user_name=user_name).first()
        db.session.delete(ac)
        db.session.commit()
    return redirect('/usernfo')


@app.route('/deletebuyformuser/<string:user_name>', methods = ['GET', 'POST'])
def deletebuyformuser(user_name):
    if('user' in session and session['user'] == params['admin_id']):
        am = Coursebuyform.query.filter_by(sn=user_name).first()
        db.session.delete(am)
        db.session.commit()
    return redirect('/formfatch')

@app.route("/formfatch", methods = ['GET'])
def formfatch():
    if('user' in session and session['user'] == params['admin_id']):
        fatchform = Coursebuyform.query.all()
        return render_template('formfatch.html', params=params, fatchform = fatchform)


@app.route("/public", methods = ['GET'])
def public():
    if 'username' in session:
        btntext = "sign out"
        btnlink = "/signout"
        lectu = Lecture.query.filter_by(category='public').all()
        return render_template('public.html', params=params, lectu=lectu, btntext=btntext, btnlink=btnlink)
    else:
        btntext = "sign in"
        btnlink = "/signin"
        lectu = Lecture.query.filter_by(category='public').all()
        return render_template('public.html', params=params, lectu=lectu, btntext=btntext, btnlink=btnlink)

@app.route("/public/<string:video>", methods = ['GET', 'POST'])
def lecturepublic(video):
    if 'username' in session:
        btntext = "sign out"
        btnlink = "/signout"
        lectur = Lecture.query.filter_by(video=video).first()
        return render_template("publicfatch.html", params=params, lectur=lectur, btntext=btntext, btnlink=btnlink)
    else:
        btntext = "sign in"
        btnlink = "/signin"
        lectur = Lecture.query.filter_by(video=video).first()
        return render_template("publicfatch.html", params=params, lectur=lectur, btntext=btntext, btnlink=btnlink)


app.run(debug=True)