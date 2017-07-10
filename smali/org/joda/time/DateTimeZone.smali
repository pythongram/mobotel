.class public abstract Lorg/joda/time/DateTimeZone;
.super Ljava/lang/Object;
.source "DateTimeZone.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTimeZone$Stub;
    }
.end annotation


# static fields
.field public static final UTC:Lorg/joda/time/DateTimeZone;

.field private static cAvailableIDs:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile cDefault:Lorg/joda/time/DateTimeZone; = null

.field private static cNameProvider:Lorg/joda/time/tz/NameProvider; = null

.field private static cOffsetFormatter:Lorg/joda/time/format/DateTimeFormatter; = null

.field private static cProvider:Lorg/joda/time/tz/Provider; = null

.field private static cZoneIdConversion:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static iFixedOffsetCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4cf893d49479892aL


# instance fields
.field private final iID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    const-string v1, "UTC"

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 115
    invoke-static {v4}, Lorg/joda/time/DateTimeZone;->setProvider0(Lorg/joda/time/tz/Provider;)V

    .line 116
    invoke-static {v4}, Lorg/joda/time/DateTimeZone;->setNameProvider0(Lorg/joda/time/tz/NameProvider;)V

    .line 117
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    if-nez p1, :cond_d

    .line 691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_d
    iput-object p1, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    .line 694
    return-void
.end method

