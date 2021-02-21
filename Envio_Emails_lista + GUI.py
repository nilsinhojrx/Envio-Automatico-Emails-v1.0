# -*- coding: utf-8 -*-
"""
Envio automático de e-mails- VERSÃO FINAL

@author: nilsinho j
"""

# interface gráfica usando TKinter e PAGE;

import sys # System-specific parameters and functions (nome do módulo)

try: # tratamento de exceções, erros na execução
    import Tkinter as tk
except ImportError:
    import tkinter as tk

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

# Importações para envio dos emails
from email.mime.multipart import MIMEMultipart; 
from email.mime.text import MIMEText;
import smtplib as sp; 
# Interface gráfica Tkinter   
from tkinter import *
from tkinter import filedialog

# Variável que receberá o caminho da lista de emails
file_path = ""    
def EnviaEmail():
    msg = MIMEMultipart()
    
    if not (file_path == ''):
        emails = open(file_path, 'r')
        Emails = emails.readlines()
        Emails = list(map(lambda x: x.replace("\n", ""), Emails)) 
          
    for c in range(len(Emails)):
        msg = MIMEMultipart()
        msg['to'] = str(Emails[c])
        msg['From'] = entry_nome.get()
        msg['subject'] = entry_ass.get()
        #criando a mensagem    
        mensagem = MIMEText( entry_msg.get() )
        msg.attach(mensagem)
            
        try:
            with sp.SMTP(host='smtp.gmail.com', port='587') as smtp:
                smtp.ehlo()
                smtp.starttls()
                smtp.login(entry_email.get(), entry_senha.get())
                smtp.send_message(msg)
                
                print('E-mail enviado com sucesso!')     
        except:
             print('Erro ao enviar E-mail!')
                
# Função que localiza e abre a lista de e-mails

def PegaArquivo():
   global file_path
   file_path = filedialog.askopenfilename()
     
   
    
# Costrução da interface gráfica com Tkinter
top = tk.Tk() # Colocar o top como instância da classe tk. Criação da janela principal

# Configurações da Janela principal 1
_bgcolor = '#d9d9d9'  # X11 color: 'gray85'
_fgcolor = '#0000 00'  # X11 color: 'black'
_compcolor = '#d9d9d9' # X11 color: 'gray85'
_ana1color = '#d9d9d9' # X11 color: 'gray85'
_ana2color = '#ececec' # Closest X11 color: 'gray92'
style = ttk.Style()

if sys.platform == "win32": # condição para verificar a arquitetura do windows 32/64 bits
    style.theme_use('winnative')
style.configure('.',background=_bgcolor)
style.configure('.',foreground=_fgcolor)
style.configure('.',font="TkDefaultFont")
style.map('.',background=
    [('selected', _compcolor), ('active',_ana2color)])

# Configurações da tela principal da interface 2
top.geometry("600x600")
top.minsize(120, 1)
top.maxsize(1540, 845)
top.resizable(1,  1)
top.title("Envio automático de E-mails") # texto que aparecerá no topo da janelea
top.configure(background="#d9d9d9")

# Configurações do rótulo "Nome" em noss tela principal
Nome = tk.Label(top)
Nome.place(relx=0.05, rely=0.017, height=41, width=64)
Nome.configure(background="#d9d9d9")
Nome.configure(cursor="fleur")
Nome.configure(disabledforeground="#a3a3a3")
Nome.configure(font="-family {Open Sans} -size 14")
Nome.configure(foreground="#000000")
Nome.configure(text='''Nome''')

# Espaço para inserir o nome
entry_nome = tk.Entry(top)
entry_nome.place(relx=0.05, rely=0.083, height=20, relwidth=0.507)
entry_nome.configure(background="white")
entry_nome.configure(disabledforeground="#a3a3a3")
entry_nome.configure(font="TkFixedFont")
entry_nome.configure(foreground="#000000")
entry_nome.configure(insertbackground="black")

# Configurações do rótulo E-mail
E_mail = tk.Label(top)
E_mail.place(relx=0.05, rely=0.125, height=41, width=64)
E_mail.configure(activebackground="#f9f9f9")
E_mail.configure(activeforeground="black")
E_mail.configure(background="#d9d9d9")
E_mail.configure(disabledforeground="#a3a3a3")
E_mail.configure(font="-family {Open Sans} -size 14")
E_mail.configure(foreground="#000000")
E_mail.configure(highlightbackground="#d9d9d9")
E_mail.configure(highlightcolor="black")
E_mail.configure(text='''E-mail''')

# Local para digitar o e-mail
entry_email = tk.Entry(top)
entry_email.place(relx=0.05, rely=0.2, height=20, relwidth=0.507)
entry_email.configure(background="white")
entry_email.configure(disabledforeground="#a3a3a3")
entry_email.configure(font="TkFixedFont")
entry_email.configure(foreground="#000000")
entry_email.configure(highlightbackground="#d9d9d9")
entry_email.configure(highlightcolor="black")
entry_email.configure(insertbackground="black")
entry_email.configure(selectbackground="blue")
entry_email.configure(selectforeground="white")

