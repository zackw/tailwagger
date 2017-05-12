#! /usr/bin/python3

import re

http_scheme_re = re.compile("(?i)^https?://")

# The following regular expression was derived from three different
# online lists of short-url services using emacs' regexp-opt utility:
# (regexp-opt '("1link.in" "1url.com" "2big.at" "2pl.us" "2tu.us"
# "2ya.com" "301.li" "4url.cc" "6url.com" "7vd.cn" "a.gg" "a.nf"
# "a2a.me" "abbrr.com" "adcraft.co" "adcrun.ch" "adf.ly" "adjix.com"
# "aka.gr" "alturl.com" "atu.ca" "b23.ru" "b54.in" "bacn.me" "bc.vc"
# "bit.do" "bit.ly" "bitly.com" "bkite.com" "bloat.me" "budurl.com"
# "buk.me" "burnurl.com" "buzurl.com" "c-o.in" "chilp.it" "clck.ru"
# "cli.gs" "clickmeter.com" "cort.as" "cur.lv" "cutt.us" "cuturl.com"
# "db.tt" "decenturl.com" "dfl8.me" "dft.ba" "digbig.com" "doiop.com"
# "dwarfurl.com" "dy.fi" "easyuri.com" "easyurl.net" "eepurl.com"
# "esyurl.com" "ewerl.com" "fa.b" "ff.im" "fff.to" "fhurl.com"
# "filoops.info" "fire.to" "firsturl.de" "flic.kr" "fly2.ws" "fon.gs"
# "fwd4.me" "gg.gg" "gl.am" "go.9nl.com" "go2.me" "go2cut.com"
# "goo.gl" "goshrink.com" "gowat.ch" "gri.ms" "gurl.es" "hellotxt.com"
# "hex.io" "hover.com" "href.in" "ht.ly" "htxt.it" "hugeurl.com"
# "hurl.it" "hurl.me" "hurl.ws" "icanhaz.com" "idek.net" "inreply.to"
# "is.gd" "iscool.net" "iterasi.net" "ity.im" "j.mp" "jijr.com"
# "jin.ni" "jmp2.net" "just.as" "kissa.be" "kl.am" "klck.me"
# "korta.nu" "krunchd.com" "lemde.fr" "liip.to" "liltext.com" "lin.cr"
# "linkbee.com" "linkbun.ch" "liurl.cn" "ln-s.net" "ln-s.ru" "lnk.gd"
# "lnk.in" "lnkd.in" "loopt.us" "lru.jp" "lt.tl" "lurl.no" "mcaf.ee"
# "metamark.net" "migre.me" "minilien.com" "miniurl.com" "minurl.fr"
# "moourl.com" "myurl.in" "ne1.net" "ne8.org" "njx.me" "nn.nf"
# "notlong.com" "nsfw.in" "o-x.fr" "om.ly" "ow.ly" "pd.am" "pgj.cc"
# "pic.gd" "ping.fm" "piurl.com" "pnt.me" "poprl.com" "post.ly"
# "posted.at" "prettylinkpro.com" "profile.to" "q.gs" "qicute.com"
# "qlnk.net" "qr.ae" "qr.net" "quip-art.com" "rb6.me" "rdd.me"
# "redirx.com" "ri.ms" "rickroll.it" "riz.gd" "rsmonkey.com" "ru.ly"
# "rubyurl.com" "s7y.us" "safe.mn" "scrnch.me" "sharein.com"
# "sharetabs.com" "shorl.com" "short.ie" "short.to" "shortlinks.co.uk"
# "shortna.me" "shorturl.com" "shoturl.us" "shrinkify.com"
# "shrinkster.com" "shrt.st" "shrten.com" "shrunkin.com" "shw.me"
# "simurl.com" "sir.bz" "slink.co" "sn.im" "snipr.com" "snipurl.com"
# "snurl.com" "sp2.ro" "spedr.com" "sqrl.it" "starturl.com"
# "sturly.com" "su.pr" "sze.me" "t.co" "tcrn.ch" "theurl.co"
# "thrdl.es" "tighturl.com" "tiny.cc" "tiny.pl" "tiny.tw"
# "tiny123.com" "tinyarro.ws" "tinytw.it" "tinyuri.ca" "tinyurl.com"
# "tinyvid.io" "tnij.org" "to.ly" "togoto.us" "tr.im" "tr.my"
# "traceurl.com" "turo.us" "tweez.me" "twirl.at" "twit.ac"
# "twitterpan.com" "twitthis.com" "twiturl.de" "twurl.cc" "twurl.nl"
# "tyn.ee" "u.bb" "u.mavrev.com" "u.nu" "u.to" "u6e.de" "ub0.cc"
# "updating.me" "ur1.ca" "url.co.uk" "url.ie" "url4.eu" "urlao.com"
# "urlbrief.com" "urlcover.com" "urlcut.com" "urlenco.de"
# "urlhawk.com" "urlkiss.com" "urlof.site" "urlof.us" "urlot.com"
# "urlpire.com" "urlx.ie" "urlx.org" "urlzen.com" "v.gd"
# "viralurl.biz" "viralurl.com" "virl.com" "virl.ws" "vl.am" "vur.me"
# "vurl.bz" "vurl.com" "vzturl.com" "w3t.org" "wapurl.co.uk" "wif.red"
# "wipi.es" "wp.me" "x.co" "x.se" "xaddr.com" "xeeurl.com" "xr.com"
# "xrl.in" "xrl.us" "xurl.jp" "xzb.cc" "y.ahoo.it" "yep.it"
# "yfrog.com" "yourls.org" "youtu.be" "yweb.com" "zi.ma" "zi.pe"
# "zipmyurl.com" "zpag.es" "zz.gd"))
short_url_re = re.compile(
    "(?i)(?:\\.|//)(?:1(?:link\\.in|url\\.com)|2(?:big\\.at|pl\\.us|tu\\.us|"
    "ya\\.com)|301\\.li|4url\\.cc|6url\\.com|7vd\\.cn|a(?:\\.(?:gg|nf)|"
    "2a\\.me|bbrr\\.com|d(?:cr(?:aft\\.co|un\\.ch)|f\\.ly|jix\\.com)|ka\\.gr|"
    "lturl\\.com|tu\\.ca)|b(?:23\\.ru|54\\.in|acn\\.me|c\\.vc|it(?:\\.(?:do|"
    "ly)|ly\\.com)|kite\\.com|loat\\.me|u(?:durl\\.com|k\\.me|(?:rn|"
    "z)url\\.com))|c(?:-o\\.in|hilp\\.it|l(?:ck\\.ru|i(?:\\.gs|ckmeter\\.com))|"
    "ort\\.as|u(?:r\\.lv|t(?:t\\.us|url\\.com)))|d(?:b\\.tt|ecenturl\\.com|"
    "f(?:l8\\.me|t\\.ba)|igbig\\.com|oiop\\.com|warfurl\\.com|y\\.fi)|"
    "e(?:asyur(?:i\\.com|l\\.net)|(?:epu|syu|we)rl\\.com)|f(?:a\\.b|f(?:\\.im|"
    "f\\.to)|hurl\\.com|i(?:loops\\.info|r(?:e\\.to|sturl\\.de))|l(?:ic\\.kr|"
    "y2\\.ws)|on\\.gs|wd4\\.me)|g(?:g\\.gg|l\\.am|o(?:\\.9nl\\.com|2(?:\\.me|"
    "cut\\.com)|o\\.gl|shrink\\.com|wat\\.ch)|(?:ri\\.m|url\\.e)s)|"
    "h(?:e(?:llotxt\\.com|x\\.io)|over\\.com|ref\\.in|t(?:\\.ly|xt\\.it)|"
    "u(?:geurl\\.com|rl\\.(?:it|me|ws)))|i(?:canhaz\\.com|dek\\.net|"
    "nreply\\.to|s(?:\\.gd|cool\\.net)|t(?:erasi\\.net|y\\.im))|"
    "j(?:\\.mp|i(?:jr\\.com|n\\.ni)|mp2\\.net|ust\\.as)|k(?:issa\\.be|"
    "l(?:\\.am|ck\\.me)|orta\\.nu|runchd\\.com)|l(?:emde\\.fr|i(?:ip\\.to|"
    "ltext\\.com|n(?:\\.cr|kb(?:ee\\.com|un\\.ch))|url\\.cn)|n(?:-s\\.(?:net|"
    "ru)|k(?:\\.(?:gd|in)|d\\.in))|oopt\\.us|ru\\.jp|t\\.tl|url\\.no)|"
    "m(?:caf\\.ee|etamark\\.net|i(?:gre\\.me|n(?:i(?:(?:lien|url)\\.com)|"
    "url\\.fr))|oourl\\.com|yurl\\.in)|n(?:e(?:1\\.net|8\\.org)|jx\\.me|"
    "n\\.nf|otlong\\.com|sfw\\.in)|o(?:-x\\.fr|[mw]\\.ly)|p(?:d\\.am|"
    "gj\\.cc|i(?:c\\.gd|(?:ng\\.f|url\\.co)m)|nt\\.me|o(?:prl\\.com|"
    "st(?:\\.ly|ed\\.at))|r(?:ettylinkpro\\.com|ofile\\.to))|q(?:\\.gs|"
    "icute\\.com|lnk\\.net|r\\.(?:ae|net)|uip-art\\.com)|r(?:b6\\.me|dd\\.me|"
    "edirx\\.com|i(?:\\.ms|ckroll\\.it|z\\.gd)|smonkey\\.com|u(?:\\.ly"
    "|byurl\\.com))|s(?:7y\\.us|afe\\.mn|crnch\\.me|h(?:are(?:(?:in|"
    "tabs)\\.com)|o(?:r(?:l\\.com|t(?:\\.(?:ie|to)|links\\.co\\.uk|na\\.me|"
    "url\\.com))|turl\\.us)|r(?:ink(?:(?:ify|ster)\\.com)|t(?:\\.st|en\\.com)|"
    "unkin\\.com)|w\\.me)|i(?:murl\\.com|r\\.bz)|link\\.co|n(?:(?:\\.i|"
    "(?:ip(?:r|url)|url)\\.co)m)|p(?:2\\.ro|edr\\.com)|qrl\\.it|t(?:(?:arturl|"
    "urly)\\.com)|u\\.pr|ze\\.me)|t(?:\\.co|crn\\.ch|h(?:eurl\\.co|rdl\\.es)|"
    "i(?:ghturl\\.com|ny(?:\\.(?:cc|pl|tw)|123\\.com|arro\\.ws|tw\\.it|"
    "ur(?:i\\.ca|l\\.com)|vid\\.io))|nij\\.org|o(?:\\.ly|goto\\.us)|"
    "r(?:\\.(?:im|my)|aceurl\\.com)|uro\\.us|w(?:eez\\.me|i(?:rl\\.at|"
    "t(?:\\.ac|t(?:(?:erpan|his)\\.com)|url\\.de))|url\\.(?:cc|nl))|yn\\.ee)|"
    "u(?:\\.(?:bb|mavrev\\.com|nu|to)|6e\\.de|b0\\.cc|pdating\\.me|r(?:1\\.ca|"
    "l(?:\\.(?:co\\.uk|ie)|4\\.eu|ao\\.com|brief\\.com|c(?:(?:over|ut)\\.com)|"
    "enco\\.de|hawk\\.com|kiss\\.com|o(?:f\\.(?:site|us)|t\\.com)|pire\\.com|"
    "x\\.(?:ie|org)|zen\\.com)))|v(?:\\.gd|ir(?:alurl\\.(?:biz|com)|l\\.(?:com|"
    "ws))|l\\.am|ur(?:\\.me|l\\.(?:bz|com))|zturl\\.com)|w(?:3t\\.org|"
    "apurl\\.co\\.uk|i(?:f\\.red|pi\\.es)|p\\.me)|x(?:\\.(?:co|se)|addr\\.com|"
    "eeurl\\.com|r(?:\\.com|l\\.(?:in|us))|url\\.jp|zb\\.cc)|y(?:\\.ahoo\\.it|"
    "ep\\.it|frog\\.com|ou(?:rls\\.org|tu\\.be)|web\\.com)|z(?:i(?:\\.(?:ma|"
    "pe)|pmyurl\\.com)|pag\\.es|z\\.gd))"
    "(?:$|[/?;#])")