.method private static declared-synchronized fixedOffsetZone(Ljava/lang/String;I)Lorg/joda/time/DateTimeZone;
    .registers 6

    .prologue
    .line 349
    const-class v1, Lorg/joda/time/DateTimeZone;

    monitor-enter v1

    if-nez p1, :cond_9

    .line 350
    :try_start_5
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_37

    .line 365
    :cond_7
    :goto_7
    monitor-exit v1

    return-object v0

    .line 352
    :cond_9
    :try_start_9
    sget-object v0, Lorg/joda/time/DateTimeZone;->iFixedOffsetCache:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/DateTimeZone;->iFixedOffsetCache:Ljava/util/Map;

    .line 356
    :cond_14
    sget-object v0, Lorg/joda/time/DateTimeZone;->iFixedOffsetCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 357
    if-eqz v0, :cond_26

    .line 358
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    .line 359
    if-nez v0, :cond_7

    .line 363
    :cond_26
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, p1}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 364
    sget-object v2, Lorg/joda/time/DateTimeZone;->iFixedOffsetCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_37

    goto :goto_7

    .line 349
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .registers 7
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 204
    if-nez p0, :cond_7

    .line 205
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 220
    :cond_6
    :goto_6
    return-object v0

    .line 207
    :cond_7
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 208
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_6

    .line 210
    :cond_12
    sget-object v0, Lorg/joda/time/DateTimeZone;->cProvider:Lorg/joda/time/tz/Provider;

    invoke-interface {v0, p0}, Lorg/joda/time/tz/Provider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 211
    if-nez v0, :cond_6

    .line 214
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 215
    :cond_2a
    invoke-static {p0}, Lorg/joda/time/DateTimeZone;->parseOffset(Ljava/lang/String;)I

    move-result v0

    .line 216
    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    .line 217
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_6

    .line 219
    :cond_38
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1, v0}, Lorg/joda/time/DateTimeZone;->fixedOffsetZone(Ljava/lang/String;I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_6

    .line 223
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The datetime zone id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forOffsetHours(I)Lorg/joda/time/DateTimeZone;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/joda/time/DateTimeZone;->forOffsetHoursMinutes(II)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static forOffsetHoursMinutes(II)Lorg/joda/time/DateTimeZone;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 254
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 255
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 272
    :goto_6
    return-object v0

    .line 257
    :cond_7
    if-ltz p1, :cond_d

    const/16 v0, 0x3b

    if-le p1, v0, :cond_26

    .line 258
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minutes out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_26
    const/16 v0, 0x3c

    :try_start_28
    invoke-static {p0, v0}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    .line 263
    if-gez v0, :cond_3f

    .line 264
    neg-int v1, p1

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v0

    .line 268
    :goto_33
    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I
    :try_end_39
    .catch Ljava/lang/ArithmeticException; {:try_start_28 .. :try_end_39} :catch_44

    move-result v0

    .line 272
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_6

    .line 266
    :cond_3f
    :try_start_3f
    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I
    :try_end_42
    .catch Ljava/lang/ArithmeticException; {:try_start_3f .. :try_end_42} :catch_44

    move-result v0

    goto :goto_33

    .line 269
    :catch_44
    move-exception v0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forOffsetMillis(I)Lorg/joda/time/DateTimeZone;
    .registers 2

    .prologue
    .line 282
    invoke-static {p0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0, p0}, Lorg/joda/time/DateTimeZone;->fixedOffsetZone(Ljava/lang/String;I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;
    .registers 7

    .prologue
    .line 302
    if-nez p0, :cond_7

    .line 303
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 333
    :cond_6
    :goto_6
    return-object v0

    .line 305
    :cond_7
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 306
    const-string v0, "UTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 307
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_6

    .line 311
    :cond_16
    const/4 v0, 0x0

    .line 312
    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->getConvertedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_23

    .line 314
    sget-object v0, Lorg/joda/time/DateTimeZone;->cProvider:Lorg/joda/time/tz/Provider;

    invoke-interface {v0, v2}, Lorg/joda/time/tz/Provider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 316
    :cond_23
    if-nez v0, :cond_2b

    .line 317
    sget-object v0, Lorg/joda/time/DateTimeZone;->cProvider:Lorg/joda/time/tz/Provider;

    invoke-interface {v0, v1}, Lorg/joda/time/tz/Provider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 319
    :cond_2b
    if-nez v0, :cond_6

    .line 324
    if-nez v2, :cond_5f

    .line 325
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v2, "GMT+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "GMT-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 327
    :cond_43
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->parseOffset(Ljava/lang/String;)I

    move-result v0

    .line 329
    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_56

    .line 330
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_6

    .line 332
    :cond_56
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v1, v0}, Lorg/joda/time/DateTimeZone;->fixedOffsetZone(Ljava/lang/String;I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_6

    .line 337
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The datetime zone id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAvailableIDs()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    sget-object v0, Lorg/joda/time/DateTimeZone;->cAvailableIDs:Ljava/util/Set;

    return-object v0
.end method

.method private static declared-synchronized getConvertedId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 559
    const-class v1, Lorg/joda/time/DateTimeZone;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/joda/time/DateTimeZone;->cZoneIdConversion:Ljava/util/Map;

    .line 560
    if-nez v0, :cond_f5

    .line 562
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 563
    const-string v2, "GMT"

    const-string v3, "UTC"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v2, "WET"

    const-string v3, "WET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v2, "CET"

    const-string v3, "CET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v2, "MET"

    const-string v3, "CET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v2, "ECT"

    const-string v3, "CET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v2, "EET"

    const-string v3, "EET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v2, "MIT"

    const-string v3, "Pacific/Apia"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v2, "HST"

    const-string v3, "Pacific/Honolulu"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v2, "AST"

    const-string v3, "America/Anchorage"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v2, "PST"

    const-string v3, "America/Los_Angeles"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v2, "MST"

    const-string v3, "America/Denver"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v2, "PNT"

    const-string v3, "America/Phoenix"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v2, "CST"

    const-string v3, "America/Chicago"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v2, "EST"

    const-string v3, "America/New_York"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v2, "IET"

    const-string v3, "America/Indiana/Indianapolis"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v2, "PRT"

    const-string v3, "America/Puerto_Rico"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v2, "CNT"

    const-string v3, "America/St_Johns"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v2, "AGT"

    const-string v3, "America/Argentina/Buenos_Aires"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v2, "BET"

    const-string v3, "America/Sao_Paulo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v2, "ART"

    const-string v3, "Africa/Cairo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v2, "CAT"

    const-string v3, "Africa/Harare"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v2, "EAT"

    const-string v3, "Africa/Addis_Ababa"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v2, "NET"

    const-string v3, "Asia/Yerevan"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v2, "PLT"

    const-string v3, "Asia/Karachi"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v2, "IST"

    const-string v3, "Asia/Kolkata"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v2, "BST"

    const-string v3, "Asia/Dhaka"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v2, "VST"

    const-string v3, "Asia/Ho_Chi_Minh"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v2, "CTT"

    const-string v3, "Asia/Shanghai"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v2, "JST"

    const-string v3, "Asia/Tokyo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v2, "ACT"

    const-string v3, "Australia/Darwin"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v2, "AET"

    const-string v3, "Australia/Sydney"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v2, "SST"

    const-string v3, "Pacific/Guadalcanal"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v2, "NST"

    const-string v3, "Pacific/Auckland"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sput-object v0, Lorg/joda/time/DateTimeZone;->cZoneIdConversion:Ljava/util/Map;

    .line 598
    :cond_f5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_fb
    .catchall {:try_start_3 .. :try_end_fb} :catchall_fd

    monitor-exit v1

    return-object v0

    .line 559
    :catchall_fd
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefault()Lorg/joda/time/DateTimeZone;
    .registers 3

    .prologue
    .line 133
    sget-object v0, Lorg/joda/time/DateTimeZone;->cDefault:Lorg/joda/time/DateTimeZone;

    .line 134
    if-nez v0, :cond_29

    .line 135
    const-class v1, Lorg/joda/time/DateTimeZone;

    monitor-enter v1

    .line 136
    :try_start_7
    sget-object v0, Lorg/joda/time/DateTimeZone;->cDefault:Lorg/joda/time/DateTimeZone;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_2a

    .line 137
    if-nez v0, :cond_28

    .line 138
    const/4 v0, 0x0

    .line 141
    :try_start_c
    const-string v2, "user.timezone"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_18

    .line 143
    invoke-static {v2}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_17} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_17} :catch_2d
    .catchall {:try_start_c .. :try_end_17} :catchall_2a

    move-result-object v0

    .line 148
    :cond_18
    :goto_18
    if-nez v0, :cond_22

    .line 149
    :try_start_1a
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_21} :catch_2d
    .catchall {:try_start_1a .. :try_end_21} :catchall_2a

    move-result-object v0

    .line 154
    :cond_22
    :goto_22
    if-nez v0, :cond_26

    .line 155
    :try_start_24
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 157
    :cond_26
    sput-object v0, Lorg/joda/time/DateTimeZone;->cDefault:Lorg/joda/time/DateTimeZone;

    .line 159
    :cond_28
    monitor-exit v1

    .line 161
    :cond_29
    return-object v0

    .line 159
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw v0

    .line 151
    :catch_2d
    move-exception v2

    goto :goto_22

    .line 145
    :catch_2f
    move-exception v2

    goto :goto_18
