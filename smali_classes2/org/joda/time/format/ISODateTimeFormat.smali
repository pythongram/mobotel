.class public Lorg/joda/time/format/ISODateTimeFormat;
.super Ljava/lang/Object;
.source "ISODateTimeFormat.java"


# static fields
.field private static bd:Lorg/joda/time/format/DateTimeFormatter;

.field private static bdt:Lorg/joda/time/format/DateTimeFormatter;

.field private static bdtx:Lorg/joda/time/format/DateTimeFormatter;

.field private static bod:Lorg/joda/time/format/DateTimeFormatter;

.field private static bodt:Lorg/joda/time/format/DateTimeFormatter;

.field private static bodtx:Lorg/joda/time/format/DateTimeFormatter;

.field private static bt:Lorg/joda/time/format/DateTimeFormatter;

.field private static btt:Lorg/joda/time/format/DateTimeFormatter;

.field private static bttx:Lorg/joda/time/format/DateTimeFormatter;

.field private static btx:Lorg/joda/time/format/DateTimeFormatter;

.field private static bwd:Lorg/joda/time/format/DateTimeFormatter;

.field private static bwdt:Lorg/joda/time/format/DateTimeFormatter;

.field private static bwdtx:Lorg/joda/time/format/DateTimeFormatter;

.field private static dh:Lorg/joda/time/format/DateTimeFormatter;

.field private static dhm:Lorg/joda/time/format/DateTimeFormatter;

.field private static dhms:Lorg/joda/time/format/DateTimeFormatter;

.field private static dhmsf:Lorg/joda/time/format/DateTimeFormatter;

.field private static dhmsl:Lorg/joda/time/format/DateTimeFormatter;

.field private static dme:Lorg/joda/time/format/DateTimeFormatter;

.field private static dotp:Lorg/joda/time/format/DateTimeFormatter;

.field private static dp:Lorg/joda/time/format/DateTimeFormatter;

.field private static dpe:Lorg/joda/time/format/DateTimeFormatter;

.field private static dt:Lorg/joda/time/format/DateTimeFormatter;

.field private static dtp:Lorg/joda/time/format/DateTimeFormatter;

.field private static dtx:Lorg/joda/time/format/DateTimeFormatter;

.field private static dwe:Lorg/joda/time/format/DateTimeFormatter;

.field private static dye:Lorg/joda/time/format/DateTimeFormatter;

.field private static fse:Lorg/joda/time/format/DateTimeFormatter;

.field private static hde:Lorg/joda/time/format/DateTimeFormatter;

.field private static hm:Lorg/joda/time/format/DateTimeFormatter;

.field private static hms:Lorg/joda/time/format/DateTimeFormatter;

.field private static hmsf:Lorg/joda/time/format/DateTimeFormatter;

.field private static hmsl:Lorg/joda/time/format/DateTimeFormatter;

.field private static ldotp:Lorg/joda/time/format/DateTimeFormatter;

.field private static ldp:Lorg/joda/time/format/DateTimeFormatter;

.field private static lte:Lorg/joda/time/format/DateTimeFormatter;

.field private static ltp:Lorg/joda/time/format/DateTimeFormatter;

.field private static mhe:Lorg/joda/time/format/DateTimeFormatter;

.field private static mye:Lorg/joda/time/format/DateTimeFormatter;

.field private static od:Lorg/joda/time/format/DateTimeFormatter;

.field private static odt:Lorg/joda/time/format/DateTimeFormatter;

.field private static odtx:Lorg/joda/time/format/DateTimeFormatter;

.field private static sme:Lorg/joda/time/format/DateTimeFormatter;

.field private static t:Lorg/joda/time/format/DateTimeFormatter;

.field private static tp:Lorg/joda/time/format/DateTimeFormatter;

.field private static tpe:Lorg/joda/time/format/DateTimeFormatter;

.field private static tt:Lorg/joda/time/format/DateTimeFormatter;

.field private static ttx:Lorg/joda/time/format/DateTimeFormatter;

.field private static tx:Lorg/joda/time/format/DateTimeFormatter;

.field private static wdt:Lorg/joda/time/format/DateTimeFormatter;

