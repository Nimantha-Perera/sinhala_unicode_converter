library sinhala_unicode_converter;
// Convert Sinhala text to Unicode
class SinhalaUnicode {
  static String sinhalaToUnicode(String text) {
    text = text.replaceAll(',', '￦');
    text = text.replaceAll('.', '�');
    text = text.replaceAll('(', '￫');
    text = text.replaceAll(')', '￩');
    text = text.replaceAll('%', 'ￕ');
    text = text.replaceAll('/', r'$');
    text = text.replaceAll('–', 'ￔ');
    text = text.replaceAll('?', 'ￓ');
    text = text.replaceAll('!', 'ￒ');
    text = text.replaceAll('=', 'ￏ');
    text = text.replaceAll('\'', 'ￎ');
    text = text.replaceAll('+', 'ￍ');
    text = text.replaceAll(':', 'ￌ');
    text = text.replaceAll('÷', 'ￋ');
    text = text.replaceAll(';', 'ﾶ');
    text = text.replaceAll('ත්‍රෛ', 'ff;%');
    text = text.replaceAll('ශෛ', 'ffY');
    text = text.replaceAll('චෛ', 'ffp');
    text = text.replaceAll('ජෛ', 'ffc');
    text = text.replaceAll('කෛ', 'ffl');
    text = text.replaceAll('මෛ', 'ffu');
    text = text.replaceAll('පෛ', 'ffm');
    text = text.replaceAll('දෛ', 'ffo');
    text = text.replaceAll('තෛ', 'ff;');
    text = text.replaceAll('නෛ', 'ffk');
    text = text.replaceAll('ධෛ', 'ffO');
    text = text.replaceAll('වෛ', 'ffj');
    text = text.replaceAll('ප්‍රෞ', 'fm%!');
    text = text.replaceAll('ෂ්‍යෝ', 'fIHda');
    text = text.replaceAll('ඡ්‍යෝ', 'fPHda');
    text = text.replaceAll('ඪ්‍යෝ', 'fVHda');
    text = text.replaceAll('ඝ්‍යෝ', 'f>Hda');
    text = text.replaceAll('ඛ්‍යෝ', 'fLHda');
    text = text.replaceAll('ළ්‍යෝ', 'f<Hda');
    text = text.replaceAll('ඵ්‍යෝ', 'fMHda');
    text = text.replaceAll('ඨ්‍යෝ', 'fGHda');
    text = text.replaceAll('ශ්‍යෝ', 'fYHda');
    text = text.replaceAll('ක්‍ෂ්‍යෝ', 'fÌHda');
    text = text.replaceAll('බ්‍යෝ', 'fnHda');
    text = text.replaceAll('ච්‍යෝ', 'fpHda');
    text = text.replaceAll('ඩ්‍යෝ', 'fâHda');
    text = text.replaceAll('ෆ්‍යෝ', 'f*Hda');
    text = text.replaceAll('ග්‍යෝ', 'f.Hda');
    text = text.replaceAll('ජ්‍යෝ', 'fcHda');
    text = text.replaceAll('ක්‍යෝ', 'flHda');
    text = text.replaceAll('ල්‍යෝ', 'f,Hda');
    text = text.replaceAll('ම්‍යෝ', 'fuHda');
    text = text.replaceAll('න්‍යෝ', 'fkHda');
    text = text.replaceAll('ප්‍යෝ', 'fmHda');
    text = text.replaceAll('ද්‍යෝ', 'foHda');
    text = text.replaceAll('ස්‍යෝ', 'fiHda');
    text = text.replaceAll('ට්‍යෝ', 'fgHda');
    text = text.replaceAll('ව්‍යෝ', 'fjHda');
    text = text.replaceAll('ත්‍යෝ', 'f;Hda');
    text = text.replaceAll('භ්‍යෝ', 'fNHda');
    text = text.replaceAll('ධ්‍යෝ', 'fOHda');
    text = text.replaceAll('ථ්‍යෝ', 'f:Hda');
    text = text.replaceAll('ෂ්‍යො', 'fIHd');
    text = text.replaceAll('ශ්‍යො', 'fYHd');
    text = text.replaceAll('ඛ්‍යො', 'fLHd');
    text = text.replaceAll('ක්‍ෂ්‍යො', 'fÌHd');
    text = text.replaceAll('බ්‍යො', 'fnHd');
    text = text.replaceAll('ව්‍යො', 'fjHd');
    text = text.replaceAll('ඩ්‍යො', 'fvHd');
    text = text.replaceAll('ෆ්‍යො', 'f*Hd');
    text = text.replaceAll('ග්‍යො', 'f.Hd');
    text = text.replaceAll('ජ්‍යො', 'fcHd');
    text = text.replaceAll('ක්‍යො', 'flHd');
    text = text.replaceAll('ම්‍යො', 'fuHd');
    text = text.replaceAll('ප්‍යො', 'fmHd');
    text = text.replaceAll('ද්‍යො', 'foHd');
    text = text.replaceAll('ස්‍යො', 'fiHd');
    text = text.replaceAll('ට්‍යො', 'fgHd');
    text = text.replaceAll('ව්‍යො', 'fjHd');
    text = text.replaceAll('ත්‍යො', 'f;Hd');
    text = text.replaceAll('භ්‍යො', 'fNHd');
    text = text.replaceAll('ධ්‍යො', 'fOHd');
    text = text.replaceAll('ථ්‍යො', 'f:Hd');
    text = text.replaceAll('ෂ්‍යෙ', 'fIH');
    text = text.replaceAll('ඡ්‍යෙ', 'fPH');
    text = text.replaceAll('ළ්‍යෙ', 'f<H');
    text = text.replaceAll('ණ්‍යෙ', 'fKH');
    text = text.replaceAll('ච්‍යෙ', 'fpH');
    text = text.replaceAll('ල්‍යෙ', 'f,H');
    text = text.replaceAll('න්‍යෙ', 'fkH');
    text = text.replaceAll('ශ්‍යෙ', 'fYH');
    text = text.replaceAll('ඛ්‍යෙ', 'fLH');
    text = text.replaceAll('ක්‍ෂ්යෙ', 'fÌH');
    text = text.replaceAll('බ්‍යෙ', 'fnH');
    text = text.replaceAll('ඩ්‍යෙ', 'fvH');
    text = text.replaceAll('ෆ්‍යෙ', 'f*H');
    text = text.replaceAll('ග්‍යෙ', 'f.H');
    text = text.replaceAll('ජ්‍යෙ', 'fcH');
    text = text.replaceAll('ක්‍යෙ', 'flH');
    text = text.replaceAll('ම්‍යෙ', 'fuH');
    text = text.replaceAll('ප්‍යෙ', 'fmH');
    text = text.replaceAll('ද්‍යෙ', 'foH');
    text = text.replaceAll('ස්‍යෙ', 'fiH');
    text = text.replaceAll('ට්‍යෙ', 'fgH');
    text = text.replaceAll('ව්‍යෙ', 'fjH');
    text = text.replaceAll('ත්‍යෙ', 'f;H');
    text = text.replaceAll('භ්‍යෙ', 'fNH');
    text = text.replaceAll('ධ්‍යෙ', 'fOH');
    text = text.replaceAll('ථ්‍යෙ', 'f:H');
    text = text.replaceAll('ෂ්‍රෝ', 'fI%da');
    text = text.replaceAll('ඝ්‍රෝ', 'f>%da');
    text = text.replaceAll('ශ්‍රෝ', 'fY%da');
    text = text.replaceAll('ක්‍ෂ්‍රෝ', 'fÌ%da');
    text = text.replaceAll('බ්‍රෝ', 'fn%da');
    text = text.replaceAll('ඩ්‍රෝ', 'fv%da');
    text = text.replaceAll('ෆ්‍රෝ', 'f*%da');
    text = text.replaceAll('ග්‍රෝ', 'f.%da');
    text = text.replaceAll('ක්‍රෝ', 'fl%da');
    text = text.replaceAll('ප්‍රෝ', 'fm%da');
    text = text.replaceAll('ද්‍රෝ', 'føda');
    text = text.replaceAll('ස්‍රෝ', 'fi%da');
    text = text.replaceAll('ට්‍රෝ', 'fg%da');
    text = text.replaceAll('ත්‍රෝ', 'f;%da');
    text = text.replaceAll('ශ්‍රො', 'fY%d');
    text = text.replaceAll('ඩ්‍රො', 'fv%d');
    text = text.replaceAll('ෆ්‍රො', 'f*%d');
    text = text.replaceAll('ග්‍රො', 'f.%d');
    text = text.replaceAll('ක්‍රො', 'fl%d');
    text = text.replaceAll('ප්‍රො', 'fm%d');
    text = text.replaceAll('ද්‍රො', 'fød');
    text = text.replaceAll('ස්‍රො', 'fi%d');
    text = text.replaceAll('ට්‍රො', 'fg%d');
    text = text.replaceAll('ත්‍රො', 'f;%d');
    text = text.replaceAll('ශ්‍රේ', 'fYa%');
    text = text.replaceAll('බ්‍රේ', 'fí%');
    text = text.replaceAll('ඩ්‍රේ', 'fâ%');
    text = text.replaceAll('ෆ්‍රේ', 'f*a%');
    text = text.replaceAll('ග්‍රේ', 'f.a%');
    text = text.replaceAll('ක්‍රේ', 'fla%');
    text = text.replaceAll('ප්‍රේ', 'fma%');
    text = text.replaceAll('ද්‍රේ', 'føa');
    text = text.replaceAll('ස්‍රේ', 'fia%');
    text = text.replaceAll('ත්‍රේ', 'f;a%');
    text = text.replaceAll('ධ්‍රේ', 'fè%');
    text = text.replaceAll('ෂ්‍රෙ', 'fI%');
    text = text.replaceAll('ශ්‍රෙ', 'fY%');
    text = text.replaceAll('බ්‍රෙ', 'fn%');
    text = text.replaceAll('ෆ්‍රෙ', 'f*%');
    text = text.replaceAll('ග්‍රෙ', 'f.%');
    text = text.replaceAll('ක්‍රෙ', 'fl%');
    text = text.replaceAll('ප්‍රෙ', 'fm%');
    text = text.replaceAll('ද්‍රෙ', 'fø');
    text = text.replaceAll('ස්‍රෙ', 'fi%');
    text = text.replaceAll('ත්‍රෙ', 'f;%');
    text = text.replaceAll('භ්‍රෙ', 'fN%');
    text = text.replaceAll('ධ්‍රෙ', 'fO%');
    text = text.replaceAll('්‍ය', 'H');
    text = text.replaceAll('්‍ර', '%');
    text = text.replaceAll('ෂෞ', 'fI!');
    text = text.replaceAll('ඡෞ', 'fP!');
    text = text.replaceAll('ශෞ', 'fY!');
    text = text.replaceAll('බෞ', 'fn!');
    text = text.replaceAll('චෞ', 'fp!');
    text = text.replaceAll('ඩෞ', 'fv!');
    text = text.replaceAll('ෆෞ', 'f*!');
    text = text.replaceAll('ගෞ', 'f.!');
    text = text.replaceAll('ජෞ', 'fc!');
    text = text.replaceAll('කෞ', 'fl!');
    text = text.replaceAll('ලෞ', 'f,!');
    text = text.replaceAll('මෞ', 'fu!');
    text = text.replaceAll('නෞ', 'fk!');
    text = text.replaceAll('පෞ', 'fm!');
    text = text.replaceAll('දෞ', 'fo!');
    text = text.replaceAll('රෞ', 'fr!');
    text = text.replaceAll('සෞ', 'fi!');
    text = text.replaceAll('ටෞ', 'fg!');
    text = text.replaceAll('තෞ', 'f;!');
    text = text.replaceAll('භෞ', 'fN!');
    text = text.replaceAll('ඤෞ', 'f[!');
    text = text.replaceAll('ෂෝ', 'fIda');
    text = text.replaceAll('ඹෝ', 'fUda');
    text = text.replaceAll('ඡෝ', 'fPda');
    text = text.replaceAll('ඪෝ', 'fVda');
    text = text.replaceAll('ඝෝ', 'f>da');
    text = text.replaceAll('ඛෝ', 'fLda');
    text = text.replaceAll('ළෝ', 'f<da');
    text = text.replaceAll('ඟෝ', 'fÛda');
    text = text.replaceAll('ණෝ', 'fKda');
    text = text.replaceAll('ඵෝ', 'fMda');
    text = text.replaceAll('ඨෝ', 'fGda');
    text = text.replaceAll('ඬෝ', 'fËda');
    text = text.replaceAll('ශෝ', 'fYda');
    text = text.replaceAll('ඥෝ', 'f{da');
    text = text.replaceAll('ඳෝ', 'f|da');
    text = text.replaceAll('ක්‍ෂෝ', 'fÌda');
    text = text.replaceAll('බෝ', 'fnda');
    text = text.replaceAll('චෝ', 'fpda');
    text = text.replaceAll('ඩෝ', 'fvda');
    text = text.replaceAll('ෆෝ', 'f*da');
    text = text.replaceAll('ගෝ', 'f.da');
    text = text.replaceAll('හෝ', 'fyda');
    text = text.replaceAll('ජෝ', 'fcda');
    text = text.replaceAll('කෝ', 'flda');
    text = text.replaceAll('ලෝ', 'f,da');
    text = text.replaceAll('මෝ', 'fuda');
    text = text.replaceAll('නෝ', 'fkda');
    text = text.replaceAll('පෝ', 'fmda');
    text = text.replaceAll('දෝ', 'foda');
    text = text.replaceAll('රෝ', 'frda');
    text = text.replaceAll('සෝ', 'fida');
    text = text.replaceAll('ටෝ', 'fgda');
    text = text.replaceAll('වෝ', 'fjda');
    text = text.replaceAll('තෝ', 'f;da');
    text = text.replaceAll('භෝ', 'fNda');
    text = text.replaceAll('යෝ', 'fhda');
    text = text.replaceAll('ඤෝ', 'f[da');
    text = text.replaceAll('ධෝ', 'fOda');
    text = text.replaceAll('ථෝ', 'f:da');
    text = text.replaceAll('ෂො', 'fId');
    text = text.replaceAll('ඹො', 'fUd');
    text = text.replaceAll('ඡො', 'fPd');
    text = text.replaceAll('ඪො', 'fVd');
    text = text.replaceAll('ඝො', 'f>d');
    text = text.replaceAll('ඛො', 'fLd');
    text = text.replaceAll('ළො', 'f<d');
    text = text.replaceAll('ඟො', 'fÕd');
    text = text.replaceAll('ණො', 'fKd');
    text = text.replaceAll('ඵො', 'fMd');
    text = text.replaceAll('ඨො', 'fGd');
    text = text.replaceAll('ඬො', 'fËd');
    text = text.replaceAll('ශො', 'fYd');
    text = text.replaceAll('ඥො', 'f{d');
    text = text.replaceAll('ඳො', 'f|d');
    text = text.replaceAll('ක්‍ෂො', 'fÌd');
    text = text.replaceAll('බො', 'fnd');
    text = text.replaceAll('චො', 'fpd');
    text = text.replaceAll('ඩො', 'fvd');
    text = text.replaceAll('ෆො', 'f*d');
    text = text.replaceAll('ගො', 'f.d');
    text = text.replaceAll('හො', 'fyd');
    text = text.replaceAll('ජො', 'fcd');
    text = text.replaceAll('කො', 'fld');
    text = text.replaceAll('ලො', 'f,d');
    text = text.replaceAll('මො', 'fud');
    text = text.replaceAll('නො', 'fkd');
    text = text.replaceAll('පො', 'fmd');
    text = text.replaceAll('දො', 'fod');
    text = text.replaceAll('රො', 'frd');
    text = text.replaceAll('සො', 'fid');
    text = text.replaceAll('ටො', 'fgd');
    text = text.replaceAll('වො', 'fjd');
    text = text.replaceAll('තො', 'f;d');
    text = text.replaceAll('භො', 'fNd');
    text = text.replaceAll('යො', 'fhd');
    text = text.replaceAll('ඤො', 'f[d');
    text = text.replaceAll('ධො', 'fOd');
    text = text.replaceAll('ථො', 'f:d');
    text = text.replaceAll('ෂේ', 'fIa');
    text = text.replaceAll('ඹේ', 'fò');
    text = text.replaceAll('ඡේ', 'fþ');
    text = text.replaceAll('ඪේ', 'f\\a');
    text = text.replaceAll('ඝේ', 'f>a');
    text = text.replaceAll('ඛේ', 'fÄ');
    text = text.replaceAll('ළේ', 'f<a');
    text = text.replaceAll('ඟේ', 'fÛa');
    text = text.replaceAll('ණේ', 'fKa');
    text = text.replaceAll('ඵේ', 'fMa');
    text = text.replaceAll('ඨේ', 'fGa');
    text = text.replaceAll('ඬේ', 'få');
    text = text.replaceAll('ශේ', 'fYa');
    text = text.replaceAll('ඥේ', 'f{a');
    text = text.replaceAll('ඳේ', 'f|a');
    text = text.replaceAll('ක්‍ෂේ', 'fÌa');
    text = text.replaceAll('බේ', 'fí');
    text = text.replaceAll('චේ', 'fÉ');
    text = text.replaceAll('ඩේ', 'fâ');
    text = text.replaceAll('ෆේ', 'f*');
    text = text.replaceAll('ගේ', 'f.a');
    text = text.replaceAll('හේ', 'fya');
    text = text.replaceAll('පේ', 'fma');
    text = text.replaceAll('කේ', 'fla');
    text = text.replaceAll('ලේ', 'f,a');
    text = text.replaceAll('මේ', 'fï');
    text = text.replaceAll('නේ', 'fka');
    text = text.replaceAll('ජේ', 'f–');
    text = text.replaceAll('දේ', 'foa');
    text = text.replaceAll('රේ', 'f¾');
    text = text.replaceAll('සේ', 'fia');
    text = text.replaceAll('ටේ', 'fÜ');
    text = text.replaceAll('වේ', 'fõ');
    text = text.replaceAll('තේ', 'f;a');
    text = text.replaceAll('භේ', 'fNa');
    text = text.replaceAll('යේ', 'fha');
    text = text.replaceAll('ඤේ', 'f[a');
    text = text.replaceAll('ධේ', 'fè');
    text = text.replaceAll('ථේ', 'f:a');
    text = text.replaceAll('ෂෙ', 'fI');
    text = text.replaceAll('ඹෙ', 'fU');
    text = text.replaceAll('ඓ', 'ft');
    text = text.replaceAll('ඡෙ', 'fP');
    text = text.replaceAll('ඪෙ', 'fV');
    text = text.replaceAll('ඝෙ', 'f>');
    text = text.replaceAll('ඛෙ', 'fn');
    text = text.replaceAll('ළෙ', 'f<');
    text = text.replaceAll('ඟෙ', 'fÛ');
    text = text.replaceAll('ණෙ', 'fK');
    text = text.replaceAll('ඵෙ', 'fM');
    text = text.replaceAll('ඨෙ', 'fG');
    text = text.replaceAll('ඬෙ', 'fË');
    text = text.replaceAll('ශෙ', 'fY');
    text = text.replaceAll('ඥෙ', 'f{');
    text = text.replaceAll('ඳෙ', 'fË');
    text = text.replaceAll('ක්‍ෂෙ', 'fÌ');
    text = text.replaceAll('බෙ', 'fn');
    text = text.replaceAll('චෙ', 'fp');
    text = text.replaceAll('ඩෙ', 'fv');
    text = text.replaceAll('ෆෙ', 'f*');
    text = text.replaceAll('ගෙ', 'f.');
    text = text.replaceAll('හෙ', 'fy');
    text = text.replaceAll('ජෙ', 'fc');
    text = text.replaceAll('කෙ', 'fl');
    text = text.replaceAll('ලෙ', 'f,');
    text = text.replaceAll('මෙ', 'fu');
    text = text.replaceAll('නෙ', 'fk');
    text = text.replaceAll('පෙ', 'fm');
    text = text.replaceAll('දෙ', 'fo');
    text = text.replaceAll('රෙ', 'fr');
    text = text.replaceAll('සෙ', 'fi');
    text = text.replaceAll('ටෙ', 'fg');
    text = text.replaceAll('වෙ', 'fj');
    text = text.replaceAll('තෙ', 'f;');
    text = text.replaceAll('භෙ', 'fN');
    text = text.replaceAll('යෙ', 'fh');
    text = text.replaceAll('ඤෙ', 'f[');
    text = text.replaceAll('ධෙ', 'fO');
    text = text.replaceAll('ථෙ', 'f:');
    text = text.replaceAll('තු', ';=');
    text = text.replaceAll('ගු', '.=');
    text = text.replaceAll('කු', 'l=');
    text = text.replaceAll('තූ', ';+');
    text = text.replaceAll('ගූ', '.+');
    text = text.replaceAll('කූ', 'l+');
    text = text.replaceAll('රු', 're');
    text = text.replaceAll('රූ', 'rE');
    text = text.replaceAll('ආ', 'wd');
    text = text.replaceAll('ඇ', 'we');
    text = text.replaceAll('ඈ', 'wE');
    text = text.replaceAll('ඌ', 'W!');
    text = text.replaceAll('ඖ', 'T!');
    text = text.replaceAll('ඒ', 'ta');
    text = text.replaceAll('ඕ', '´');
    text = text.replaceAll('ඳි', '¢');
    text = text.replaceAll('ඳී', '£');
    text = text.replaceAll('දූ', '¥');
    text = text.replaceAll('දී', '§');
    text = text.replaceAll('ලූ', '¨');
    text = text.replaceAll('ර්‍ය', '©');
    text = text.replaceAll('ඳූ', 'ª');
    text = text.replaceAll('ර්', '¾');
    text = text.replaceAll('ඨි', 'À');
    text = text.replaceAll('ඨී', 'Á');
    text = text.replaceAll('ඡී', 'Â');
    text = text.replaceAll('ඛ්', 'Ä');
    text = text.replaceAll('ඛි', 'Å');
    text = text.replaceAll('ලු', 'Æ');
    text = text.replaceAll('ඛී', 'Ç');
    text = text.replaceAll('දි', 'È');
    text = text.replaceAll('ච්', 'É');
    text = text.replaceAll('ජ්', 'Ê');
    text = text.replaceAll('රී', 'Í');
    text = text.replaceAll('ඪී', 'Î');
    text = text.replaceAll('ඪී', 'Ð,');
    text = text.replaceAll('චි', 'Ñ');
    text = text.replaceAll('ථී', 'Ò');
    text = text.replaceAll('ථී', 'Ó');
    text = text.replaceAll('ජී', 'Ô');
    text = text.replaceAll('චී', 'Ö');
    text = text.replaceAll('ඞ්', 'Ù');
    text = text.replaceAll('ඵී', 'Ú');
    text = text.replaceAll('ට්', 'Ü');
    text = text.replaceAll('ඵි', 'Ý');
    text = text.replaceAll('රි', 'ß');
    text = text.replaceAll('ටී', 'à');
    text = text.replaceAll('ටි', 'á');
    text = text.replaceAll('ඩ්', 'â');
    text = text.replaceAll('ඩී', 'ã');
    text = text.replaceAll('ඩි', 'ä');
    text = text.replaceAll('ඬ්', 'å');
    text = text.replaceAll('ඬි', 'ç');
    text = text.replaceAll('ධ්', 'è');
    text = text.replaceAll('ඬී', 'é');
    text = text.replaceAll('ධි', 'ê');
    text = text.replaceAll('ධී', 'ë');
    text = text.replaceAll('බි', 'ì');
    text = text.replaceAll('බ්', 'í');
    text = text.replaceAll('බී', 'î');
    text = text.replaceAll('ම්', 'ï');
    text = text.replaceAll('ජි', 'ð');
    text = text.replaceAll('මි', 'ñ');
    text = text.replaceAll('ඹ්', 'ò');
    text = text.replaceAll('මී', 'ó');
    text = text.replaceAll('ඹි', 'ô');
    text = text.replaceAll('ව්', 'õ');
    text = text.replaceAll('ඹී', 'ö');
    text = text.replaceAll('ඳු', '÷');
    text = text.replaceAll('ද්‍ර', 'ø');
    text = text.replaceAll('වී', 'ù');
    text = text.replaceAll('වි', 'ú');
    text = text.replaceAll('ඞ්', 'û');
    text = text.replaceAll('ඞී', 'ü');
    text = text.replaceAll('ඡි', 'ý');
    text = text.replaceAll('ඡ්', 'þ');
    text = text.replaceAll('දු', 'ÿ');
    text = text.replaceAll('ජ්', '–');
    text = text.replaceAll('ර්‍ණ', '“');
    text = text.replaceAll('ණී', '”');
    text = text.replaceAll('ජී', '„');
    text = text.replaceAll('ඡි', '‰');
    text = text.replaceAll('ඩි', '');
    text = text.replaceAll('ඤු', '™');
    text = text.replaceAll('ග', '.');
    text = text.replaceAll('ළු', '¿');
    text = text.replaceAll('ෂ', 'I');
    text = text.replaceAll('ං', 'x');
    text = text.replaceAll('ඃ', '#');
    text = text.replaceAll('ඹ', 'U');
    text = text.replaceAll('ඡ', 'P');
    text = text.replaceAll('ඪ', 'V');
    text = text.replaceAll('ඝ', '>');
    text = text.replaceAll('ඊ', 'B');
    text = text.replaceAll('ඣ', 'CO');
    text = text.replaceAll('ඛ', 'L');
    text = text.replaceAll('ළ', '<');
    text = text.replaceAll('ඟ', 'Û');
    text = text.replaceAll('ණ', 'K');
    text = text.replaceAll('ඵ', 'M');
    text = text.replaceAll('ඨ', 'G');
    text = text.replaceAll('ඃ', '#');
    text = text.replaceAll('"', ',');
    text = text.replaceAll('/', '\$');
    text = text.replaceAll(')', '&');
    text = text.replaceAll(':', '(');
    text = text.replaceAll('-', ')');
    text = text.replaceAll('ෆ', '*');
    text = text.replaceAll('ල', ',');
    text = text.replaceAll('රැ', '/');
    text = text.replaceAll('ථ', ':');
    text = text.replaceAll('ත', ';');
    text = text.replaceAll('ඝ', '>');
    text = text.replaceAll('රෑ', '?');
    text = text.replaceAll('ක‍', 'C');
    text = text.replaceAll('‍ෘ', 'D');
    text = text.replaceAll('ෑ', 'E');
    text = text.replaceAll('ත‍', 'F');
    text = text.replaceAll('්‍ය', 'H');
    text = text.replaceAll('ෂ', 'I');
    text = text.replaceAll('න‍', 'J');
    text = text.replaceAll('භ', 'N');
    text = text.replaceAll('ධ', 'O');
    text = text.replaceAll('ඡ', 'P');
    text = text.replaceAll('ඍ', 'R');
    text = text.replaceAll('ඔ', 'T');
    text = text.replaceAll('ඹ', 'U');
    text = text.replaceAll('ඪ', 'V');
    text = text.replaceAll('උ', 'W');
    text = text.replaceAll('ශ', 'Y');
    text = text.replaceAll('ඤ', '[');
    text = text.replaceAll('ඉ', 'b');
    text = text.replaceAll('ජ', 'c');
    text = text.replaceAll('ට', 'g');
    text = text.replaceAll('ය', 'h');
    text = text.replaceAll('ස', 'i');
    text = text.replaceAll('ව', 'j');
    text = text.replaceAll('න', 'k');
    text = text.replaceAll('ක', 'l');
    text = text.replaceAll('ප', 'm');
    text = text.replaceAll('බ', 'n');
    text = text.replaceAll('ද', 'o');
    text = text.replaceAll('ච', 'p');
    text = text.replaceAll('ර', 'r');
    text = text.replaceAll('එ', 't');
    text = text.replaceAll('ම', 'u');
    text = text.replaceAll('ඩ', 'v');
    text = text.replaceAll('අ', 'w');
    text = text.replaceAll('හ', 'y');
    text = text.replaceAll('ඥ', '{');
    text = text.replaceAll('ඳ', '|');
    text = text.replaceAll('ක්‍ෂ', 'Ì');
    text = text.replaceAll('ැ', 'e');
    text = text.replaceAll('ෙ', 'f');
    text = text.replaceAll('ු', 'q');
    text = text.replaceAll('ි', 's');
    text = text.replaceAll('ූ', 'Q');
    text = text.replaceAll('ී', 'S');
    text = text.replaceAll('ෘ', 'D');
    text = text.replaceAll('ෲ', 'DD');
    text = text.replaceAll('ෟ', '!');
    text = text.replaceAll('ා', 'd');
    text = text.replaceAll('්', 'a');
    text = text.replaceAll('￦', '"');
    text = text.replaceAll('�', "'");
    text = text.replaceAll('￫', '^');
    text = text.replaceAll('￩', '&');
    text = text.replaceAll('ￔ', ')');
    text = text.replaceAll('ￓ', '@');
    text = text.replaceAll('ￒ', '`');
    text = text.replaceAll('ￏ', '}');
    text = text.replaceAll('ￎ', '~');
    text = text.replaceAll('ￍ', '¤');
    text = text.replaceAll('ￌ', '•');
    text = text.replaceAll('ￊ', '›');
    text = text.replaceAll('ﾶ', '∙');
    text = text.replaceAll('ￕ', ']');

    return text;
  }
}