.end method

.method private static getDefaultNameProvider()Lorg/joda/time/tz/NameProvider;
    .registers 4

    .prologue
    .line 529
    const/4 v1, 0x0

    .line 531
    :try_start_1
    const-string v0, "org.joda.time.DateTimeZone.NameProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v0

    .line 532
    if-eqz v0, :cond_27

    .line 534
    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/NameProvider;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_13} :catch_29

    .line 544
    :goto_13
    if-nez v0, :cond_1a

    .line 545
    new-instance v0, Lorg/joda/time/tz/DefaultNameProvider;

    invoke-direct {v0}, Lorg/joda/time/tz/DefaultNameProvider;-><init>()V

    .line 548
    :cond_1a
    return-object v0

    .line 535
    :catch_1b
    move-exception v0

    .line 536
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 537
    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_27} :catch_29

    :cond_27
    move-object v0, v1

    goto :goto_13

    .line 540
    :catch_29
    move-exception v0

    move-object v0, v1

    goto :goto_13
.end method

.method private static getDefaultProvider()Lorg/joda/time/tz/Provider;
    .registers 4

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 446
    :try_start_1
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_41

    move-result-object v0

    .line 448
    if-eqz v0, :cond_31

    .line 450
    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/Provider;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_13} :catch_41

    :goto_13
    move-object v1, v0

    .line 460
    :goto_14
    if-nez v1, :cond_3f

    .line 462
    :try_start_16
    new-instance v0, Lorg/joda/time/tz/ZoneInfoProvider;

    const-string v2, "org/joda/time/tz/data"

    invoke-direct {v0, v2}, Lorg/joda/time/tz/ZoneInfoProvider;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_33

    .line 469
    :goto_1d
    if-nez v0, :cond_24

    .line 470
    new-instance v0, Lorg/joda/time/tz/UTCProvider;

    invoke-direct {v0}, Lorg/joda/time/tz/UTCProvider;-><init>()V

    .line 473
    :cond_24
    return-object v0

    .line 451
    :catch_25
    move-exception v0

    .line 452
    :try_start_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_31} :catch_41

    :cond_31
    move-object v0, v1

    goto :goto_13

    .line 463
    :catch_33
    move-exception v0

    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3f
    move-object v0, v1

    goto :goto_1d

    .line 456
    :catch_41
    move-exception v0

    goto :goto_14