.field private static wdtx:Lorg/joda/time/format/DateTimeFormatter;

.field private static we:Lorg/joda/time/format/DateTimeFormatter;

.field private static ww:Lorg/joda/time/format/DateTimeFormatter;

.field private static wwd:Lorg/joda/time/format/DateTimeFormatter;

.field private static wwe:Lorg/joda/time/format/DateTimeFormatter;

.field private static ye:Lorg/joda/time/format/DateTimeFormatter;

.field private static ym:Lorg/joda/time/format/DateTimeFormatter;

.field private static ymd:Lorg/joda/time/format/DateTimeFormatter;

.field private static ze:Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method private static appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V
    .registers 3

    .prologue
    .line 549
    if-eqz p1, :cond_7

    .line 550
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 552
    :cond_7
    return-void
.end method

.method public static basicDate()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 1089
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bd:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_25

    .line 1090
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, v1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendYear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bd:Lorg/joda/time/format/DateTimeFormatter;

    .line 1096
    :cond_25
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bd:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1189
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bdt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1190
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bdt:Lorg/joda/time/format/DateTimeFormatter;

    .line 1195
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bdt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1207
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bdtx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1208
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bdtx:Lorg/joda/time/format/DateTimeFormatter;

    .line 1213
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bdtx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicOrdinalDate()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 1224
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bod:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1d

    .line 1225
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, v1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendYear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bod:Lorg/joda/time/format/DateTimeFormatter;

    .line 1230
    :cond_1d
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bod:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicOrdinalDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1243
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bodt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1244
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicOrdinalDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bodt:Lorg/joda/time/format/DateTimeFormatter;

    .line 1249
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bodt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicOrdinalDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1262
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bodtx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1263
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicOrdinalDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bodtx:Lorg/joda/time/format/DateTimeFormatter;

    .line 1268
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bodtx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicTTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1152
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->btt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1153
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->btt:Lorg/joda/time/format/DateTimeFormatter;

    .line 1158
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->btt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicTTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1171
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bttx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1172
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bttx:Lorg/joda/time/format/DateTimeFormatter;

    .line 1177
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bttx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 1109
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_3c

    .line 1110
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "Z"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneOffset(Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bt:Lorg/joda/time/format/DateTimeFormatter;

    .line 1119
    :cond_3c
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 1131
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->btx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_2f

    .line 1132
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "Z"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneOffset(Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->btx:Lorg/joda/time/format/DateTimeFormatter;

    .line 1139
    :cond_2f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->btx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicWeekDate()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 1278
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwd:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_2c

    .line 1279
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, v1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekyear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwd:Lorg/joda/time/format/DateTimeFormatter;

    .line 1286
    :cond_2c
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwd:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicWeekDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1298
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwdt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1299
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicWeekDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwdt:Lorg/joda/time/format/DateTimeFormatter;

    .line 1304
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwdt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static basicWeekDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1316
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwdtx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1317
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicWeekDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwdtx:Lorg/joda/time/format/DateTimeFormatter;

    .line 1322
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->bwdtx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static checkNotStrictISO(Ljava/util/Collection;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 535
    if-eqz p1, :cond_1b

    .line 536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid ISO8601 format for fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_1b
    return-void
.end method

.method public static date()Lorg/joda/time/format/DateTimeFormatter;
    .registers 1

    .prologue
    .line 866
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearMonthDay()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static dateByMonth(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x2

    const/16 v3, 0x2d

    .line 293
    const/4 v0, 0x0

    .line 294
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 295
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 296
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 297
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 299
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 300
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 301
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 302
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 341
    :cond_36
    :goto_36
    return v0

    .line 305
    :cond_37
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 306
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move v0, v1

    .line 309
    goto :goto_36

    .line 310
    :cond_3f
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 312
    invoke-static {p1, p3}, Lorg/joda/time/format/ISODateTimeFormat;->checkNotStrictISO(Ljava/util/Collection;Z)V

    .line 313
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 314
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 315
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_36

    :cond_56
    move v0, v1

    .line 322
    goto :goto_36

    :cond_58
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 323
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 324
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 325
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 326
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 328
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 329
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_36

    :cond_7c
    move v0, v1

    .line 334
    goto :goto_36

    :cond_7e
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 336
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 337
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 338
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 339
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_36
.end method

.method private static dateByOrdinal(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 361
    const/4 v0, 0x0

    .line 362
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 363
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 364
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 366
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 367
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 378
    :cond_23
    :goto_23
    return v0

    .line 370
    :cond_24
    const/4 v0, 0x1

    .line 373
    goto :goto_23

    :cond_26
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 375
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 376
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_23
.end method

.method private static dateByWeek(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x57

    const/16 v3, 0x2d

    const/4 v1, 0x1

    .line 398
    const/4 v0, 0x0

    .line 399
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 400
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 401
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 402
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 403
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 404
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 405
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 407
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 408
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 446
    :cond_3b
    :goto_3b
    return v0

    :cond_3c
    move v0, v1

    .line 413
    goto :goto_3b

    .line 414
    :cond_3e
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 416
    invoke-static {p1, p3}, Lorg/joda/time/format/ISODateTimeFormat;->checkNotStrictISO(Ljava/util/Collection;Z)V

    .line 417
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 418
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 419
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 420
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_3b

    :cond_58
    move v0, v1

    .line 427
    goto :goto_3b

    :cond_5a
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 428
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 429
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 430
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 431
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 433
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 434
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_3b

    :cond_7e
    move v0, v1

    .line 439
    goto :goto_3b

    :cond_80
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 441
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 442
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 443
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 444
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_3b
.end method

.method public static dateElementParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 7

    .prologue
    .line 613
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dpe:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_90

    .line 614
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/joda/time/format/DateTimeParser;

    const/4 v3, 0x0

    new-instance v4, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    new-instance v5, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->monthElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v5

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dayOfMonthElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dayOfWeekElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dayOfYearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimePrinter;[Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dpe:Lorg/joda/time/format/DateTimeFormatter;

    .line 636
    :cond_90
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dpe:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateHour()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1500
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dh:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 1501
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hour()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dh:Lorg/joda/time/format/DateTimeFormatter;

    .line 1507
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dh:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateHourMinute()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1517
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhm:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 1518
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinute()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhm:Lorg/joda/time/format/DateTimeFormatter;

    .line 1524
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhm:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateHourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1535
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhms:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 1536
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhms:Lorg/joda/time/format/DateTimeFormatter;

    .line 1542
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhms:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateHourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1573
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhmsf:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 1574
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhmsf:Lorg/joda/time/format/DateTimeFormatter;

    .line 1580
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhmsf:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateHourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1554
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhmsl:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 1555
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhmsl:Lorg/joda/time/format/DateTimeFormatter;

    .line 1561
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dhmsl:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    .line 810
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dotp:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_42

    .line 811
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->offsetElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    .line 816
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dotp:Lorg/joda/time/format/DateTimeFormatter;

    .line 821
    :cond_42
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dotp:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    .line 569
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dp:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_32

    .line 570
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->offsetElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    .line 573
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dp:Lorg/joda/time/format/DateTimeFormatter;

    .line 578
    :cond_32
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dp:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 953
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 954
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dt:Lorg/joda/time/format/DateTimeFormatter;

    .line 959
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 971
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dtx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 972
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dtx:Lorg/joda/time/format/DateTimeFormatter;

    .line 977
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dtx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 5

    .prologue
    .line 775
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dtp:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_48

    .line 778
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->offsetElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    .line 783
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/joda/time/format/DateTimeParser;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimePrinter;[Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dtp:Lorg/joda/time/format/DateTimeFormatter;

    .line 787
    :cond_48
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dtp:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static dayOfMonthElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1604
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dme:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1a

    .line 1605
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dme:Lorg/joda/time/format/DateTimeFormatter;

    .line 1610
    :cond_1a
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dme:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static dayOfWeekElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1633
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dwe:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1a

    .line 1634
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dwe:Lorg/joda/time/format/DateTimeFormatter;

    .line 1639
    :cond_1a
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dwe:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static dayOfYearElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1643
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dye:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1a

    .line 1644
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dye:Lorg/joda/time/format/DateTimeFormatter;

    .line 1649
    :cond_1a
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->dye:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static forFields(Ljava/util/Collection;ZZ)Lorg/joda/time/format/DateTimeFormatter;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)",
            "Lorg/joda/time/format/DateTimeFormatter;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 230
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 231
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fields must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_12
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 234
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    .line 236
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 238
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 239
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByMonth(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    .line 255
    :goto_2e
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-ge v6, v5, :cond_bc

    move v5, v2

    :goto_35
    move v2, p1

    move v3, p2

    .line 258
    invoke-static/range {v0 .. v5}, Lorg/joda/time/format/ISODateTimeFormat;->time(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZZZ)V

    .line 261
    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->canBuildFormatter()Z

    move-result v2

    if-nez v2, :cond_bf

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid format for fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_59
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 241
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByOrdinal(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    goto :goto_2e

    .line 242
    :cond_68
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 243
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByWeek(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    goto :goto_2e

    .line 244
    :cond_77
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 245
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByMonth(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    goto :goto_2e

    .line 246
    :cond_86
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 247
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByWeek(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    goto :goto_2e

    .line 248
    :cond_95
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 249
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move v4, v2

    .line 251
    goto :goto_2e

    :cond_a8
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 252
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move v4, v2

    .line 253
    goto/16 :goto_2e

    :cond_bc
    move v5, v3

    .line 255
    goto/16 :goto_35

    .line 268
    :cond_bf
    :try_start_bf
    invoke-interface {p0, v1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
    :try_end_c2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_bf .. :try_end_c2} :catch_c7

    .line 272
    :goto_c2
    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0

    .line 269
    :catch_c7
    move-exception v1

    goto :goto_c2

    :cond_c9
    move v4, v3

    goto/16 :goto_2e
.end method

.method private static fractionElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    .line 1691
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->fse:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1c

    .line 1692
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->fse:Lorg/joda/time/format/DateTimeFormatter;

    .line 1699
    :cond_1c
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->fse:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static hour()Lorg/joda/time/format/DateTimeFormatter;
    .registers 1

    .prologue
    .line 1416
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static hourElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1662
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hde:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_14

    .line 1663
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hde:Lorg/joda/time/format/DateTimeFormatter;

    .line 1667
    :cond_14
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hde:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static hourMinute()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1426
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hm:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1427
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->minuteElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hm:Lorg/joda/time/format/DateTimeFormatter;

    .line 1432
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hm:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static hourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1442
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hms:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 1443
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->minuteElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->secondElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hms:Lorg/joda/time/format/DateTimeFormatter;

    .line 1449
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hms:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static hourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1482
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hmsf:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_2f

    .line 1483
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->minuteElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->secondElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->fractionElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hmsf:Lorg/joda/time/format/DateTimeFormatter;

    .line 1490
    :cond_2f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hmsf:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static hourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    const/4 v2, 0x3

    .line 1461
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hmsl:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_32

    .line 1462
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->minuteElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->secondElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hmsl:Lorg/joda/time/format/DateTimeFormatter;

    .line 1470
    :cond_32
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->hmsl:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static literalTElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1653
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->lte:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_15

    .line 1654
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->lte:Lorg/joda/time/format/DateTimeFormatter;

    .line 1658
    :cond_15
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->lte:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    .line 845
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ldotp:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_36

    .line 846
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    .line 850
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withZoneUTC()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ldotp:Lorg/joda/time/format/DateTimeFormatter;

    .line 855
    :cond_36
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ldotp:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static localDateParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 1

    .prologue
    .line 595
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ldp:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_e

    .line 596
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withZoneUTC()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ldp:Lorg/joda/time/format/DateTimeFormatter;

    .line 598
    :cond_e
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ldp:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static localTimeParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 680
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ltp:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 681
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withZoneUTC()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ltp:Lorg/joda/time/format/DateTimeFormatter;

    .line 686
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ltp:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static minuteElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1671
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->mhe:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1a

    .line 1672
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMinuteOfHour(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->mhe:Lorg/joda/time/format/DateTimeFormatter;

    .line 1677
    :cond_1a
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->mhe:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static monthElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1594
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->mye:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1a

    .line 1595
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->mye:Lorg/joda/time/format/DateTimeFormatter;

    .line 1600
    :cond_1a
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->mye:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static offsetElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 5

    .prologue
    .line 1703
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ze:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_18

    .line 1704
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "Z"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneOffset(Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ze:Lorg/joda/time/format/DateTimeFormatter;

    .line 1708
    :cond_18
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ze:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static ordinalDate()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 988
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->od:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 989
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dayOfYearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->od:Lorg/joda/time/format/DateTimeFormatter;

    .line 994
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->od:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static ordinalDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1007
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->odt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1008
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->ordinalDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->odt:Lorg/joda/time/format/DateTimeFormatter;

    .line 1013
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->odt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static ordinalDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1026
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->odtx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1027
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->ordinalDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->odtx:Lorg/joda/time/format/DateTimeFormatter;

    .line 1032
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->odtx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static secondElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1681
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->sme:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1a

    .line 1682
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSecondOfMinute(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->sme:Lorg/joda/time/format/DateTimeFormatter;

    .line 1687
    :cond_1a
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->sme:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static tTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 916
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 917
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->time()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tt:Lorg/joda/time/format/DateTimeFormatter;

    .line 922
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static tTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 935
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ttx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 936
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ttx:Lorg/joda/time/format/DateTimeFormatter;

    .line 941
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ttx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static time()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 879
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->t:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 880
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->offsetElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->t:Lorg/joda/time/format/DateTimeFormatter;

    .line 885
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->t:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static time(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x2d

    const/4 v5, 0x2

    .line 470
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 471
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 472
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 473
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 474
    if-nez v0, :cond_2e

    if-nez v1, :cond_2e

    if-nez v2, :cond_2e

    if-nez v3, :cond_2e

    .line 524
    :cond_2d
    :goto_2d
    return-void

    .line 477
    :cond_2e
    if-nez v0, :cond_36

    if-nez v1, :cond_36

    if-nez v2, :cond_36

    if-eqz v3, :cond_5a

    .line 478
    :cond_36
    if-eqz p3, :cond_53

    if-eqz p4, :cond_53

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid ISO8601 format for fields because Date was reduced precision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_53
    if-eqz p5, :cond_5a

    .line 482
    const/16 v4, 0x54

    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 485
    :cond_5a
    if-eqz v0, :cond_60

    if-eqz v1, :cond_60

    if-nez v2, :cond_66

    :cond_60
    if-eqz v0, :cond_93

    if-nez v2, :cond_93

    if-nez v3, :cond_93

    .line 499
    :cond_66
    if-eqz v0, :cond_d7

    .line 500
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 504
    :cond_6b
    :goto_6b
    if-eqz p2, :cond_74

    if-eqz v0, :cond_74

    if-eqz v1, :cond_74

    .line 505
    invoke-virtual {p0, v7}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 507
    :cond_74
    if-eqz v1, :cond_e1

    .line 508
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMinuteOfHour(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 512
    :cond_79
    :goto_79
    if-eqz p2, :cond_82

    if-eqz v1, :cond_82

    if-eqz v2, :cond_82

    .line 513
    invoke-virtual {p0, v7}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 515
    :cond_82
    if-eqz v2, :cond_e9

    .line 516
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSecondOfMinute(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 520
    :cond_87
    :goto_87
    if-eqz v3, :cond_2d

    .line 521
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 522
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMillisOfSecond(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_2d

    .line 488
    :cond_93
    if-eqz p3, :cond_b0

    if-eqz p5, :cond_b0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid ISO8601 format for fields because Time was truncated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_b0
    if-nez v0, :cond_bc

    if-eqz v1, :cond_b6

    if-nez v2, :cond_66

    :cond_b6
    if-eqz v1, :cond_ba

    if-eqz v3, :cond_66

    :cond_ba
    if-nez v2, :cond_66

    .line 494
    :cond_bc
    if-eqz p3, :cond_66

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid ISO8601 format for fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_d7
    if-nez v1, :cond_dd

    if-nez v2, :cond_dd

    if-eqz v3, :cond_6b

    .line 502
    :cond_dd
    invoke-virtual {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_6b

    .line 509
    :cond_e1
    if-nez v2, :cond_e5

    if-eqz v3, :cond_79

    .line 510
    :cond_e5
    invoke-virtual {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_79

    .line 517
    :cond_e9
    if-eqz v3, :cond_87

    .line 518
    invoke-virtual {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_87
.end method

.method public static timeElementParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 12

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 702
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tpe:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_c1

    .line 704
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    new-array v1, v10, [Lorg/joda/time/format/DateTimeParser;

    new-instance v2, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v8, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimePrinter;[Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    .line 715
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/joda/time/format/DateTimeParser;

    new-instance v3, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->minuteElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/joda/time/format/DateTimeParser;

    new-instance v5, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->secondElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v5

    new-instance v6, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v6, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v11}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v5

    aput-object v5, v4, v9

    new-instance v5, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v5, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v11}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFractionOfMinute(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v8, v4, v10

    invoke-virtual {v3, v8, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimePrinter;[Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v3

    aput-object v3, v2, v9

    new-instance v3, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v11}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFractionOfHour(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    aput-object v0, v2, v7

    aput-object v8, v2, v10

    invoke-virtual {v1, v8, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimePrinter;[Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tpe:Lorg/joda/time/format/DateTimeFormatter;

    .line 751
    :cond_c1
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tpe:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static timeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 897
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 898
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->offsetElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tx:Lorg/joda/time/format/DateTimeFormatter;

    .line 903
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static timeParser()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 654
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tp:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_2f

    .line 655
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->literalTElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeElementParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->offsetElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tp:Lorg/joda/time/format/DateTimeFormatter;

    .line 661
    :cond_2f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->tp:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static weekDate()Lorg/joda/time/format/DateTimeFormatter;
    .registers 1

    .prologue
    .line 1042
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearWeekDay()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static weekDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1054
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wdt:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1055
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wdt:Lorg/joda/time/format/DateTimeFormatter;

    .line 1060
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wdt:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static weekDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1072
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wdtx:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1073
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wdtx:Lorg/joda/time/format/DateTimeFormatter;

    .line 1078
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wdtx:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private static weekElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1623
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wwe:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1a

    .line 1624
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "-W"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wwe:Lorg/joda/time/format/DateTimeFormatter;

    .line 1629
    :cond_1a
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wwe:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static weekyear()Lorg/joda/time/format/DateTimeFormatter;
    .registers 1

    .prologue
    .line 1374
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static weekyearElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    .line 1614
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->we:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_16

    .line 1615
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x4

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekyear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->we:Lorg/joda/time/format/DateTimeFormatter;

    .line 1619
    :cond_16
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->we:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static weekyearWeek()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1384
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ww:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1385
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ww:Lorg/joda/time/format/DateTimeFormatter;

    .line 1390
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ww:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static weekyearWeekDay()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1400
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wwd:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 1401
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dayOfWeekElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wwd:Lorg/joda/time/format/DateTimeFormatter;

    .line 1407
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->wwd:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static year()Lorg/joda/time/format/DateTimeFormatter;
    .registers 1

    .prologue
    .line 1332
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static yearElement()Lorg/joda/time/format/DateTimeFormatter;
    .registers 3

    .prologue
    .line 1585
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ye:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_16

    .line 1586
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x4

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendYear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ye:Lorg/joda/time/format/DateTimeFormatter;

    .line 1590
    :cond_16
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ye:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static yearMonth()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1342
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ym:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1f

    .line 1343
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->monthElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ym:Lorg/joda/time/format/DateTimeFormatter;

    .line 1348
    :cond_1f
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ym:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static yearMonthDay()Lorg/joda/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 1358
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ymd:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_27

    .line 1359
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->monthElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dayOfMonthElement()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ymd:Lorg/joda/time/format/DateTimeFormatter;

    .line 1365
    :cond_27
    sget-object v0, Lorg/joda/time/format/ISODateTimeFormat;->ymd:Lorg/joda/time/format/DateTimeFormatter;

    return-object v0
.end method
