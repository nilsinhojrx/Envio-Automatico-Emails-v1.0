# -*- coding: utf-8 -*-
"""
Software de envio automático de e-mails
"""
# Pacotes utilizados
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib as sp

#função de enviar emails
def enviaemail(From, To, Assunto, Login, Senha, txt):
    msg = MIMEMultipart()
    msg['to'] = To
    msg['From'] = From
    msg['subject'] = Assunto
    
    mensage = MIMEText(txt)
    
    msg.attach(mensage)
    
    try:
        with sp.SMTP(host='smtp.gmail.com', port='587') as smtp: # caso use outro provedor de e-mails, sugiro pesquisar qual host e port deve ser usada.
            smtp.ehlo()
            smtp.starttls()
            smtp.login(Login, Senha)
            smtp.send_message(msg)
            
        print('E-mail enviado com sucesso!')     
    except:
        print('Erro ao enviar E-mail!')

# Dados para envio das mensagens
txt = 'Olá, tudo bem? Como estão as coisas? Estou desenvolendo um sofware que envia e-mails automático e usei o E-mail de Nilson como teste.'
usuario = input("Digite o e-mail de usuário: ")
senha = input("Digite a senha: ")
destinatario = input("Digite o e-mail do destinatário: ")
ass = input("Digite o assunto da mensagem: ")
From = input("Digite o nome de quem está enviando a mensagem: ")

# Invocando a função
enviaemail(From, To, ass, usuario , senha , txt )