.end method

.method public static getNameProvider()Lorg/joda/time/tz/NameProvider;
    .registers 1

    .prologue
    .line 486
    sget-object v0, Lorg/joda/time/DateTimeZone;->cNameProvider:Lorg/joda/time/tz/NameProvider;

    return-object v0
.end method

.method public static getProvider()Lorg/joda/time/tz/Provider;
    .registers 1

    .prologue
    .line 387
    sget-object v0, Lorg/joda/time/DateTimeZone;->cProvider:Lorg/joda/time/tz/Provider;

    return-object v0
.end method

.method private static declared-synchronized offsetFormatter()Lorg/joda/time/format/DateTimeFormatter;
    .registers 6

    .prologue
    .line 670
    const-class v1, Lorg/joda/time/DateTimeZone;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/joda/time/DateTimeZone;->cOffsetFormatter:Lorg/joda/time/format/DateTimeFormatter;

    if-nez v0, :cond_1a

    .line 671
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneOffset(Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/DateTimeZone;->cOffsetFormatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 675
    :cond_1a
    sget-object v0, Lorg/joda/time/DateTimeZone;->cOffsetFormatter:Lorg/joda/time/format/DateTimeFormatter;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-object v0

    .line 670
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static parseOffset(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 604
    new-instance v0, Lorg/joda/time/DateTimeZone$1;

    invoke-direct {v0}, Lorg/joda/time/DateTimeZone$1;-><init>()V

    .line 618
    invoke-static {}, Lorg/joda/time/DateTimeZone;->offsetFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    neg-int v0, v0

    return v0
.end method

.method private static printOffset(I)Ljava/lang/String;
    .registers 7

    .prologue
    const v2, 0x36ee80

    const v5, 0xea60

    const/16 v4, 0x3a

    const/4 v3, 0x2

    .line 631
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 632
    if-ltz p0, :cond_2e

    .line 633
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 639
    :goto_15
    div-int v1, p0, v2

    .line 640
    invoke-static {v0, v1, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 641
    mul-int/2addr v1, v2

    sub-int v1, p0, v1

    .line 643
    div-int v2, v1, v5

    .line 644
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 645
    invoke-static {v0, v2, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 646
    mul-int/2addr v2, v5

    sub-int/2addr v1, v2

    .line 647
    if-nez v1, :cond_35

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    :goto_2d
    return-object v0

    .line 635
    :cond_2e
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 636
    neg-int p0, p0

    goto :goto_15

    .line 651
    :cond_35
    div-int/lit16 v2, v1, 0x3e8

    .line 652
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 653
    invoke-static {v0, v2, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 654
    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v1, v2

    .line 655
    if-nez v1, :cond_47

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 659
    :cond_47
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 660
    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 661
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method public static setDefault(Lorg/joda/time/DateTimeZone;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_10

    .line 176
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "DateTimeZone.setDefault"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 178
    :cond_10
    if-nez p0, :cond_1a

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The datetime zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1a
    const-class v1, Lorg/joda/time/DateTimeZone;

    monitor-enter v1

    .line 182
    :try_start_1d
    sput-object p0, Lorg/joda/time/DateTimeZone;->cDefault:Lorg/joda/time/DateTimeZone;

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    throw v0
.end method

.method public static setNameProvider(Lorg/joda/time/tz/NameProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_10

    .line 502
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "DateTimeZone.setNameProvider"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 504
    :cond_10
    invoke-static {p0}, Lorg/joda/time/DateTimeZone;->setNameProvider0(Lorg/joda/time/tz/NameProvider;)V

    .line 505
    return-void
.end method

.method private static setNameProvider0(Lorg/joda/time/tz/NameProvider;)V
    .registers 1

    .prologue
    .line 514
    if-nez p0, :cond_6

    .line 515
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefaultNameProvider()Lorg/joda/time/tz/NameProvider;

    move-result-object p0

    .line 517
    :cond_6
    sput-object p0, Lorg/joda/time/DateTimeZone;->cNameProvider:Lorg/joda/time/tz/NameProvider;

    .line 518
    return-void
.end method

.method public static setProvider(Lorg/joda/time/tz/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_10

    .line 403
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "DateTimeZone.setProvider"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 405
    :cond_10
    invoke-static {p0}, Lorg/joda/time/DateTimeZone;->setProvider0(Lorg/joda/time/tz/Provider;)V

    .line 406
    return-void
.end method

.method private static setProvider0(Lorg/joda/time/tz/Provider;)V
    .registers 4

    .prologue
    .line 415
    if-nez p0, :cond_6

    .line 416
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefaultProvider()Lorg/joda/time/tz/Provider;

    move-result-object p0

    .line 418
    :cond_6
    invoke-interface {p0}, Lorg/joda/time/tz/Provider;->getAvailableIDs()Ljava/util/Set;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1a

    .line 420
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider doesn\'t have any available ids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1a
    const-string v1, "UTC"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider doesn\'t support UTC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_2a
    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    const-string v2, "UTC"

    invoke-interface {p0, v2}, Lorg/joda/time/tz/Provider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTC zone provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_40
    sput-object p0, Lorg/joda/time/DateTimeZone;->cProvider:Lorg/joda/time/tz/Provider;

    .line 430
    sput-object v0, Lorg/joda/time/DateTimeZone;->cAvailableIDs:Ljava/util/Set;

    .line 431
    return-void
.end method


# virtual methods
.method public adjustOffset(JZ)J
    .registers 13

    .prologue
    const-wide/32 v2, 0xa4cb80

    .line 1164
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v6

    .line 1165
    add-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v4

    .line 1166
    cmp-long v0, v6, v4

    if-nez v0, :cond_14

    .line 1170
    :goto_13
    return-wide p1

    .line 1169
    :cond_14
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v1

    .line 1170
    const/4 v3, 0x0

    if-eqz p3, :cond_21

    :goto_1b
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide p1

    goto :goto_13

    :cond_21
    move-wide v4, v6

    goto :goto_1b
.end method

.method public convertLocalToUTC(JZ)J
    .registers 17

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    .line 974
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v5

    .line 976
    int-to-long v0, v5

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v4

    .line 978
    if-eq v5, v4, :cond_90

    .line 982
    if-nez p3, :cond_18

    if-gez v5, :cond_90

    .line 984
    :cond_18
    int-to-long v0, v5

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v0

    .line 985
    int-to-long v6, v5

    sub-long v6, p1, v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_27

    move-wide v0, v2

    .line 988
    :cond_27
    int-to-long v6, v4

    sub-long v6, p1, v6

    invoke-virtual {p0, v6, v7}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v6

    .line 989
    int-to-long v8, v4

    sub-long v8, p1, v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_92

    .line 992
    :goto_35
    cmp-long v0, v0, v2

    if-eqz v0, :cond_90

    .line 994
    if-eqz p3, :cond_77

    .line 996
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal instant due to time zone offset transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-static {v2}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    new-instance v3, Lorg/joda/time/Instant;

    invoke-direct {v3, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    move v0, v5

    .line 1009
    :goto_78
    int-to-long v2, v0

    sub-long v2, p1, v2

    .line 1011
    xor-long v4, p1, v2

    cmp-long v1, v4, v10

    if-gez v1, :cond_8f

    int-to-long v0, v0

    xor-long/2addr v0, p1

    cmp-long v0, v0, v10

    if-gez v0, :cond_8f

    .line 1012
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Subtracting time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_8f
    return-wide v2

    :cond_90
    move v0, v4

    goto :goto_78

    :cond_92
    move-wide v2, v6

    goto :goto_35
.end method

.method public convertLocalToUTC(JZJ)J
    .registers 11

    .prologue
    .line 951
    invoke-virtual {p0, p4, p5}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v2

    .line 952
    int-to-long v0, v2

    sub-long v0, p1, v0

    .line 953
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v3

    .line 954
    if-ne v3, v2, :cond_e

    .line 957
    :goto_d
    return-wide v0

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZ)J

    move-result-wide v0

    goto :goto_d
.end method

.method public convertUTCToLocal(J)J
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 924
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 925
    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 927
    xor-long v4, p1, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_1c

    int-to-long v0, v0

    xor-long/2addr v0, p1

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1c

    .line 928
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_1c
    return-wide v2
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final getID()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    return-object v0
.end method

.method public getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J
    .registers 10

    .prologue
    .line 1028
    if-nez p1, :cond_14

    .line 1029
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 1031
    :goto_6
    if-ne v0, p0, :cond_9

    .line 1035
    :goto_8
    return-wide p2

    .line 1034
    :cond_9
    invoke-virtual {p0, p2, p3}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v1

    .line 1035
    const/4 v3, 0x0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide p2

    goto :goto_8

    :cond_14
    move-object v0, p1

    goto :goto_6
.end method

.method public final getName(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateTimeZone;->getName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(JLjava/util/Locale;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 784
    if-nez p3, :cond_6

    .line 785
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 787
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    .line 788
    if-nez v0, :cond_f

    .line 789
    iget-object v0, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    .line 795
    :cond_e
    :goto_e
    return-object v0

    .line 791
    :cond_f
    sget-object v1, Lorg/joda/time/DateTimeZone;->cNameProvider:Lorg/joda/time/tz/NameProvider;

    iget-object v2, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-interface {v1, p3, v2, v0}, Lorg/joda/time/tz/NameProvider;->getName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    if-nez v0, :cond_e

    .line 795
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public abstract getNameKey(J)Ljava/lang/String;
.end method

.method public abstract getOffset(J)I
.end method

.method public final getOffset(Lorg/joda/time/ReadableInstant;)I
    .registers 4

    .prologue
    .line 813
    if-nez p1, :cond_b

    .line 814
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 816
    :goto_a
    return v0

    :cond_b
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    goto :goto_a
.end method

.method public getOffsetFromLocal(J)I
    .registers 12

    .prologue
    .line 882
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 884
    int-to-long v2, v0

    sub-long v4, p1, v2

    .line 885
    invoke-virtual {p0, v4, v5}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v2

    .line 887
    if-eq v0, v2, :cond_21

    .line 890
    sub-int v1, v0, v2

    if-gez v1, :cond_39

    .line 894
    invoke-virtual {p0, v4, v5}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v4

    .line 895
    int-to-long v6, v2

    sub-long v6, p1, v6

    invoke-virtual {p0, v6, v7}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v6

    .line 896
    cmp-long v1, v4, v6

    if-eqz v1, :cond_39

    .line 910
    :goto_20
    return v0

    .line 900
    :cond_21
    if-lez v0, :cond_39

    .line 901
    invoke-virtual {p0, v4, v5}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide v6

    .line 902
    cmp-long v1, v6, v4

    if-gez v1, :cond_39

    .line 903
    invoke-virtual {p0, v6, v7}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v1

    .line 904
    sub-int v0, v1, v0

    .line 905
    sub-long/2addr v4, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_39

    move v0, v1

    .line 906
    goto :goto_20

    :cond_39
    move v0, v2

    .line 910
    goto :goto_20
.end method

.method public final getShortName(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateTimeZone;->getShortName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortName(JLjava/util/Locale;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 744
    if-nez p3, :cond_6

    .line 745
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 747
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    .line 748
    if-nez v0, :cond_f

    .line 749
    iget-object v0, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    .line 755
    :cond_e
    :goto_e
    return-object v0

    .line 751
    :cond_f
    sget-object v1, Lorg/joda/time/DateTimeZone;->cNameProvider:Lorg/joda/time/tz/NameProvider;

    iget-object v2, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-interface {v1, p3, v2, v0}, Lorg/joda/time/tz/NameProvider;->getShortName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    if-nez v0, :cond_e

    .line 755
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public abstract getStandardOffset(J)I
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1227
    invoke-virtual {p0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x39

    return v0
.end method

.method public abstract isFixed()Z
.end method

.method public isLocalDateTimeGap(Lorg/joda/time/LocalDateTime;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0}, Lorg/joda/time/DateTimeZone;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1152
    :goto_7
    return v0

    .line 1149
    :cond_8
    :try_start_8
    invoke-virtual {p1, p0}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_7

    .line 1151
    :catch_c
    move-exception v0

    .line 1152
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isStandardOffset(J)Z
    .registers 6

    .prologue
    .line 844
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public abstract nextTransition(J)J
.end method

.method public abstract previousTransition(J)J
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1235
    invoke-virtual {p0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeZone()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1245
    new-instance v0, Lorg/joda/time/DateTimeZone$Stub;

    iget-object v1, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/joda/time/DateTimeZone$Stub;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
