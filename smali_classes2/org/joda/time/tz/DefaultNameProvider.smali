.class public Lorg/joda/time/tz/DefaultNameProvider;
.super Ljava/lang/Object;
.source "DefaultNameProvider.java"

# interfaces
.implements Lorg/joda/time/tz/NameProvider;


# instance fields
.field private iByLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method private createCache()Ljava/util/HashMap;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method private declared-synchronized getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 53
    monitor-enter p0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_b

    .line 54
    :cond_8
    const/4 v0, 0x0

    .line 83
    :goto_9
    monitor-exit p0

    return-object v0

    .line 57
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 58
    if-nez v0, :cond_ba

    .line 59
    iget-object v2, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache:Ljava/util/HashMap;

    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 62
    :goto_1f
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 63
    if-nez v0, :cond_93

    .line 64
    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDateFormatSymbols(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v2

    .line 66
    :goto_36
    array-length v3, v2

    if-ge v1, v3, :cond_93

    .line 67
    aget-object v3, v2, v1

    .line 68
    if-eqz v3, :cond_b6

    array-length v4, v3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_b6

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 69
    const/4 v1, 0x2

    aget-object v1, v3, v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    aget-object v5, v3, v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v3, v5

    aput-object v5, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/4 v1, 0x2

    aget-object v1, v3, v1

    const/4 v2, 0x4

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Summer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    aget-object v5, v3, v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_93
    :goto_93
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_9

    .line 76
    :cond_9d
    const/4 v1, 0x4

    aget-object v1, v3, v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    aget-object v5, v3, v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catchall {:try_start_b .. :try_end_b2} :catchall_b3

    goto :goto_93

    .line 53
    :catchall_b3
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_36

    :cond_ba
    move-object v2, v0

    goto/16 :goto_1f
.end method


# virtual methods
.method public getName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DefaultNameProvider;->getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method public getShortName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DefaultNameProvider;->getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_7
.end method
