# Thanks to github.com/usernein

import os
import pyrogram

with open('sex.txt') as f:
    os.environ['CAT_FILE'] = f.read()

rom = os.getenv('ROM')
zip = os.getenv('ZIP_NAME')
cat = os.getenv('CAT_FILE')
romurl = os.getenv('ROM_URL')
arm64ab = os.getenv('ARM64AB')
read = os.getenv('READ')

with pyrogram.Client('bot', os.getenv('API_ID'), os.getenv('API_HASH'), bot_token=os.getenv('${{ secrets.TOKEN }}')) as client:
    client.send_message(
        text=f"""<b>{rom} GSI For A/AB Devices</b>

<b>Firmware/rom:</b> <a href="{romurl}">here:P</a>

<b>Information:</b>
<code>{cat}</code>

<b>download ARM64AB:</b> <a href="{dab}">HERE</a>


• <b>Ported using ErfanGSIs Tool - <a href="https://github.com/yukosky/ErfanGSIs">Yuko's Based</a>""",
        chat_id=os.getenv('CHAT_ID'),
        parse_mode="html",
        disable_web_page_preview=True
    )
