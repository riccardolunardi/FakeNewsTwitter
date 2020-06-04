## store api keys (these are fake example values; replace with your own keys)
library(rtweet)

api_key <- "9A3jSmNYNbi1YI04TCZuAnlAY"
api_secret_key <- "hooashss9EyIngpcW8BIRSnfdA2TNBOLNl8l9iAbQOg9Tlac1Z"
access_token <- "3056253842-DzPzPjCkHSc5zGq3GAcf6cycWS7ydXIglMHlYfp"
access_token_secret <- "SZeQYEgOJmxU02NvbuqarBYewDNPwaU5qfD25dtAJecDs"

## Autenticazione via API keys
token <- create_token(
  app = "FakeNewsUniUd",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret)

## Raccogli lo stream di tweet per un giorno. Readr velocizza il processo di parsing
library(readr)

stream_tweets(
  "lastella.altervista.org,mafia-capitale.it,tankerenemy.com,ilfattoquotidaino.it,socialbuzz.it,luogocomune.net,dionidream.com,mondodeglianimali.altervista.org,sapereeundovere.com,rimediprodottinaturali.net,notiziepericolose.blogspot.it,ilbazarinformazione.blogspot.it,pianetablunews.wordpress.com,scenarieconomici.it,saltoquantico.org,facebook.com/Prima-gli-Italiani-132834097319942,notizieinmovimentonews.blogspot.it,italianiperlapatria.info,cronacaora.it,iocritico.com,fascinazione.info,autismovaccini.org,aidaa-animaliambiente.blogspot.it,newscronaca.it,mafia-capitale.it,signoraggio.it,viaggialowcost.altervista.org,grandecocomero.com,facebook.com/RobyFanpage.it,albainternazionale.blogspot.it,voxnews.info,perdavvero.com,nocensura.com,essere-informati.it,tuttoinweb.com,direttanews.it,tmcrew.org,tanker-enemy.com,thuglifevideos.com,informatitalia.blogspot.it,disinformazione.it,riscattonazionale.org,facebook.com/StopInvasioneClandestina,facebook.com/Scienza-di-Confine-188189217954979,direttanews24.com,centrometeoitaliano.it,evidenzaliena.altervista.org,videoviraliweb.com,retenews24.it,cvdiariodelpollinho.altervista.org,irresponsabile.com,piccolocuore.it,ioco.altervista.org,worldnewsdailyreport.com,controinformo.eu,ilmessaggio.it,actionweb24.com,stampa-lazio.com,piovegovernoladro.info,blogopenyoureyes.altervista.org,attivotv.it,breaknotizie.com,sostenitori.info,notiziariosegreto.wordpress.com,facebook.com/uncaffealgiornoofficial,secretnews.fr,chiaveorgonica.altervista.org,gazzettadellasera.com,vnews24.it,tg-quotidiano.org,informarexresistere.fr,tgnewsitalia.itwp,anno3000.altervista.org,tg5stelle.it,devinformarti.blogspot.it,ilquotidaino.wordpress.com,jedanews.itblog,internapoli.it,tuttiicriminidegliimmigrati.com,ilcorrieredellanotte.it,superbamente.com,facebook.com/oggi24ore,facebook.com/sardegnatoday,sulatestagiannilannes.blogspot.it,italianosveglia.com,imolaoggi.it,segnidalcielo.it,vacciniinforma.it,informare.over-blog.it,liberogiornale.com,facebook.com/noncielodicono,oggi24ore.altervista.org,ilcorriere.cloud,notiziespericolate.com,tg24-ore.com,direttanfo.blogspot.it,ilfattoquotidiano.it,ilsole24ore.com,ansa.it,ilmessaggero.it,tgcom24.mediaset.it,corriere.it,repubblica.it,agi.it,lastampa.it",
  timeout = 60*60*24*7,
  file_name = paste("data/day", Sys.Date(), sep=""),
  parse = TRUE
)
