.class public Lorg/joda/time/tz/ZoneInfoCompiler;
.super Ljava/lang/Object;
.source "ZoneInfoCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/ZoneInfoCompiler$Zone;,
        Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;,
        Lorg/joda/time/tz/ZoneInfoCompiler$Rule;,
        Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;
    }
.end annotation


# static fields
.field static cLenientISO:Lorg/joda/time/Chronology;

.field static cStartOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

.field static cVerbose:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iRuleSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private iZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/joda/time/tz/ZoneInfoCompiler$Zone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cVerbose:Ljava/lang/ThreadLocal;

    .line 70
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cVerbose:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iLinks:Ljava/util/List;

    .line 358
    return-void
.end method

.method static getLenientISOChronology()Lorg/joda/time/Chronology;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cLenientISO:Lorg/joda/time/Chronology;

    if-nez v0, :cond_e

    .line 156
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/LenientChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/LenientChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cLenientISO:Lorg/joda/time/Chronology;

    .line 158
    :cond_e
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cLenientISO:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method static getStartOfYear()Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cStartOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    if-nez v0, :cond_b

    .line 149
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-direct {v0}, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;-><init>()V

    sput-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cStartOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    .line 151
    :cond_b
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cStartOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 94
    array-length v0, p0

    if-nez v0, :cond_9

    .line 95
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->printUsage()V

    .line 137
    :goto_8
    return-void

    :cond_9
    move v0, v4

    move v1, v4

    move-object v3, v2

    .line 104
    :goto_c
    array-length v5, p0

    if-ge v0, v5, :cond_58

    .line 106
    :try_start_f
    const-string v5, "-src"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 107
    new-instance v3, Ljava/io/File;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, p0, v0

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 108
    :cond_25
    const-string v5, "-dst"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 109
    new-instance v2, Ljava/io/File;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, p0, v0

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_38} :catch_39

    goto :goto_22

    .line 118
    :catch_39
    move-exception v0

    .line 119
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->printUsage()V

    goto :goto_8

    .line 110
    :cond_3e
    :try_start_3e
    const-string v5, "-verbose"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 111
    const/4 v1, 0x1

    .line 112
    goto :goto_22

    :cond_4a
    const-string v5, "-?"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 113
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->printUsage()V
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_57} :catch_39

    goto :goto_8

    .line 124
    :cond_58
    array-length v5, p0

    if-lt v0, v5, :cond_5f

    .line 125
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->printUsage()V

    goto :goto_8

    .line 129
    :cond_5f
    array-length v5, p0

    sub-int/2addr v5, v0

    new-array v6, v5, [Ljava/io/File;

    .line 130
    :goto_63
    array-length v5, p0

    if-ge v0, v5, :cond_7e

    .line 131
    if-nez v3, :cond_76

    new-instance v5, Ljava/io/File;

    aget-object v7, p0, v0

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_6f
    aput-object v5, v6, v4

    .line 130
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 131
    :cond_76
    new-instance v5, Ljava/io/File;

    aget-object v7, p0, v0

    invoke-direct {v5, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_6f

    .line 134
    :cond_7e
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cVerbose:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 135
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler;

    invoke-direct {v0}, Lorg/joda/time/tz/ZoneInfoCompiler;-><init>()V

    .line 136
    invoke-virtual {v0, v2, v6}, Lorg/joda/time/tz/ZoneInfoCompiler;->compile(Ljava/io/File;[Ljava/io/File;)Ljava/util/Map;

    goto/16 :goto_8
.end method

.method static parseDayOfWeek(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 225
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 226
    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3, p0, v1}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method static parseMonth(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 220
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 221
    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3, p0, v1}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method static parseOptional(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method static parseTime(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    .line 235
    new-instance v3, Lorg/joda/time/MutableDateTime;

    const-wide/16 v4, 0x0

    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->getLenientISOChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 236
    const/4 v0, 0x0

    .line 237
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v0, v1

    .line 240
    :cond_1a
    invoke-virtual {v2, v3, p0, v0}, Lorg/joda/time/format/DateTimeFormatter;->parseInto(Lorg/joda/time/ReadWritableInstant;Ljava/lang/String;I)I

    move-result v2

    .line 241
    xor-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_28

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_28
    invoke-virtual {v3}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    long-to-int v2, v2

    .line 245
    if-ne v0, v1, :cond_31

    .line 246
    neg-int v0, v2

    .line 248
    :goto_30
    return v0

    :cond_31
    move v0, v2

    goto :goto_30
.end method

.method static parseYear(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "minimum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 210
    :cond_14
    const/high16 p1, -0x80000000

    .line 216
    :cond_16
    :goto_16
    return p1

    .line 211
    :cond_17
    const-string v1, "maximum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 212
    :cond_27
    const p1, 0x7fffffff

    goto :goto_16

    .line 213
    :cond_2b
    const-string v1, "only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_16
.end method

.method static parseZoneChar(C)C
    .registers 2

    .prologue
    .line 252
    sparse-switch p0, :sswitch_data_c

    .line 261
    const/16 v0, 0x77

    :goto_5
    return v0

    .line 255
    :sswitch_6
    const/16 v0, 0x73

    goto :goto_5

    .line 258
    :sswitch_9
    const/16 v0, 0x75

    goto :goto_5

    .line 252
    :sswitch_data_c
    .sparse-switch
        0x47 -> :sswitch_9
        0x53 -> :sswitch_6
        0x55 -> :sswitch_9
        0x5a -> :sswitch_9
        0x67 -> :sswitch_9
        0x73 -> :sswitch_6
        0x75 -> :sswitch_9
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method private static printUsage()V
    .registers 2

    .prologue
    .line 140
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: java org.joda.time.tz.ZoneInfoCompiler <options> <source files>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "where possible options include:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -src <directory>    Specify where to read source files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -dst <directory>    Specify where to write generated files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -verbose            Output verbosely (default false)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method static test(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Z
    .registers 13

    .prologue
    .line 269
    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 270
    const/4 v0, 0x1

    .line 342
    :goto_b
    return v0

    .line 275
    :cond_c
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x73a

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 276
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/16 v1, 0x802

    invoke-virtual {v0, v4, v5, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v8

    .line 278
    invoke-virtual {p1, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v1

    .line 279
    invoke-virtual {p1, v2, v3}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-wide v4, v2

    move v2, v1

    .line 284
    :goto_3b
    invoke-virtual {p1, v4, v5}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v6

    .line 285
    cmp-long v1, v6, v4

    if-eqz v1, :cond_47

    cmp-long v1, v6, v8

    if-lez v1, :cond_7d

    .line 318
    :cond_47
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x802

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 319
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/16 v1, 0x73a

    invoke-virtual {v0, v4, v5, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v6

    .line 321
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    :goto_6b
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_7b

    .line 322
    invoke-virtual {p1, v2, v3}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide v4

    .line 323
    cmp-long v0, v4, v2

    if-eqz v0, :cond_7b

    cmp-long v0, v4, v6

    if-gez v0, :cond_118

    .line 342
    :cond_7b
    const/4 v0, 0x1

    goto :goto_b

    .line 291
    :cond_7d
    invoke-virtual {p1, v6, v7}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v3

    .line 292
    invoke-virtual {p1, v6, v7}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v1

    .line 294
    if-ne v2, v3, :cond_bf

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 296
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*d* Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v3

    invoke-direct {v2, v6, v7, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 302
    :cond_bf
    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_10c

    const-string v0, "??"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10c

    .line 303
    :cond_d0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*s* Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v4

    invoke-direct {v3, v6, v7, v4}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nameKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 310
    :cond_10c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move v2, v3

    move-wide v4, v6

    .line 314
    goto/16 :goto_3b

    .line 329
    :cond_118
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 331
    const-wide/16 v8, 0x1

    sub-long v8, v2, v8

    cmp-long v0, v8, v4

    if-eqz v0, :cond_172

    .line 332
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*r* Error in "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v7

    invoke-direct {v6, v4, v5, v7}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " != "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Lorg/joda/time/DateTime;

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_172
    move v0, v1

    move-wide v2, v4

    .line 340
    goto/16 :goto_6b
.end method

.method public static verbose()Z
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lorg/joda/time/tz/ZoneInfoCompiler;->cVerbose:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static writeZoneInfoMap(Ljava/io/DataOutputStream;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 167
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 169
    const/4 v0, 0x0

    .line 170
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 173
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    .line 174
    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v4, v6, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v1, v2, 0x1

    int-to-short v2, v1

    if-nez v2, :cond_47

    .line 177
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Too many time zone ids"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 182
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 183
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    add-int/lit8 v0, v2, 0x1

    int-to-short v0, v0

    if-nez v0, :cond_6f

    .line 186
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Too many time zone ids"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    move v0, v2

    :cond_6f
    move v2, v0

    .line 189
    goto :goto_18

    .line 192
    :cond_71
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 193
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_80

    .line 198
    :cond_90
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 199
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_9f

    .line 205
    :cond_d6
    return-void
.end method


# virtual methods
.method public compile(Ljava/io/File;[Ljava/io/File;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 367
    if-eqz p2, :cond_1c

    move v0, v3

    .line 368
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 369
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    aget-object v4, p2, v0

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 370
    invoke-virtual {p0, v1}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseDataFile(Ljava/io/BufferedReader;)V

    .line 371
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 375
    :cond_1c
    if-eqz p1, :cond_5c

    .line 376
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 377
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_3d
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 380
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination is not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_5c
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 386
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Writing zoneinfo files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v3

    .line 387
    :goto_69
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_128

    .line 388
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    .line 389
    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder;

    invoke-direct {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder;-><init>()V

    .line 390
    iget-object v4, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    invoke-virtual {v0, v2, v4}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->addToBuilder(Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V

    .line 391
    iget-object v4, v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder;->toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;

    move-result-object v4

    .line 393
    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/joda/time/tz/ZoneInfoCompiler;->test(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 394
    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    if-eqz p1, :cond_11e

    .line 396
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->verbose()Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 397
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    :cond_bf
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d9

    .line 401
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 403
    :cond_d9
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 405
    :try_start_de
    iget-object v0, v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    invoke-virtual {v2, v0, v7}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeTo(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_123

    .line 407
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 411
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 412
    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/InputStream;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v2

    .line 413
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 415
    invoke-virtual {v4, v2}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 416
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*e* Error in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Didn\'t read properly from file"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_11e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_69

    .line 407
    :catchall_123
    move-exception v0

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 408
    throw v0

    :cond_128
    move v5, v3

    .line 423
    :goto_129
    const/4 v0, 0x2

    if-ge v5, v0, :cond_185

    move v4, v3

    .line 424
    :goto_12d
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_181

    .line 425
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iLinks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iLinks:Ljava/util/List;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 427
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/DateTimeZone;

    .line 428
    if-nez v2, :cond_17d

    .line 429
    if-lez v5, :cond_179

    .line 430
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find time zone \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\' to link alias \'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    :cond_179
    :goto_179
    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_12d

    .line 434
    :cond_17d
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_179

    .line 423
    :cond_181
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_129

    .line 439
    :cond_185
    if-eqz p1, :cond_1c0

    .line 440
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Writing ZoneInfoMap"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/io/File;

    const-string v1, "ZoneInfoMap"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a6

    .line 443
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 446
    :cond_1a6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 447
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 450
    :try_start_1b0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 451
    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 452
    invoke-static {v2, v0}, Lorg/joda/time/tz/ZoneInfoCompiler;->writeZoneInfoMap(Ljava/io/DataOutputStream;Ljava/util/Map;)V
    :try_end_1bd
    .catchall {:try_start_1b0 .. :try_end_1bd} :catchall_1c1

    .line 454
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 458
    :cond_1c0
    return-object v6

    .line 454
    :catchall_1c1
    move-exception v0

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 455
    throw v0
.end method

.method public parseDataFile(Ljava/io/BufferedReader;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x23

    const/4 v5, 0x0

    .line 462
    move-object v0, v1

    .line 464
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c5

    .line 465
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_5

    .line 470
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 471
    if-ltz v3, :cond_25

    .line 472
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 477
    :cond_25
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 480
    if-eqz v0, :cond_5

    .line 482
    invoke-virtual {v0, v3}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->chain(Ljava/util/StringTokenizer;)V

    goto :goto_5

    .line 486
    :cond_42
    if-eqz v0, :cond_49

    .line 487
    iget-object v4, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_49
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 493
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 494
    const-string v4, "Rule"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 495
    new-instance v2, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;

    invoke-direct {v2, v3}, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;-><init>(Ljava/util/StringTokenizer;)V

    .line 496
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    iget-object v3, v2, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;

    .line 497
    if-nez v0, :cond_7a

    .line 498
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;

    invoke-direct {v0, v2}, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;-><init>(Lorg/joda/time/tz/ZoneInfoCompiler$Rule;)V

    .line 499
    iget-object v3, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iRuleSets:Ljava/util/Map;

    iget-object v2, v2, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iName:Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_78
    move-object v0, v1

    .line 503
    goto :goto_5

    .line 501
    :cond_7a
    invoke-virtual {v0, v2}, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;->addRule(Lorg/joda/time/tz/ZoneInfoCompiler$Rule;)V

    goto :goto_78

    .line 503
    :cond_7e
    const-string v4, "Zone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 504
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    invoke-direct {v0, v3}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;-><init>(Ljava/util/StringTokenizer;)V

    goto/16 :goto_5

    .line 505
    :cond_8d
    const-string v4, "Link"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 506
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iLinks:Ljava/util/List;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iLinks:Ljava/util/List;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 508
    goto/16 :goto_5

    .line 509
    :cond_aa
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c2
    move-object v0, v1

    goto/16 :goto_5

    .line 514
    :cond_c5
    if-eqz v0, :cond_cc

    .line 515
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler;->iZones:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_cc
    return-void
.end method