# The following regular expressions were all derived from Debian's
# /etc/mime.types, again using regexp-opt.
noext_re = re.compile("(?i)/[^/?;#.]*(?:$|[?#;])")

# (regexp-opt '("asp" "aspx" "atom" "cfm" "cgi" "do" "htm" "html"
#  "jsp" "mml" "php" "php3" "php3p" "php4" "php5" "phps" "pht" "phtm"
#  "phtml" "rdf" "rht" "rhtm" "rhtml" "sht" "shtm" "shtml" "xht"
#  "xhtm" "xhtml"))
html_re = re.compile("(?i)/[^/?;#]+?\\."
                     "(?:a(?:spx?|tom)|c(?:fm|gi)|do|html?|jsp|mml|"
                     "ph(?:p(?:3p|[345s])|tml?|[pt])|r(?:df|ht(?:ml?)?)|"
                     "sht(?:ml?)?|xht(?:ml?)?)"
                     "(?:$|[?;#])")


# (regexp-opt '("asc" "bib" "brf" "latex" "ltx" "lyx" "man" "markdown" "md"
#  "me" "ms" "pot" "roff" "rtx" "srt" "t" "tex" "texi" "texinfo" "text" "tm"
#  "tr" "txt"))
text_re = re.compile("(?i)/[^/?;#]+?\\."
                     "(?:asc|b(?:ib|rf)|l(?:(?:ate|[ty])x)|"
                     "m(?:a(?:(?:rkdow)?n)|[des])|pot|r(?:off|tx)|srt|"
                     "t(?:ex(?:info|[it])?|xt|[mr])?)"
                     "(?:$|[?;#])")