# Configurações do rótulo "Senha" em nossa tela principal
Senha = tk.Label(top)
Senha.place(relx=0.05, rely=0.233, height=41, width=64)
Senha.configure(activebackground="#f9f9f9")
Senha.configure(activeforeground="black")
Senha.configure(background="#d9d9d9")
Senha.configure(disabledforeground="#a3a3a3")
Senha.configure(font="-family {Open Sans} -size 14")
Senha.configure(foreground="#000000")
Senha.configure(highlightbackground="#d9d9d9")
Senha.configure(highlightcolor="black")
Senha.configure(text='''Senha''')

# Local para digitar a senha
entry_senha = tk.Entry(top)
entry_senha.place(relx=0.05, rely=0.3, height=20, relwidth=0.507)
entry_senha.configure(background="white")
entry_senha.configure(show="*") #Ocultar os caracteres da senha digitada
entry_senha.configure(disabledforeground="#a3a3a3")
entry_senha.configure(font="TkFixedFont")
entry_senha.configure(foreground="#000000")
entry_senha.configure(highlightbackground="#d9d9d9")
entry_senha.configure(highlightcolor="black")
entry_senha.configure(insertbackground="black")
entry_senha.configure(selectbackground="blue")
entry_senha.configure(selectforeground="white")

# Configurações do rótulo Assunto
Ass = tk.Label(top)
Ass.place(relx=0.05, rely=0.333, height=41, width=84)
Ass.configure(activebackground="#f9f9f9")
Ass.configure(activeforeground="black")
Ass.configure(background="#d9d9d9")
Ass.configure(cursor="fleur")
Ass.configure(disabledforeground="#a3a3a3")
Ass.configure(font="-family {Open Sans} -size 14")
Ass.configure(foreground="#000000")
Ass.configure(highlightbackground="#d9d9d9")
Ass.configure(highlightcolor="black")
Ass.configure(text='''Assunto''')

# Local para digitar o assunto da mensagem
entry_ass = tk.Entry(top)
entry_ass.place(relx=0.05, rely=0.4, height=20, relwidth=0.59)
entry_ass.configure(background="white")
entry_ass.configure(disabledforeground="#a3a3a3")
entry_ass.configure(font="TkFixedFont")
entry_ass.configure(foreground="#000000")
entry_ass.configure(highlightbackground="#d9d9d9")
entry_ass.configure(highlightcolor="black")
entry_ass.configure(insertbackground="black")
entry_ass.configure(selectbackground="blue")
entry_ass.configure(selectforeground="white")

# Configuração do rótulo Mensagem
Msg = tk.Label(top)
Msg.place(relx=0.05, rely=0.433, height=41, width=114)
Msg.configure(activebackground="#f9f9f9")
Msg.configure(activeforeground="black")
Msg.configure(background="#d9d9d9")
Msg.configure(disabledforeground="#a3a3a3")
Msg.configure(font="-family {Open Sans} -size 14")
Msg.configure(foreground="#000000")
Msg.configure(highlightbackground="#d9d9d9")
Msg.configure(highlightcolor="black")
Msg.configure(text='''Mensagem''')

# Local para digitar toda a mensagem que será enviada
entry_msg = tk.Entry(top)
entry_msg.place(relx=0.05, rely=0.5, height=110, relwidth=0.773)
entry_msg.configure(background="white")
entry_msg.configure(disabledforeground="#a3a3a3")
entry_msg.configure(font="TkFixedFont")
entry_msg.configure(foreground="#000000")
entry_msg.configure(highlightbackground="#d9d9d9")
entry_msg.configure(highlightcolor="black")
entry_msg.configure(insertbackground="black")
entry_msg.configure(selectbackground="blue")
entry_msg.configure(selectforeground="white")

# Configurações da barra separadora
barra = ttk.Separator(top)
barra.place(relx=0.05, rely=0.717,  relwidth=0.9)

# Botão abrir lista de e-mails
Abrir = tk.Button(top, command=PegaArquivo)
Abrir.place(relx=0.05, rely=0.75, height=44, width=127)
Abrir.configure(activebackground="#ececec")
Abrir.configure(activeforeground="#000000")
Abrir.configure(background="#0080ff")
Abrir.configure(disabledforeground="#a3a3a3")
Abrir.configure(font="-family {Open Sans} -size 12 -weight bold")
Abrir.configure(foreground="#000000")
Abrir.configure(highlightbackground="#d9d9d9")
Abrir.configure(highlightcolor="black")
Abrir.configure(pady="0")
Abrir.configure(text='''Abrir Lista''')

# Botão enviar mensagem
Enviar = tk.Button(top, command=EnviaEmail)
Enviar.place(relx=0.05, rely=0.867, height=44, width=127)
Enviar.configure(activebackground="#ececec")
Enviar.configure(activeforeground="#000000")
Enviar.configure(background="#0080ff")
Enviar.configure(disabledforeground="#a3a3a3")
Enviar.configure(font="-family {Open Sans} -size 12 -weight bold")
Enviar.configure(foreground="#000000")
Enviar.configure(highlightbackground="#d9d9d9")
Enviar.configure(highlightcolor="black")
Enviar.configure(pady="0")
Enviar.configure(text='''Enviar''')

top.mainloop() # executar o top declarado lá em cima