# (regexp-opt '("abw" "ai" "book" "doc" "docm" "docx" "dot" "dotm" "dotx"
#  "dvi" "eps" "eps2" "eps3" "epsf" "epsi" "fb" "fbdoc" "fm" "frame" "frm"
#  "gnumeric" "kpr" "kpt" "ksp" "kwd" "kwt" "maker" "nb" "nbp" "odb" "odc"
#  "odf" "odg" "odi" "odm" "odp" "ods" "odt" "otg" "oth" "otp" "ots" "ott"
#  "pdf" "potm" "potx" "ppam" "pps" "ppsm" "ppsx" "ppt" "pptm" "pptx" "ps"
#  "rtf" "sda" "sdc" "sdd" "sds" "sdw" "sgl" "sldm" "sldx" "stc" "std" "sti"
#  "stw" "sxc" "sxd" "sxg" "sxi" "sxm" "sxw" "wp5" "wpd" "xlam" "xlb" "xls"
#  "xlsb" "xlsm" "xlsx" "xlt" "xltm" "xltx"))
doc_re = re.compile("(?i)/[^/?;#]+?\\."
                    "(?:a(?:bw|i)|book|d(?:o(?:c[mx]|t[mx]|[ct])|vi)|"
                    "eps[23fi]?|f(?:bdoc|r(?:ame|m)|[bm])|gnumeric|"
                    "k(?:p[rt]|sp|w[dt])|maker|nbp?|o(?:d[bcfgimpst]|t[ghpst])|"
                    "p(?:df|ot[mx]|p(?:am|s[mx]|t[mx]|[st])|s)|rtf|"
                    "s(?:d[acdsw]|gl|ld[mx]|t[cdiw]|x[cdgimw])|"
                    "wp[5d]|xl(?:am|s[bmx]|t[mx]|[bst]))"
                    "(?:$|[?;#])")

# (regexp-opt '("323" "3gp" "7z" "aif" "aifc" "aiff" "alc" "amr" "anx" "apk"
#  "appcache" "application" "art" "asf" "asn" "asn" "aso" "asx" "atomcat"
#  "atomsrv" "au" "avi" "awb" "axa" "axv" "b" "bat" "bcpio" "bin" "bmp" "boo"
#  "bsd" "c" "c++" "c3d" "cab" "cac" "cache" "cap" "cascii" "cat" "cbin" "cbr"
#  "cbz" "cc" "cda" "cdf" "cdr" "cdt" "cdx" "cdy" "cef" "cer" "chm" "chrt"
#  "cif" "class" "cls" "cmdf" "cml" "cod" "com" "cpa" "cpio" "cpp" "cpt" "cpt"
#  "cr2" "crl" "crt" "crw" "csd" "csf" "csh" "csh" "csm" "csml" "css" "csv"
#  "ctab" "ctx" "cu" "cub" "cxf" "cxx" "d" "davmount" "dcm" "dcr" "ddeb" "deb"
#  "deb" "deploy" "dif" "diff" "dir" "djv" "djvu" "dl" "dll" "dmg" "dms" "dv"
#  "dx" "dxr" "emb" "embl" "eml" "ent" "ent" "eot" "erf" "es" "etx" "exe" "ez"
#  "fch" "fchk" "fig" "flac" "fli" "flv" "gal" "gam" "gamin" "gan" "gau" "gcd"
#  "gcf" "gcg" "gen" "gf" "gif" "gjc" "gjf" "gl" "gpt" "gsf" "gsm" "gtar" "gz"
#  "h" "h++" "hdf" "hh" "hin" "hpp" "hqx" "hs" "hta" "htc" "hwp" "hxx" "ica"
#  "ice" "ico" "ics" "icz" "ief" "iges" "igs" "iii" "info" "inp" "ins" "iso"
#  "isp" "ist" "istr" "jad" "jam" "jar" "java" "jdx" "jmz" "jng" "jnlp" "jp2"
#  "jpe" "jpeg" "jpf" "jpg" "jpg2" "jpm" "jpx" "js" "json" "kar" "key" "kil"
#  "kin" "kml" "kmz" "lha" "lhs" "lin" "lsf" "lsx" "ly" "lzh" "lzx" "m3g"
#  "m3u" "m3u" "m3u8" "m4a" "manifest" "mbox" "mcif" "mcm" "mdb" "mesh" "mid"
#  "midi" "mif" "mif" "mkv" "mm" "mmd" "mmf" "mmod" "mng" "moc" "mol" "mol2"
#  "moo" "mop" "mopcrt" "mov" "movie" "mp2" "mp3" "mp4" "mpc" "mpe" "mpeg"
#  "mpega" "mpg" "mpga" "mph" "mpv" "msh" "msi" "msp" "msu" "mvb" "mxf" "mxu"
#  "nc" "nef" "nwc" "o" "oda" "oga" "ogg" "ogv" "ogx" "one" "onepkg" "onetmp"
#  "onetoc2" "opf" "opus" "orc" "orf" "otf" "oza" "p" "p7r" "pac" "pas" "pat"
#  "patch" "pbm" "pcap" "pcf" "pcf.Z" "pcx" "pdb" "pfa" "pfb" "pfr" "pgm"
#  "pgn" "pgp" "pk" "pl" "pls" "pm" "png" "pnm" "ppm" "prf" "prt" "psd" "py"
#  "pyc" "pyo" "qgs" "qt" "qtl" "ra" "ra" "ram" "rar" "ras" "rb" "rd" "rdp"
#  "rgb" "rm" "ros" "rpm" "rss" "rxn" "scala" "sce" "sci" "sco" "scr" "sct"
#  "sd" "sd2" "sdf" "ser" "sfd" "sfv" "sgf" "sh" "sh" "shar" "shp" "shx" "sid"
#  "sig" "sik" "silo" "sis" "sisx" "sit" "sitx" "skd" "skm" "skp" "skt" "smi"
#  "smi" "smil" "snd" "spc" "spl" "spl" "spx" "sql" "src" "stl" "stl" "sty"
#  "sv4cpio" "sv4crc" "svg" "svgz" "sw" "swf" "swfl" "tar" "taz" "tcl" "tcl"
#  "tgf" "tgz" "thmx" "tif" "tiff" "tk" "torrent" "ts" "tsp" "tsv" "ttf" "ttl"
#  "udeb" "udeb" "uls" "ustar" "val" "vcard" "vcd" "vcf" "vcs" "vmd" "vms"
#  "vrm" "vrml" "vrml" "vsd" "vss" "vst" "vsw" "wad" "wav" "wax" "wbmp"
#  "wbxml" "webm" "wk" "wm" "wma" "wmd" "wml" "wmlc" "wmls" "wmlsc" "wmv"
#  "wmx" "wmz" "woff" "wrl" "wrl" "wsc" "wvx" "wz" "x3d" "x3db" "x3dv" "xbm"
#  "xcf" "xcos" "xml" "xpi" "xpm" "xsd" "xsl" "xslt" "xspf" "xtel" "xul" "xwd"
#  "xyz" "xz" "zip" "zmt"))
data_re = re.compile(
    "(?i)/[^/?;#]+?\\."
    "(?:3(?:23|gp)|7z|a(?:if[cf]?|lc|mr|nx|p(?:k|p(?:cache|lication))|rt|"
    "s[fnox]|tom(?:cat|srv)|u|vi|wb|x[av])|b(?:at|cpio|in|mp|oo|sd)|"
    "c(?:\\+\\+|3d|a(?:che|scii|[bcpt])|b(?:in|[rz])|d[afrtxy]|e[fr]|"
    "h(?:m|rt)|if|l(?:(?:as)?s)|m(?:df|l)|o[dm]|p(?:io|[apt])|r[2ltw]|"
    "s(?:ml|[dfhmsv])|t(?:ab|x)|ub|x[fx]|[cu])|d(?:avmount|c[mr]|deb|"
    "e(?:b|ploy)|i(?:ff|[fr])|jvu?|ll|m[gs]|xr|[lvx])|e(?:m(?:bl|[bl])|nt|ot|"
    "rf|tx|xe|[sz])|f(?:chk?|ig|l(?:ac|[iv]))|g(?:a(?:min|[lmnu])|c[dfg]|en|"
    "if|j[cf]|pt|s[fm]|tar|[flz])|h(?:\\+\\+|df|in|pp|qx|t[ac]|wp|xx|[hs])|"
    "i(?:c[aeosz]|ef|g(?:e?s)|ii|n(?:fo|[ps])|s(?:tr|[opt]))|j(?:a(?:va|"
    "[dmr])|dx|mz|n(?:g|lp)|p(?:eg|g2|[2efgmx])|s(?:on)?)|k(?:ar|ey|i[ln]|"
    "m[lz])|l(?:h[as]|in|s[fx]|y|z[hx])|m(?:3(?:u8|[gu])|4a|anifest|box|"
    "c(?:if|m)|db|esh|i(?:di|[df])|kv|m(?:od|[df])?|ng|o(?:l2|pcrt|vie|"
    "[clopv])|p(?:ega?|ga|[234ceghv])|s[hipu]|vb|x[fu])|n(?:c|ef|wc)|"
    "o(?:da|g[agvx]|ne(?:pkg|t(?:mp|oc2))?|p(?:f|us)|r[cf]|tf|za)|"
    "p(?:7r|a(?:tch|[cst])|bm|c(?:ap|f\\.Z|[fx])|db|f[abr]|g[mnp]|ls|n[gm]|"
    "pm|r[ft]|sd|y[co]|[klmy])|q(?:gs|tl?)|r(?:a[mrs]|dp|gb|os|pm|ss|xn|"
    "[abdm])|s(?:c(?:ala|[eiort])|d[2f]|er|f[dv]|gf|h(?:ar|[px])|i(?:lo|"
    "[st]x|[dgkst])|k[dmpt]|mil?|nd|p[clx]|ql|rc|t[ly]|v(?:4c(?:pio|rc)|"
    "gz?)|wfl?|[dhw])|t(?:a[rz]|cl|g[fz]|hmx|iff?|orrent|s[pv]|t[fl]|[ks])|"
    "u(?:deb|ls|star)|v(?:al|c(?:ard|[dfs])|m[ds]|rml?|s[dstw])|w(?:a[dvx]|"
    "b(?:mp|xml)|ebm|m(?:l(?:sc|[cs])|[adlvxz])|off|rl|sc|vx|[kmz])|"
    "x(?:3d[bv]?|bm|c(?:f|os)|ml|p[im]|s(?:lt|pf|[dl])|tel|ul|wd|y?z)|"
    "z(?:ip|mt)|[bcdhop])"
    "(?:$|[?;#])")


def classify_url(url):
    if not http_scheme_re.match(url):
        return "non-http"
    if short_url_re.search(url):
        return "short"
    if noext_re.search(url):
        return "noext"
    if html_re.search(url):
        return "html"
    if text_re.search(url):
        return "text"
    if doc_re.search(url):
        return "doc"
    if data_re.search(url):
        return "data"
    return "unknown"

if __name__ == '__main__':
    import sys
    for line in sys.stdin:
        sys.stdout.write(classify_url(line.strip()) + "\n")
